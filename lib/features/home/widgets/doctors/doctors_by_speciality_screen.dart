import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app1/features/home/data/models/specialization_response_model.dart';
import 'package:my_app1/features/home/widgets/doctors/doctor_list_view_item.dart';

class DoctorsBySpecialityScreen extends StatelessWidget {
  final SpecializationData specializationData;
  const DoctorsBySpecialityScreen(this.specializationData, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          specializationData.name ?? "",
          style: const TextStyle(fontSize: 14, color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => context.pop(),
        ),
      ),
      body: ListView.builder(
        itemCount: specializationData.doctorsList?.length ?? 0,
        itemBuilder: (context, index) {
          return DoctorListViewItem(specializationData.doctorsList?[index]);
        },
      ),
    );
  }
}
