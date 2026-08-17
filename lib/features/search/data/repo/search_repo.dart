import 'package:my_app1/core/networking/api_error_handler.dart';
import 'package:my_app1/core/networking/api_result.dart';
import 'package:my_app1/features/doctor_details/data/model/doctor_details_response_model.dart';
import 'package:my_app1/features/search/data/apis/search_api_service.dart';

class SearchRepo {
  final SearchApiService _searchApiService;

  SearchRepo(this._searchApiService);

  Future<ApiResult<List<DoctorData>>> searchDoctors(String name) async {
    try {
      final response = await _searchApiService.searchDoctors(name);
      
      return ApiResult.success(response.data ?? []); 
      
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}