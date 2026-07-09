import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app1/core/Routing/routes.dart';
import 'package:my_app1/core/di/debendncy_injection.dart';
import 'package:my_app1/features/home/presentation/cubit/home_cubit.dart';
import 'package:my_app1/features/home/presentation/screens/home_screen.dart';
import 'package:my_app1/features/login/presentation/cubit/login_cubit.dart';
import 'package:my_app1/features/login/presentation/login_screen.dart';
import 'package:my_app1/features/onBoarding/onboarding_screen.dart';
import 'package:my_app1/features/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:my_app1/features/sign_up/presentation/sign_up_screen.dart';

class AppRouters {
  static final router = GoRouter(
    initialLocation: Routes.home,
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
          create: (context) => getIt<HomeCubit>()..getSplizations(),
          child: const HomeScreen(),
        ),
      ),
    ],
  );
}
