import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app1/features/doctor_details/data/model/doctor_details_response_model.dart';

class DoctorProfileHeader extends StatelessWidget {
  final DoctorData doctor;
  const DoctorProfileHeader(this.doctor, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.r),
          child: CachedNetworkImage(
            imageUrl: doctor.photo ?? "",
            width: 80.w,
            height: 80.w,
            fit: BoxFit.cover,
            placeholder: (context, url) => Container(
              width: 80.w,
              height: 80.w,
              color: Colors.grey[300],
            ),
            errorWidget: (context, url, error) => Container(
              width: 80.w,
              height: 80.w,
              color: Colors.grey[300],
              child: Icon(Icons.person, size: 40.sp, color: Colors.grey[600]),
            ),
          ),
        ),
        SizedBox(width: 16.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5.h),
              SizedBox(height: 8.h),
              Text(
                "${doctor.specialization?.name} | ${doctor.city?.name}",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
        IconButton(
          icon: Icon(Icons.chat_bubble_outline, color: const Color(0xFF247CFF), size: 24.sp),
          onPressed: () {},
        ),
      ],
    );
  }
}