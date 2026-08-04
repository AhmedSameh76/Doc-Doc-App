import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app1/core/Theming/color.dart';
import 'package:my_app1/core/Theming/text_style.dart';
import 'package:my_app1/core/helpers/specialization_extension.dart'; // 1. استيراد الـ Extension
import 'package:my_app1/features/home/data/models/specialization_response_model.dart';

import '../../../../../core/helpers/spacing.dart';

class SpecialityListViewItem extends StatelessWidget {
  final SpecializationData? specializationsData;
  final int itemIndex;
  final int selectedIndex;

  const SpecialityListViewItem({
    super.key,
    this.specializationsData,
    required this.itemIndex,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = itemIndex == selectedIndex;

    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          Container(
            padding: isSelected ? const EdgeInsets.all(2) : EdgeInsets.zero,
            decoration: isSelected
                ? const BoxDecoration(
                    color: ColorsManager.darkBlue,
                    shape: BoxShape.circle,
                  )
                : null,
            child: CircleAvatar(
              radius: 28.r,
              backgroundColor: ColorsManager.lightBlue,
              child: ClipOval(
                child: Image.asset(
                  specializationsData.svgPath,
                  height: isSelected ? 42.h : 40.h,
                  width: isSelected ? 42.w : 40.w,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) => Icon(
                    Icons.medical_services_outlined,
                    size: 24.sp,
                    color: ColorsManager.darkBlue,
                  ),
                ),
              ),
            ),
          ),
          verticalSpace(8),
          Text(
            specializationsData?.name ?? 'Specialization',
            style: isSelected
                ? TextStyles.font14DarkBlueBold
                : TextStyles.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}