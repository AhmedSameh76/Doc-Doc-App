import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app1/core/DI/dependency_injection.dart';
import 'package:my_app1/core/Routing/routes.dart';
import 'package:my_app1/features/login/data/repos/login_repo.dart';
import 'package:my_app1/features/login/presentation/cubit/login_cubit.dart';
import 'package:my_app1/features/login/presentation/login_screen.dart';
import 'package:my_app1/features/onBoarding/onboarding_screen.dart';

class AppRouters {
  static final router = GoRouter(
    initialLocation: Routes.onboarding,
    routes: [
      GoRoute(
        path: Routes.onboarding,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: Routes.login,
        builder: (context, state) =>  BlocProvider(
          create: (context) => getIt <LoginCubit>(),
          child: const LoginScreen(),
        ),
      ),
    ],
  );
}
