import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app1/core/helpers/spacing.dart';
import 'package:my_app1/features/home/presentation/cubit/home_cubit.dart';
import 'package:my_app1/features/home/presentation/cubit/home_state.dart';
import 'package:my_app1/features/home/widgets/doctors_list_view.dart';
import 'package:my_app1/features/home/widgets/doctors_spectiality_list_item.dart';

class BlocBuilderHome extends StatelessWidget {
  const BlocBuilderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SplizationLoading ||
          current is SplizationSuccess ||
          current is SplizationError,
      builder: (context, state) {
        return state.maybeWhen(
          splizationLoading: () {
             return setupLoading();
          },
          splizationSuccess: (specializationsResponseModel) {
            var specializationsList =
                specializationsResponseModel.specializationDataList;

            return setupSuccess(specializationsList);
          },
            splizationError: (errorHandler) => setupError(),
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}

Widget setupLoading() {
  return const SizedBox(
    height: 100,
    child: Center(child: CircularProgressIndicator()), // Center
  ); // SizedBox
}

Widget setupSuccess(specializationsList) {
  return Expanded(
    child: Column(
      children: [
        DoctorsSpecialityListView(
          specializationDataList: specializationsList ?? [],
        ), // DoctorsSpecialityListView
        verticalSpace(8),
        DoctorsListView(
          doctorsList: specializationsList?[0]?.doctorsList,
        ), // DoctorsListView
      ],
    ), // Column
  ); // Expanded
}

Widget setupError() {
  return const SizedBox.shrink();
}
