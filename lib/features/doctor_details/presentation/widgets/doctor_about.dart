import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app1/features/doctor_details/data/model/doctor_details_response_model.dart';

class DoctorAboutSection extends StatelessWidget {
  final DoctorData doctor;
  const DoctorAboutSection(this.doctor, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle('About me'),
        _buildSectionContent(doctor.description ?? ""),
        SizedBox(height: 20.h),

        _buildSectionTitle('Working Time'),
        _buildSectionContent(
          '${doctor.startTime ?? ""} - ${doctor.endTime ?? ""}',
        ),
        SizedBox(height: 20.h),

        _buildSectionTitle('Degree'),
        _buildSectionContent(doctor.degree ?? ""),
        SizedBox(height: 20.h),

        _buildSectionTitle('Appointment Price'),
        _buildSectionContent(
          doctor.price != null ? '${doctor.price} EGP' : "",
        ),
        SizedBox(height: 20.h),

        _buildSectionTitle('Address'),
        _buildSectionContent(doctor.address ?? ""),
        SizedBox(height: 40.h), // مساحة إضافية قبل زرار الحجز
      ],
    );
  }

  // دوال مساعدة لترتيب شكل العناوين والنصوص
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget _buildSectionContent(String content) {
    return Text(
      content,
      style: TextStyle(
        fontSize: 13.sp,
        fontWeight: FontWeight.w400,
        color: Colors.grey[600],
        height: 1.5,
      ),
    );
  }
}