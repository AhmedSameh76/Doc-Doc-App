import 'package:dio/dio.dart';
import 'package:my_app1/core/Networking/api_constants.dart';
import 'package:my_app1/features/login/data/models/login_request_body.dart';
import 'package:my_app1/features/login/data/models/login_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody
  );
}