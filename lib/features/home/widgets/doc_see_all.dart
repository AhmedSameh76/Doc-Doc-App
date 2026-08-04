import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app1/core/Routing/routes.dart';
import 'package:my_app1/core/Theming/text_style.dart';
import 'package:my_app1/features/home/presentation/cubit/home_cubit.dart';

class DoctorsSpecialitySeeAll extends StatelessWidget {
  const DoctorsSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Doctors Speciality',
          style: TextStyles.font18DarkBlueSemiBold,
        ),
        const Spacer(),
        InkWell(
          borderRadius: BorderRadius.circular(4),
          onTap: () {
            context.push(
              Routes.speciality,
              extra: context.read<HomeCubit>(),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Text(
              'See All',
              style: TextStyles.font12BlueRegular,
            ),
          ),
        ),
      ],
    );
  }
}