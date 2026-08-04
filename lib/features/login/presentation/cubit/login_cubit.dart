import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app1/core/helpers/const.dart';
import 'package:my_app1/core/networking/api_result.dart';
import 'package:my_app1/core/networking/dio_factory.dart';
import 'package:my_app1/core/shared_prefrance/shared_pref_helper.dart';
import 'package:my_app1/features/login/logic/repo.dart';
import 'package:my_app1/features/login/model/login_request_body.dart';
import 'package:my_app1/features/login/presentation/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (loginResponse) async {
        await saveToken(loginResponse.userData?.token ?? "");
        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}

Future<void> saveToken(String token) async {
  await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
  DioFactory.setTokenIntoHeaderAfterLogin(token);
}
