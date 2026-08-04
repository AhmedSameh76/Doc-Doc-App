import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app1/features/home/data/models/specialization_response_model.dart';
import 'package:my_app1/features/home/widgets/spe_list_view_item.dart';

class DoctorsSpecialityListView extends StatelessWidget {
  final List<SpecializationData?>? specializationDataList;
  final int selectedIndex;

  const DoctorsSpecialityListView({
    super.key,
    this.specializationDataList,
    this.selectedIndex = 0, 
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specializationDataList?.length ?? 0,
        itemBuilder: (context, index) {
          return SpecialityListViewItem(
            specializationsData: specializationDataList?[index],
            itemIndex: index,
            selectedIndex: selectedIndex,
          );
        },
      ),
    );
  }
}