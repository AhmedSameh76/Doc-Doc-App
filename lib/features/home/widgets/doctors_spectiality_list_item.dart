import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app1/features/home/data/models/specialization_response_model.dart';
import 'package:my_app1/features/home/widgets/doctor_speciality_listview.dart';

class DoctorsSpecialityListView extends StatelessWidget {
  final List<SpecializationData?>? specializationDataList;

  const DoctorsSpecialityListView({
    super.key,
     this.specializationDataList,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specializationDataList?.length,
        itemBuilder: (context, index) {
          return DoctorSpecialityItem(
            specializationData: specializationDataList?[index],
            index: index,
          );
        },
      ),
    );
  }
}