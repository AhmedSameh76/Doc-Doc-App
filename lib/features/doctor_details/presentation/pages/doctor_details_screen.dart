import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app1/core/Routing/routes.dart';
import 'package:my_app1/core/di/debendncy_injection.dart';
import 'package:my_app1/features/appoinments/presentation/cubit/appoinments_cubit.dart';
import 'package:my_app1/features/appoinments/presentation/screens/appointment_screens.dart';
import 'package:my_app1/features/doctor_details/presentation/cubit/doctor_details_cubit.dart';
import 'package:my_app1/features/doctor_details/presentation/cubit/doctor_details_state.dart';
import 'package:my_app1/features/doctor_details/presentation/pages/doctor_location.dart';
import 'package:my_app1/features/doctor_details/presentation/widgets/doctor_about.dart';
import 'package:my_app1/features/doctor_details/presentation/widgets/doctor_taps.dart';
import 'package:my_app1/features/doctor_details/presentation/widgets/header_doctor_details.dart';

class DoctorDetailsScreen extends StatefulWidget {
  final int doctorId;

  const DoctorDetailsScreen({super.key, required this.doctorId});

  @override
  State<DoctorDetailsScreen> createState() => _DoctorDetailsScreenState();
}

class _DoctorDetailsScreenState extends State<DoctorDetailsScreen> {
  int _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 20.sp,
            color: Colors.black,
          ),
          onPressed: () {
            context.pop();
          },
        ),
        title: BlocBuilder<DoctorDetailsCubit, DoctorDetailsState>(
          builder: (context, state) {
            final name = state.whenOrNull(
              detailsSuccess: (data) => data.data?.name,
            );
            return Text(
              name ?? "",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
      ),
      body: BlocBuilder<DoctorDetailsCubit, DoctorDetailsState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            detailoading: () =>
                const Center(child: CircularProgressIndicator()),
            detailsError: (error) => Center(child: Text(error.message ?? "")),
            detailsSuccess: (data) {
              return Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 10.h,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DoctorProfileHeader(data.data!),
                          SizedBox(height: 24.h),
                          DoctorTabs(
                            selectedIndex: _selectedTabIndex,
                            onTabChanged: (index) {
                              setState(() {
                                _selectedTabIndex = index;
                              });
                            },
                          ),
                          SizedBox(height: 24.h),
                          _selectedTabIndex == 0
                              ? DoctorAboutSection(data.data!)
                              : DoctorLocationSection(data.data!),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.w),
                    child: SizedBox(
                      width: double.infinity,
                      height: 54.h,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF247CFF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => BlocProvider<AppoinmentsCubit>(
                                create: (context) => getIt<AppoinmentsCubit>(),
                                child: AppointmentScreens(
                                  doctorData: data.data!,
                                ),
                              ),
                            ),
                          );
                        },
                        child: Text(
                          'Make An Appointment',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
