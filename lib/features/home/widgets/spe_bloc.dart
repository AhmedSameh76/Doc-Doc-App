import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app1/features/home/presentation/cubit/home_cubit.dart';
import 'package:my_app1/features/home/presentation/cubit/home_state.dart';
import 'package:my_app1/features/home/widgets/doctor_speciality_listview.dart';
import 'package:my_app1/features/home/widgets/doctors/doc_shimmer.dart';
import 'package:my_app1/features/home/widgets/spe_shimmer.dart';

import '../../../../../core/helpers/spacing.dart';


class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

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
            splizationSuccess: (specializationsList) {
             
              return setupSuccess(specializationsList);
            },
            splizationError: (errorHandler) => setupError(),
            orElse: () {
              return const SizedBox.shrink();
            });
      },
    );
  }

  /// shimmer loading for specializations and doctors
  Widget setupLoading() {
    return Column(
      children: [
        const SpecialityShimmerLoading(),
        verticalSpace(8),
        const DoctorsShimmerLoading(),
      ],
    );
  }

  Widget setupSuccess(specializationsList) {
    return SpecialityListView(
      specializationDataList: specializationsList ?? [],
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}