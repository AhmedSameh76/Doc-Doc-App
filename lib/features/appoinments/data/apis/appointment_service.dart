import 'package:dio/dio.dart';
import 'package:my_app1/core/networking/const.dart';
import 'package:my_app1/features/appoinments/data/models/appoinments_model.dart';
import 'package:retrofit/retrofit.dart';

part 'appointment_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class AppointmentService {
  factory AppointmentService(Dio dio) = _AppointmentService;

  @GET(ApiConstants.getAppointment)
  Future<AppoinmentsModel> getAppointment(
    @Query('date') String date, 
  );

  @POST(ApiConstants.postAppointment)
  Future<AppoinmentsModel> postAppointment(@Path("id") int id);
}