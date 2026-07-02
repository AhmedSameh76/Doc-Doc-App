import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorContanier extends StatelessWidget {
  const DoctorContanier({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 165,
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 16.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              image: DecorationImage(
                image:AssetImage("assets/images/Background_blue_home.png"),
                fit: BoxFit.cover,
                 ),
            ),
          ),
      ],
      ),
    );
  }
}
