import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app1/features/appoinments/presentation/cubit/appoinments_cubit.dart';
import 'package:my_app1/features/appoinments/presentation/cubit/appoinments_state.dart';
import 'package:my_app1/features/appoinments/presentation/screens/widgets/bloc_widgets.dart';
import 'package:my_app1/features/appoinments/presentation/screens/widgets/payment.dart';
import 'package:my_app1/features/appoinments/presentation/screens/widgets/summary.dart';
import 'package:my_app1/features/appoinments/presentation/screens/widgets/booking_confirmed_screen.dart';
import 'package:my_app1/features/doctor_details/data/model/doctor_details_response_model.dart';

class AppointmentScreens extends StatefulWidget {
  final DoctorData? doctorData;

  const AppointmentScreens({super.key, this.doctorData});

  @override
  State<AppointmentScreens> createState() => _AppointmentScreensState();
}

class _AppointmentScreensState extends State<AppointmentScreens> {
  int _currentStep = 0;
  DateTime _selectedDate = DateTime.now();
  DateTime _currentStartDate = DateTime.now();
  String _selectedAppointmentType = 'In Person';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final cubit = context.read<AppoinmentsCubit>();
      if (widget.doctorData != null) {
        cubit.setDoctor(widget.doctorData!);
      }
      cubit.setSelectedDate(_formatFullDate(_selectedDate));
      final String formattedDate =
          "${_selectedDate.year}-${_selectedDate.month.toString().padLeft(2, '0')}-${_selectedDate.day.toString().padLeft(2, '0')}";
      cubit.getAppointment(date: formattedDate);
    });
  }

  String _formatFullDate(DateTime date) {
    const weekdayNames = [
      'Monday', 'Tuesday', 'Wednesday', 'Thursday',
      'Friday', 'Saturday', 'Sunday'
    ];
    const monthNames = [
      'January', 'February', 'March', 'April', 'May', 'June',
      'July', 'August', 'September', 'October', 'November', 'December'
    ];
    final weekday = weekdayNames[date.weekday - 1];
    final month = monthNames[date.month - 1];
    return '$weekday, ${date.day.toString().padLeft(2, '0')} $month ${date.year}';
  }

  Future<void> _pickDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: Colors.blue,
              onPrimary: Colors.white,
              onSurface: Colors.black,
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _currentStartDate = picked;
      });
      final String formattedDate =
          "${picked.year}-${picked.month.toString().padLeft(2, '0')}-${picked.day.toString().padLeft(2, '0')}";
      context.read<AppoinmentsCubit>().setSelectedDate(_formatFullDate(picked));
      context.read<AppoinmentsCubit>().getAppointment(date: formattedDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppoinmentsCubit, AppoinmentsState>(
      listener: (context, state) {
        final cubit = context.read<AppoinmentsCubit>();

        state.whenOrNull(
          appointmentSuccess: (_) {
            if (cubit.isBookedSuccessfully) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Booking Successfully! 🎉"),
                  backgroundColor: Colors.green,
                ),
              );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BookingConfirmedScreen(),
                ),
              );
            }
          },
          appointmentFailuer: (error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(error.message ?? "Booking failed, please try again!"),
                backgroundColor: Colors.red,
              ),
            );
          },
        );
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: SafeArea(
          child: Column(
            children: [
              _buildStepperHeader(),
              SizedBox(height: 20.h),
              Expanded(
                child: IndexedStack(
                  index: _currentStep,
                  children: [
                    _buildFirstStepContent(),
                    const Payment(),
                    const SummaryScreen(),
                  ],
                ),
              ),
              _buildBottomButton(),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      title: const Text(
        'My Appointments',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.black,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
          size: 20,
        ),
        onPressed: () {
          if (_currentStep > 0) {
            setState(() {
              _currentStep--;
            });
          } else {
            Navigator.pop(context);
          }
        },
      ),
    );
  }

  Widget _buildStepperHeader() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 38.w, vertical: 20.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildStepCircle('1', 'Date & Time', 0),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 15.h, left: 8.w, right: 8.w),
              height: 2,
              color: _currentStep >= 1 ? Colors.blue : Colors.grey[300],
            ),
          ),
          _buildStepCircle('2', 'Payment', 1),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 15.h, left: 8.w, right: 8.w),
              height: 2,
              color: _currentStep >= 2 ? Colors.blue : Colors.grey[300],
            ),
          ),
          _buildStepCircle('3', 'Summary', 2),
        ],
      ),
    );
  }

  Widget _buildStepCircle(String stepNumber, String title, int stepIndex) {
    final isActive = _currentStep >= stepIndex;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 32.w,
          height: 32.h,
          decoration: BoxDecoration(
            color: isActive ? Colors.blue : Colors.grey[300],
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: Text(
            stepNumber,
            style: TextStyle(
              color: isActive ? Colors.white : Colors.grey[600],
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          title,
          style: TextStyle(
            fontSize: 12.sp,
            color: isActive ? Colors.black87 : Colors.grey[500],
          ),
        ),
      ],
    );
  }

  Widget _buildFirstStepContent() {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildDateSelector(),
          SizedBox(height: 24.h),
          Text(
            "Available time",
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15.h),
          const BlocWidgets(),
          SizedBox(height: 15.h),
          Text(
            "Appointment Type",
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15.h),
          RadioListTile<String>(
            value: 'In Person',
            groupValue: _selectedAppointmentType,
            onChanged: (value) {
              setState(() {
                _selectedAppointmentType = value!;
              });
            },
            title: Text(
              "In Person",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
            ),
            secondary: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.people_outline, color: Colors.blue),
            ),
            controlAffinity: ListTileControlAffinity.trailing,
            contentPadding: EdgeInsets.zero,
          ),
          RadioListTile<String>(
            value: 'Video Call',
            groupValue: _selectedAppointmentType,
            onChanged: (value) {
              setState(() {
                _selectedAppointmentType = value!;
              });
            },
            title: Text(
              "Video Call",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
            ),
            secondary: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blueAccent.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.videocam_outlined, color: Colors.green),
            ),
            controlAffinity: ListTileControlAffinity.trailing,
            contentPadding: EdgeInsets.zero,
          ),
        ],
      ),
    );
  }

  Widget _buildDateSelector() {
    final List<DateTime> displayDays = List.generate(
      5,
      (index) => _currentStartDate.add(Duration(days: index)),
    );

    const List<String> weekDays = [
      'Mon',
      'Tue',
      'Wed',
      'Thu',
      'Fri',
      'Sat',
      'Sun',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Select Date',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () => _pickDate(context),
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: Text(
                'Set Manual',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                  fontSize: 13.sp,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 24.h),
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.chevron_left, color: Colors.grey),
              onPressed: () {
                final today = DateTime(
                  DateTime.now().year,
                  DateTime.now().month,
                  DateTime.now().day,
                );
                final start = DateTime(
                  _currentStartDate.year,
                  _currentStartDate.month,
                  _currentStartDate.day,
                );
                if (start.isAfter(today)) {
                  setState(
                    () => _currentStartDate = _currentStartDate.subtract(
                      const Duration(days: 1),
                    ),
                  );
                }
              },
            ),
            Expanded(
              child: SizedBox(
                height: 85.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: displayDays.length,
                  separatorBuilder: (_, __) => SizedBox(width: 8.w),
                  itemBuilder: (context, index) {
                    final date = displayDays[index];
                    final isSelected = date.year == _selectedDate.year &&
                        date.month == _selectedDate.month &&
                        date.day == _selectedDate.day;

                    final dayName = weekDays[date.weekday - 1];
                    final dayNumber = date.day.toString().padLeft(2, '0');

                    return GestureDetector(
                      onTap: () {
                        setState(() => _selectedDate = date);
                        final String formattedDate =
                            "${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}";
                        context.read<AppoinmentsCubit>().setSelectedDate(_formatFullDate(date));
                        context
                            .read<AppoinmentsCubit>()
                            .getAppointment(date: formattedDate);
                      },
                      child: Center(
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          width: isSelected ? 62.w : 52.w,
                          height: isSelected ? 80.h : 70.h,
                          decoration: BoxDecoration(
                            color: isSelected ? Colors.blue : Colors.grey[100],
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                dayName,
                                style: TextStyle(
                                  color: isSelected
                                      ? Colors.white70
                                      : Colors.grey[400],
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                dayNumber,
                                style: TextStyle(
                                  color: isSelected
                                      ? Colors.white
                                      : Colors.black87,
                                  fontSize: isSelected ? 18.sp : 16.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.chevron_right, color: Colors.black87),
              onPressed: () => setState(
                () => _currentStartDate = _currentStartDate.add(
                  const Duration(days: 1),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBottomButton() {
    return Padding(
      padding: EdgeInsets.all(24.w),
      child: SizedBox(
        width: double.infinity,
        height: 52.h,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
          onPressed: () {
            final cubit = context.read<AppoinmentsCubit>();

            if (_currentStep == 0) {
              if (cubit.selectedIndex == -1) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Please select an available time first! ⏰"),
                    backgroundColor: Colors.orange,
                  ),
                );
                return;
              }
              setState(() {
                _currentStep = 1;
              });
            } else if (_currentStep == 1) {
              setState(() {
                _currentStep = 2;
              });
            } else if (_currentStep == 2) {
              if (cubit.selectedIndex == -1) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Please go back to Step 1 and select an appointment time!"),
                    backgroundColor: Colors.red,
                  ),
                );
                return;
              }
              if (cubit.appointmentModel == null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Appointment data is missing. Please refresh or re-select date."),
                    backgroundColor: Colors.red,
                  ),
                );
                return;
              }
              cubit.bookAppointment();
            }
          },
          child: Text(
            _currentStep == 2 ? "Book Appointment" : "Continue",
            style: TextStyle(
                fontSize: 16.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}