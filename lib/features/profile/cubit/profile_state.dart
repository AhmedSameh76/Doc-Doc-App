import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_app1/core/networking/api_error_handler.dart';
import 'package:my_app1/features/profile/data/model/user_profile_response.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.success(ProfileUserData data) = _Success;
  const factory ProfileState.failure(ErrorHandler errorHandler) = _Failure;
}