import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app1/features/doctor_details/data/model/doctor_details_response_model.dart';

class DoctorLocationSection extends StatelessWidget {
  final DoctorData doctor;
  const DoctorLocationSection(this.doctor, {super.key});

  @override
  Widget build(BuildContext context) {
    final cityName = doctor.city?.name;
    final governrateName = doctor.city?.governrate?.name;
    final practicePlace = [
      if (cityName != null) cityName,
      if (governrateName != null) governrateName,
    ].join(', ');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle('Practice Place'),
        _buildSectionContent(practicePlace.isNotEmpty ? practicePlace : ""),
        SizedBox(height: 20.h),

        _buildSectionTitle('Address'),
        _buildSectionContent(doctor.address ?? ""),
        SizedBox(height: 40.h),
      ],
    );
  }

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
      ),
    );
  }
}