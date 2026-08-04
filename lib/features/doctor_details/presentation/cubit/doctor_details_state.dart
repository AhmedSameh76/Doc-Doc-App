import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_app1/core/networking/api_error_model.dart';
import 'package:my_app1/core/networking/api_result.dart';
import 'package:my_app1/features/doctor_details/data/model/doctor_details_response_model.dart';
part 'doctor_details_state.freezed.dart';

@freezed
class DoctorDetailsState with _$DoctorDetailsState {
  const factory DoctorDetailsState.initial() = _Initial;
  const factory DoctorDetailsState.detailsSuccess(
    DoctorDetailsResponseModel data,
  ) = _DetailsSuccess;
  const factory DoctorDetailsState.detailoading() = _DetalisLoading;
  const factory DoctorDetailsState.detailsError(ApiErrorModel apiErrorModel,) =
      _DetailsError;
}
