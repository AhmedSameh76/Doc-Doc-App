import 'package:dio/dio.dart';
import 'package:my_app1/core/networking/const.dart';
import 'package:my_app1/features/doctor_details/data/model/doctor_details_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'doctor_details_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class DoctorDetailsApiService {
  factory DoctorDetailsApiService(Dio dio) = _DoctorDetailsApiService;

  @GET('${ApiConstants.doctorDetails}{id}')
  Future<DoctorDetailsResponseModel> getDocDetails(@Path('id') int id);
}