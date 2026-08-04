import 'package:dio/dio.dart';

import 'package:my_app1/core/networking/const.dart';
import 'package:my_app1/features/login/model/login_request_body.dart';
import 'package:my_app1/features/login/model/login_response.dart';
import 'package:my_app1/features/sign_up/data/model/sign_up_request_body.dart';
import 'package:my_app1/features/sign_up/data/model/sign_up_response.dart';
import 'package:retrofit/retrofit.dart';



part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.signup)
  Future<SignupResponse> signup(
    @Body() SignupRequestBody signupRequestBody,
  );
}