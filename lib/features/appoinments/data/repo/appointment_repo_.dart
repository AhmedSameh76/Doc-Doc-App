import 'package:dart_either/dart_either.dart';
import 'package:my_app1/core/networking/api_error_handler.dart';
import 'package:my_app1/core/networking/api_result.dart';
import 'package:my_app1/features/appoinments/data/apis/appointment_service.dart';
import 'package:my_app1/features/appoinments/data/models/appoinments_model.dart';


class AppointmentRepo {
  final AppointmentService appointmentService;

  AppointmentRepo(this.appointmentService);

// في ملف AppointmentRepo
Future<Either<Failure, AppoinmentsModel>> getAppointment({required String date}) async {
  try {
    final response = await appointmentService.getAppointment(date); // 👈 لازم تبعت الـ date هنا
    return Right(response);
  } catch (error) {
    return Left(Failure(ErrorHandler.handle(error)));
  }
}

Future<Either<Failure, AppoinmentsModel>> bookAppointment({required int appointmentId}) async {
    try {
      // بنادي على الدالة اللي في السيرفس (تأكد من اسم دالة بوست في السيرفس عندك سواء postAppointment أو غيره)
      final response = await appointmentService.postAppointment(appointmentId);
      return Right(response);
    } catch (error) {
      return Left(Failure(ErrorHandler.handle(error)));
    }
  }
}