import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app1/core/helpers/spacing.dart';
import 'package:my_app1/features/home/presentation/cubit/home_cubit.dart';
import 'package:my_app1/features/home/presentation/cubit/home_state.dart';
import 'package:my_app1/features/home/widgets/bloc_builder_home.dart';
import 'package:my_app1/features/home/widgets/doctor_contanier.dart';
import 'package:my_app1/features/home/widgets/doctor_speciality.dart';
import 'package:my_app1/features/home/widgets/doctors_list_view.dart';
import 'package:my_app1/features/home/widgets/doctors_spectiality_list_item.dart';
import 'package:my_app1/features/home/widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(20, 16, 20, 28),
          width: double.infinity,
          decoration: BoxDecoration(),
          child: Column(
            children: [
              HomeTopBar(),
              DoctorContanier(),
              verticalSpace(24),
              DoctorSpeciality(),
              verticalSpace(16),
              BlocBuilderHome(),
            ],
          ),
        ),
      ),
    );
  }
}