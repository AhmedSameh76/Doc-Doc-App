import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app1/core/Theming/color.dart';
import 'package:my_app1/core/Theming/text_style.dart';
import 'package:my_app1/core/helpers/spacing.dart';

class DoctorSpecialityListview extends StatelessWidget {
  const DoctorSpecialityListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: ColorsManager.lightBlue,
                  child: SvgPicture.asset(
                    "assets/svgs/surgeon-svgrepo-com.svg",
                    width: 48,
                    height: 48,
                  ),
                ),
                verticalSpace(12),
                Text("General", style: TextStyles.font12DarkBlueRegular),
              ],
            ),
          );
        },
      ),
    );
  }
}
