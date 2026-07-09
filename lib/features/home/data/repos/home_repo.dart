

import 'package:my_app1/core/networking/api_error_handler.dart';
import 'package:my_app1/core/networking/api_result.dart';
import 'package:my_app1/features/home/data/apis/home_api_service.dart';
import 'package:my_app1/features/home/data/models/specialization_response_model.dart';

class HomeRepo {
final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);


  Future<ApiResult<SpecializationResponseModel>> getspecialization() async {
    try{
      final response = await _homeApiService.getspecialization();
      return ApiResult.success(response);
    }
    catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
    
  }
}