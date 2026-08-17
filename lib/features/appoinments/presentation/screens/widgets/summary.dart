import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app1/features/appoinments/presentation/cubit/appoinments_cubit.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<AppoinmentsCubit>();
    final doctor = cubit.doctorData;

    String paymentTitle = cubit.selectedMothed == '1' ? 'Credit Card' : 'Paypal';
    String paymentSubtitle = cubit.selectedMothed == '1'
        ? 'Card: ${cubit.selectedCardType.toUpperCase()}'
        : '•••• ••••• ••••• 37842';

    final doctorName = doctor?.name ?? 'Unknown Doctor';
    final specialization = doctor?.specialization?.name ?? '';
    final cityName = doctor?.city?.name ?? '';
    final subtitleParts = [specialization, cityName].where((e) => e.isNotEmpty).join(' | ');

    final int subtotal = doctor?.price ?? 0;
    const int tax = 0;
    final int total = subtotal + tax;

    return SingleChildScrollView(
      padding: EdgeInsets.all(16.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Booking Information",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.h),
          Container(
            padding: EdgeInsets.all(12.r),
            decoration: BoxDecoration(
              color: Colors.grey.shade50,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: Colors.grey.shade200),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: Container(
                    padding: EdgeInsets.all(8.r),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.calendar_today, color: Colors.blue),
                  ),
                  title: const Text("Date & Time", style: TextStyle(fontSize: 12, color: Colors.grey)),
                  subtitle: Text(
                    cubit.selectedAppointmentTime.isNotEmpty
                        ? cubit.selectedAppointmentTime
                        : "Not selected",
                    style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
                const Divider(),
                ListTile(
                  leading: Container(
                    padding: EdgeInsets.all(8.r),
                    decoration: BoxDecoration(
                      color: Colors.green.shade50,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.medical_services_outlined, color: Colors.green),
                  ),
                  title: const Text("Appointment Type", style: TextStyle(fontSize: 12, color: Colors.grey)),
                  subtitle: const Text(
                    "In Person",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          const Text(
            "Doctor Information",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.h),
          Container(
            padding: EdgeInsets.all(12.r),
            decoration: BoxDecoration(
              color: Colors.grey.shade50,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: Colors.grey.shade200),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: doctor?.photo != null && doctor!.photo!.isNotEmpty
                      ? Image.network(
                          doctor.photo!,
                          width: 60.w,
                          height: 60.h,
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) => Container(
                            width: 60.w,
                            height: 60.h,
                            color: Colors.grey.shade300,
                            child: const Icon(Icons.person, color: Colors.white),
                          ),
                        )
                      : Container(
                          width: 60.w,
                          height: 60.h,
                          color: Colors.grey.shade300,
                          child: const Icon(Icons.person, color: Colors.white),
                        ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        doctorName,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      if (subtitleParts.isNotEmpty) ...[
                        SizedBox(height: 4.h),
                        Text(
                          subtitleParts,
                          style: const TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          const Text(
            "Payment Information",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.h),
          Container(
            padding: EdgeInsets.all(12.r),
            decoration: BoxDecoration(
              color: Colors.grey.shade50,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: Colors.grey.shade200),
            ),
            child: Row(
              children: [
                const Icon(Icons.payment, color: Colors.blue, size: 30),
                SizedBox(width: 12.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(paymentTitle, style: const TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 2.h),
                      Text(paymentSubtitle, style: const TextStyle(color: Colors.grey, fontSize: 12)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Container(
            padding: EdgeInsets.all(16.r),
            decoration: BoxDecoration(
              color: Colors.grey.shade50,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: Colors.grey.shade200),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Payment Info", style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Subtotal", style: TextStyle(color: Colors.grey)),
                    Text("$subtotal EGP", style: const TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 8.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Tax", style: TextStyle(color: Colors.grey)),
                    Text("$tax EGP", style: const TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                const Divider(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Payment Total", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    Text(
                      "$total EGP",
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 30.h),
        ],
      ),
    );
  }
}