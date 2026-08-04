import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app1/core/Routing/routes.dart';
import 'package:my_app1/core/di/debendncy_injection.dart';
import 'package:my_app1/core/helpers/const.dart';
import 'package:my_app1/features/doctor_details/presentation/cubit/doctor_details_cubit.dart';
import 'package:my_app1/features/doctor_details/presentation/pages/doctor_details_screen.dart';
import 'package:my_app1/features/home/data/models/specialization_response_model.dart';
import 'package:my_app1/features/home/presentation/cubit/home_cubit.dart';
import 'package:my_app1/features/home/presentation/screens/home_screen.dart';
import 'package:my_app1/features/home/widgets/doctors/doctor_spe_gride.dart';
import 'package:my_app1/features/home/widgets/doctors/doctors_by_speciality_screen.dart';
import 'package:my_app1/features/login/presentation/cubit/login_cubit.dart';
import 'package:my_app1/features/login/presentation/login_screen.dart';
import 'package:my_app1/features/onBoarding/onboarding_screen.dart';
import 'package:my_app1/features/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:my_app1/features/sign_up/presentation/sign_up_screen.dart';

class AppRouters {
  static final router = GoRouter(
    initialLocation: isLoggedInUser ? Routes.home : Routes.login,
    routes: [
      GoRoute(
        path: Routes.onboarding,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        name: "login",
        path: Routes.login,
        builder: (context, state) => BlocProvider<LoginCubit>(
          create: (context) => getIt<LoginCubit>(),
          child: const LoginScreen(),
        ),
      ),
      GoRoute(
        name: "signUp",
        path: Routes.signUp,
        builder: (context, state) => BlocProvider<SignupCubit>(
          create: (context) => getIt<SignupCubit>(),
          child: const SignupScreen(),
        ),
      ),
      GoRoute(
        name: "home",
        path: Routes.home,
        builder: (context, state) => BlocProvider(
          create: (context) => getIt<HomeCubit>()..getSpecializations(),
          child: const HomeScreen(),
        ),
      ),
      GoRoute(
        name: "details",
        path: Routes.details,
        builder: (context, state) {
          final doctorId = state.extra as int;
          return BlocProvider(
            create: (context) =>
                getIt<DoctorDetailsCubit>()..getDocDetails(doctorId),
            child: DoctorDetailsScreen(doctorId: doctorId),
          );
        },
      ),
     GoRoute(
  name: "speciality",
  path: Routes.speciality,
  builder: (context, state) {
    if (state.extra is! HomeCubit) {
      return const Scaffold(
        body: Center(
          child: Text("Error, try again"),
        ),
      );
    }

    final homeCubit = state.extra as HomeCubit;

    return BlocProvider.value(
      value: homeCubit,
      child: const DoctorSpeGride(),
    );
  },
),
GoRoute(
  path: Routes.secoundSpeciality,
  builder: (context, state) {
    final specializationData = state.extra as SpecializationData;
    return DoctorsBySpecialityScreen(specializationData);
  },
),
    ],
  );
}
