import 'package:dart_either/dart_either.dart';
import 'package:my_app1/core/networking/api_error_handler.dart';
import 'package:my_app1/core/networking/api_result.dart';
import 'package:my_app1/features/doctor_details/data/apis/doctor_details_api_service.dart';
import 'package:my_app1/features/doctor_details/data/model/doctor_details_response_model.dart';

class DoctorDetailsRepo {
  final DoctorDetailsApiService doctorDetailsApiService;

  DoctorDetailsRepo(this.doctorDetailsApiService);

  Future<Either<Failure, DoctorDetailsResponseModel>> getDocDetails(
    int id,
  ) async {
    try {
      final response = await doctorDetailsApiService.getDocDetails(id);
      return Right(response);
    } catch (error) {
      return Left(Failure(ErrorHandler.handle(error)));
    }
  }
}
