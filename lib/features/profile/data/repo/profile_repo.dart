import 'package:my_app1/core/networking/api_error_handler.dart';
import 'package:my_app1/core/networking/api_result.dart';
import 'package:my_app1/features/profile/data/apis/profile_api_service.dart';
import 'package:my_app1/features/profile/data/model/user_profile_response.dart';

class ProfileRepo {
  final ProfileApiService _profileApiService;

  ProfileRepo(this._profileApiService);

  Future<ApiResult<ProfileUserData>> getUserProfile() async {
    try {
      final response = await _profileApiService.getUserProfile();
      return ApiResult.success(response.data!.first);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}