// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DoctorDetailsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorDetailsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DoctorDetailsState()';
}


}

/// @nodoc
class $DoctorDetailsStateCopyWith<$Res>  {
$DoctorDetailsStateCopyWith(DoctorDetailsState _, $Res Function(DoctorDetailsState) __);
}


/// Adds pattern-matching-related methods to [DoctorDetailsState].
extension DoctorDetailsStatePatterns on DoctorDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _DetailsSuccess value)?  detailsSuccess,TResult Function( _DetalisLoading value)?  detailoading,TResult Function( _DetailsError value)?  detailsError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _DetailsSuccess() when detailsSuccess != null:
return detailsSuccess(_that);case _DetalisLoading() when detailoading != null:
return detailoading(_that);case _DetailsError() when detailsError != null:
return detailsError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _DetailsSuccess value)  detailsSuccess,required TResult Function( _DetalisLoading value)  detailoading,required TResult Function( _DetailsError value)  detailsError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _DetailsSuccess():
return detailsSuccess(_that);case _DetalisLoading():
return detailoading(_that);case _DetailsError():
return detailsError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _DetailsSuccess value)?  detailsSuccess,TResult? Function( _DetalisLoading value)?  detailoading,TResult? Function( _DetailsError value)?  detailsError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _DetailsSuccess() when detailsSuccess != null:
return detailsSuccess(_that);case _DetalisLoading() when detailoading != null:
return detailoading(_that);case _DetailsError() when detailsError != null:
return detailsError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( DoctorDetailsResponseModel data)?  detailsSuccess,TResult Function()?  detailoading,TResult Function( ApiErrorModel apiErrorModel)?  detailsError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _DetailsSuccess() when detailsSuccess != null:
return detailsSuccess(_that.data);case _DetalisLoading() when detailoading != null:
return detailoading();case _DetailsError() when detailsError != null:
return detailsError(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( DoctorDetailsResponseModel data)  detailsSuccess,required TResult Function()  detailoading,required TResult Function( ApiErrorModel apiErrorModel)  detailsError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _DetailsSuccess():
return detailsSuccess(_that.data);case _DetalisLoading():
return detailoading();case _DetailsError():
return detailsError(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( DoctorDetailsResponseModel data)?  detailsSuccess,TResult? Function()?  detailoading,TResult? Function( ApiErrorModel apiErrorModel)?  detailsError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _DetailsSuccess() when detailsSuccess != null:
return detailsSuccess(_that.data);case _DetalisLoading() when detailoading != null:
return detailoading();case _DetailsError() when detailsError != null:
return detailsError(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements DoctorDetailsState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DoctorDetailsState.initial()';
}


}




/// @nodoc


class _DetailsSuccess implements DoctorDetailsState {
  const _DetailsSuccess(this.data);
  

 final  DoctorDetailsResponseModel data;

/// Create a copy of DoctorDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetailsSuccessCopyWith<_DetailsSuccess> get copyWith => __$DetailsSuccessCopyWithImpl<_DetailsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetailsSuccess&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'DoctorDetailsState.detailsSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class _$DetailsSuccessCopyWith<$Res> implements $DoctorDetailsStateCopyWith<$Res> {
  factory _$DetailsSuccessCopyWith(_DetailsSuccess value, $Res Function(_DetailsSuccess) _then) = __$DetailsSuccessCopyWithImpl;
@useResult
$Res call({
 DoctorDetailsResponseModel data
});




}
/// @nodoc
class __$DetailsSuccessCopyWithImpl<$Res>
    implements _$DetailsSuccessCopyWith<$Res> {
  __$DetailsSuccessCopyWithImpl(this._self, this._then);

  final _DetailsSuccess _self;
  final $Res Function(_DetailsSuccess) _then;

/// Create a copy of DoctorDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_DetailsSuccess(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DoctorDetailsResponseModel,
  ));
}


}

/// @nodoc


class _DetalisLoading implements DoctorDetailsState {
  const _DetalisLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetalisLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DoctorDetailsState.detailoading()';
}


}




/// @nodoc


class _DetailsError implements DoctorDetailsState {
  const _DetailsError(this.apiErrorModel);
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of DoctorDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetailsErrorCopyWith<_DetailsError> get copyWith => __$DetailsErrorCopyWithImpl<_DetailsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetailsError&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'DoctorDetailsState.detailsError(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class _$DetailsErrorCopyWith<$Res> implements $DoctorDetailsStateCopyWith<$Res> {
  factory _$DetailsErrorCopyWith(_DetailsError value, $Res Function(_DetailsError) _then) = __$DetailsErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class __$DetailsErrorCopyWithImpl<$Res>
    implements _$DetailsErrorCopyWith<$Res> {
  __$DetailsErrorCopyWithImpl(this._self, this._then);

  final _DetailsError _self;
  final $Res Function(_DetailsError) _then;

/// Create a copy of DoctorDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(_DetailsError(
null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
