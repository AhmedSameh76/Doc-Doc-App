import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_app1/core/networking/api_error_handler.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState<T> with _$SearchState<T> {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.loading() = _Loading;
  const factory SearchState.success(T data) = _Success<T>;
  const factory SearchState.failure(ErrorHandler errorHandler) = _Failure;
}