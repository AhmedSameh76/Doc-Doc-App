import 'package:dio/dio.dart';
import 'package:my_app1/core/networking/const.dart';
import 'package:my_app1/features/search/data/model/search_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'search_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class SearchApiService {
  factory SearchApiService(Dio dio, {String? baseUrl}) = _SearchApiService;

  @GET('doctor/doctor-search')
  Future<SearchResponseModel> searchDoctors(
    @Query('name') String name,
  );
}