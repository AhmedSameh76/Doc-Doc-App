import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app1/features/home/presentation/cubit/home_cubit.dart';
import 'package:my_app1/features/home/presentation/cubit/home_state.dart';
import 'package:my_app1/features/home/widgets/doctors/doctor_list_view_item.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is DoctorSuccess || current is DoctorError,
      builder: (context, state) {
        return state.maybeWhen(
          doctorSuccess: (doctorsList) {
            return setupSuccess(doctorsList);
          },
          doctorError: (errorHandler) {
            return Text(errorHandler.apiErrorModel.message ?? "");
          }, 
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget setupSuccess(doctorsList) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: doctorsList?.length ?? 0,
      itemBuilder: (context, index) {
        return DoctorListViewItem(doctorsList?[index]);
      },
    );
  }
}
