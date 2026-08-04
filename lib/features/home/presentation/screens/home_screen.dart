import 'package:flutter/material.dart';
import 'package:my_app1/core/helpers/spacing.dart';
import 'package:my_app1/features/home/widgets/doc_see_all.dart';
import 'package:my_app1/features/home/widgets/doctor_contanier.dart';
import 'package:my_app1/features/home/widgets/doctors/doc_bloc.dart';
import 'package:my_app1/features/home/widgets/home_top_bar.dart';
import 'package:my_app1/features/home/widgets/spe_bloc.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(
            20.0,
            16.0,
            20.0,
            28.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeTopBar(),
                const DoctorContanier(),
                verticalSpace(24),
                const DoctorsSpecialitySeeAll(),
                verticalSpace(18),
                const SpecializationsBlocBuilder(),
                verticalSpace(8),
                const DoctorsBlocBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}