import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorTabs extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTabChanged;

  const DoctorTabs({
    Key? key,
    required this.selectedIndex,
    required this.onTabChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildTabItem(title: 'About', index: 0),
        _buildTabItem(title: 'Location', index: 1),
      ],
    );
  }

  Widget _buildTabItem({required String title, required int index}) {
    bool isSelected = selectedIndex == index;
    return Expanded(
      child: GestureDetector(
        onTap: () => onTabChanged(index),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                color: isSelected ? const Color(0xFF247CFF) : Colors.grey,
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              height: isSelected ? 2.h : 1.h,
              color: isSelected ? const Color(0xFF247CFF) : Colors.grey[300],
            ),
          ],
        ),
      ),
    );
  }
}