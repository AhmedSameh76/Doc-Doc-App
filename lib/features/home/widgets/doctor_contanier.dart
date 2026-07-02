import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app1/core/Theming/text_style.dart';
import 'package:my_app1/core/helpers/spacing.dart';

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
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              image: DecorationImage(
                image: AssetImage("assets/images/Background_blue_home.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  " Book and\n schedule with\n nearest doctor",
                  style: TextStyles.font18WhiteMedium,
                ),
                verticalSpace(16),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(48),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Find Nearby",
                      style: TextStyles.font12BlueRegular,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 8.w,
            top: 0,
            child: Image.asset('assets/images/doctor_home.png', height: 200.h),
          ),
        ],
      ),
    );
  }
}
