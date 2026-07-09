import 'package:flutter/src/widgets/basic.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_app1/core/networking/api_error_handler.dart';
import 'package:my_app1/features/home/data/models/specialization_response_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.splizationLoading() = SplizationLoading;
  const factory HomeState.splizationSuccess(
    SpecializationResponseModel specializationResponseModel,
  ) = SplizationSuccess;
  const factory HomeState.splizationError(ErrorHandler errorHandler) =
      SplizationError;
}
