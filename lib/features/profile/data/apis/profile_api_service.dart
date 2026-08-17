import 'package:dio/dio.dart';
import 'package:my_app1/core/networking/const.dart';
import 'package:my_app1/features/profile/data/model/user_profile_response.dart';
import 'package:retrofit/retrofit.dart';


part 'profile_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ProfileApiService {
  factory ProfileApiService(Dio dio, {String? baseUrl}) = _ProfileApiService;

  @GET('user/profile')
  Future<UserProfileResponse> getUserProfile();
}