import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_app1/core/networking/api_error_model.dart';
import 'package:my_app1/features/appoinments/data/models/appoinments_model.dart';

part 'appoinments_state.freezed.dart';

@freezed
class AppoinmentsState with _$AppoinmentsState {
  const factory AppoinmentsState.initial() = _Initial;
  const factory AppoinmentsState.appointmentloading() = _AppointmentLoading;
  const factory AppoinmentsState.appointmentSuccess(AppoinmentsModel data,) = _AppointmentSuccess;
  const factory AppoinmentsState.appointmentFailuer( ApiErrorModel apiErrorModel,) = _AppointmentFailuer;
  const factory AppoinmentsState.selectedCardType() = _SelectedCardType;
  const factory AppoinmentsState.selectedMothed() = _SelectedMothed;


}
