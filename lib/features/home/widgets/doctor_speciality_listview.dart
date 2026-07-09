import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app1/core/Theming/color.dart';
import 'package:my_app1/core/helpers/spacing.dart';
import 'package:my_app1/features/home/data/models/specialization_response_model.dart';

class DoctorSpecialityItem extends StatelessWidget {
  final SpecializationData? specializationData;
  final int? index;

  const DoctorSpecialityItem({
    super.key, 
    required this.specializationData,
    this.index,
  });

  @override
  Widget build(BuildContext context) {
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
          verticalSpace(8),
          Text(specializationData?.name ?? "Speciality"), 
        ],
      ),
    );
  }
}
