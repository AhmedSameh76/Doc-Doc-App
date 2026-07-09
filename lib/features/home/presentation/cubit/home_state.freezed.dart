// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( SplizationLoading value)?  splizationLoading,TResult Function( SplizationSuccess value)?  splizationSuccess,TResult Function( SplizationError value)?  splizationError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SplizationLoading() when splizationLoading != null:
return splizationLoading(_that);case SplizationSuccess() when splizationSuccess != null:
return splizationSuccess(_that);case SplizationError() when splizationError != null:
return splizationError(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( SplizationLoading value)  splizationLoading,required TResult Function( SplizationSuccess value)  splizationSuccess,required TResult Function( SplizationError value)  splizationError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case SplizationLoading():
return splizationLoading(_that);case SplizationSuccess():
return splizationSuccess(_that);case SplizationError():
return splizationError(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( SplizationLoading value)?  splizationLoading,TResult? Function( SplizationSuccess value)?  splizationSuccess,TResult? Function( SplizationError value)?  splizationError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SplizationLoading() when splizationLoading != null:
return splizationLoading(_that);case SplizationSuccess() when splizationSuccess != null:
return splizationSuccess(_that);case SplizationError() when splizationError != null:
return splizationError(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  splizationLoading,TResult Function( SpecializationResponseModel specializationResponseModel)?  splizationSuccess,TResult Function( ErrorHandler errorHandler)?  splizationError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SplizationLoading() when splizationLoading != null:
return splizationLoading();case SplizationSuccess() when splizationSuccess != null:
return splizationSuccess(_that.specializationResponseModel);case SplizationError() when splizationError != null:
return splizationError(_that.errorHandler);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  splizationLoading,required TResult Function( SpecializationResponseModel specializationResponseModel)  splizationSuccess,required TResult Function( ErrorHandler errorHandler)  splizationError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case SplizationLoading():
return splizationLoading();case SplizationSuccess():
return splizationSuccess(_that.specializationResponseModel);case SplizationError():
return splizationError(_that.errorHandler);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  splizationLoading,TResult? Function( SpecializationResponseModel specializationResponseModel)?  splizationSuccess,TResult? Function( ErrorHandler errorHandler)?  splizationError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SplizationLoading() when splizationLoading != null:
return splizationLoading();case SplizationSuccess() when splizationSuccess != null:
return splizationSuccess(_that.specializationResponseModel);case SplizationError() when splizationError != null:
return splizationError(_that.errorHandler);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomeState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class SplizationLoading implements HomeState {
  const SplizationLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplizationLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.splizationLoading()';
}


}




/// @nodoc


class SplizationSuccess implements HomeState {
  const SplizationSuccess(this.specializationResponseModel);
  

 final  SpecializationResponseModel specializationResponseModel;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SplizationSuccessCopyWith<SplizationSuccess> get copyWith => _$SplizationSuccessCopyWithImpl<SplizationSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplizationSuccess&&(identical(other.specializationResponseModel, specializationResponseModel) || other.specializationResponseModel == specializationResponseModel));
}


@override
int get hashCode => Object.hash(runtimeType,specializationResponseModel);

@override
String toString() {
  return 'HomeState.splizationSuccess(specializationResponseModel: $specializationResponseModel)';
}


}

/// @nodoc
abstract mixin class $SplizationSuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $SplizationSuccessCopyWith(SplizationSuccess value, $Res Function(SplizationSuccess) _then) = _$SplizationSuccessCopyWithImpl;
@useResult
$Res call({
 SpecializationResponseModel specializationResponseModel
});




}
/// @nodoc
class _$SplizationSuccessCopyWithImpl<$Res>
    implements $SplizationSuccessCopyWith<$Res> {
  _$SplizationSuccessCopyWithImpl(this._self, this._then);

  final SplizationSuccess _self;
  final $Res Function(SplizationSuccess) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? specializationResponseModel = null,}) {
  return _then(SplizationSuccess(
null == specializationResponseModel ? _self.specializationResponseModel : specializationResponseModel // ignore: cast_nullable_to_non_nullable
as SpecializationResponseModel,
  ));
}


}

/// @nodoc


class SplizationError implements HomeState {
  const SplizationError(this.errorHandler);
  

 final  ErrorHandler errorHandler;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SplizationErrorCopyWith<SplizationError> get copyWith => _$SplizationErrorCopyWithImpl<SplizationError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplizationError&&(identical(other.errorHandler, errorHandler) || other.errorHandler == errorHandler));
}


@override
int get hashCode => Object.hash(runtimeType,errorHandler);

@override
String toString() {
  return 'HomeState.splizationError(errorHandler: $errorHandler)';
}


}

/// @nodoc
abstract mixin class $SplizationErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $SplizationErrorCopyWith(SplizationError value, $Res Function(SplizationError) _then) = _$SplizationErrorCopyWithImpl;
@useResult
$Res call({
 ErrorHandler errorHandler
});




}
/// @nodoc
class _$SplizationErrorCopyWithImpl<$Res>
    implements $SplizationErrorCopyWith<$Res> {
  _$SplizationErrorCopyWithImpl(this._self, this._then);

  final SplizationError _self;
  final $Res Function(SplizationError) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorHandler = null,}) {
  return _then(SplizationError(
null == errorHandler ? _self.errorHandler : errorHandler // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

// dart format on
