// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appoinments_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppoinmentsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppoinmentsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppoinmentsState()';
}


}

/// @nodoc
class $AppoinmentsStateCopyWith<$Res>  {
$AppoinmentsStateCopyWith(AppoinmentsState _, $Res Function(AppoinmentsState) __);
}


/// Adds pattern-matching-related methods to [AppoinmentsState].
extension AppoinmentsStatePatterns on AppoinmentsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _AppointmentLoading value)?  appointmentloading,TResult Function( _AppointmentSuccess value)?  appointmentSuccess,TResult Function( _AppointmentFailuer value)?  appointmentFailuer,TResult Function( _SelectedCardType value)?  selectedCardType,TResult Function( _SelectedMothed value)?  selectedMothed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _AppointmentLoading() when appointmentloading != null:
return appointmentloading(_that);case _AppointmentSuccess() when appointmentSuccess != null:
return appointmentSuccess(_that);case _AppointmentFailuer() when appointmentFailuer != null:
return appointmentFailuer(_that);case _SelectedCardType() when selectedCardType != null:
return selectedCardType(_that);case _SelectedMothed() when selectedMothed != null:
return selectedMothed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _AppointmentLoading value)  appointmentloading,required TResult Function( _AppointmentSuccess value)  appointmentSuccess,required TResult Function( _AppointmentFailuer value)  appointmentFailuer,required TResult Function( _SelectedCardType value)  selectedCardType,required TResult Function( _SelectedMothed value)  selectedMothed,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _AppointmentLoading():
return appointmentloading(_that);case _AppointmentSuccess():
return appointmentSuccess(_that);case _AppointmentFailuer():
return appointmentFailuer(_that);case _SelectedCardType():
return selectedCardType(_that);case _SelectedMothed():
return selectedMothed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _AppointmentLoading value)?  appointmentloading,TResult? Function( _AppointmentSuccess value)?  appointmentSuccess,TResult? Function( _AppointmentFailuer value)?  appointmentFailuer,TResult? Function( _SelectedCardType value)?  selectedCardType,TResult? Function( _SelectedMothed value)?  selectedMothed,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _AppointmentLoading() when appointmentloading != null:
return appointmentloading(_that);case _AppointmentSuccess() when appointmentSuccess != null:
return appointmentSuccess(_that);case _AppointmentFailuer() when appointmentFailuer != null:
return appointmentFailuer(_that);case _SelectedCardType() when selectedCardType != null:
return selectedCardType(_that);case _SelectedMothed() when selectedMothed != null:
return selectedMothed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  appointmentloading,TResult Function( AppoinmentsModel data)?  appointmentSuccess,TResult Function( ApiErrorModel apiErrorModel)?  appointmentFailuer,TResult Function()?  selectedCardType,TResult Function()?  selectedMothed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _AppointmentLoading() when appointmentloading != null:
return appointmentloading();case _AppointmentSuccess() when appointmentSuccess != null:
return appointmentSuccess(_that.data);case _AppointmentFailuer() when appointmentFailuer != null:
return appointmentFailuer(_that.apiErrorModel);case _SelectedCardType() when selectedCardType != null:
return selectedCardType();case _SelectedMothed() when selectedMothed != null:
return selectedMothed();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  appointmentloading,required TResult Function( AppoinmentsModel data)  appointmentSuccess,required TResult Function( ApiErrorModel apiErrorModel)  appointmentFailuer,required TResult Function()  selectedCardType,required TResult Function()  selectedMothed,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _AppointmentLoading():
return appointmentloading();case _AppointmentSuccess():
return appointmentSuccess(_that.data);case _AppointmentFailuer():
return appointmentFailuer(_that.apiErrorModel);case _SelectedCardType():
return selectedCardType();case _SelectedMothed():
return selectedMothed();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  appointmentloading,TResult? Function( AppoinmentsModel data)?  appointmentSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  appointmentFailuer,TResult? Function()?  selectedCardType,TResult? Function()?  selectedMothed,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _AppointmentLoading() when appointmentloading != null:
return appointmentloading();case _AppointmentSuccess() when appointmentSuccess != null:
return appointmentSuccess(_that.data);case _AppointmentFailuer() when appointmentFailuer != null:
return appointmentFailuer(_that.apiErrorModel);case _SelectedCardType() when selectedCardType != null:
return selectedCardType();case _SelectedMothed() when selectedMothed != null:
return selectedMothed();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AppoinmentsState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppoinmentsState.initial()';
}


}




/// @nodoc


class _AppointmentLoading implements AppoinmentsState {
  const _AppointmentLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppointmentLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppoinmentsState.appointmentloading()';
}


}




/// @nodoc


class _AppointmentSuccess implements AppoinmentsState {
  const _AppointmentSuccess(this.data);
  

 final  AppoinmentsModel data;

/// Create a copy of AppoinmentsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppointmentSuccessCopyWith<_AppointmentSuccess> get copyWith => __$AppointmentSuccessCopyWithImpl<_AppointmentSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppointmentSuccess&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'AppoinmentsState.appointmentSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class _$AppointmentSuccessCopyWith<$Res> implements $AppoinmentsStateCopyWith<$Res> {
  factory _$AppointmentSuccessCopyWith(_AppointmentSuccess value, $Res Function(_AppointmentSuccess) _then) = __$AppointmentSuccessCopyWithImpl;
@useResult
$Res call({
 AppoinmentsModel data
});




}
/// @nodoc
class __$AppointmentSuccessCopyWithImpl<$Res>
    implements _$AppointmentSuccessCopyWith<$Res> {
  __$AppointmentSuccessCopyWithImpl(this._self, this._then);

  final _AppointmentSuccess _self;
  final $Res Function(_AppointmentSuccess) _then;

/// Create a copy of AppoinmentsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_AppointmentSuccess(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AppoinmentsModel,
  ));
}


}

/// @nodoc


class _AppointmentFailuer implements AppoinmentsState {
  const _AppointmentFailuer(this.apiErrorModel);
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of AppoinmentsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppointmentFailuerCopyWith<_AppointmentFailuer> get copyWith => __$AppointmentFailuerCopyWithImpl<_AppointmentFailuer>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppointmentFailuer&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'AppoinmentsState.appointmentFailuer(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class _$AppointmentFailuerCopyWith<$Res> implements $AppoinmentsStateCopyWith<$Res> {
  factory _$AppointmentFailuerCopyWith(_AppointmentFailuer value, $Res Function(_AppointmentFailuer) _then) = __$AppointmentFailuerCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class __$AppointmentFailuerCopyWithImpl<$Res>
    implements _$AppointmentFailuerCopyWith<$Res> {
  __$AppointmentFailuerCopyWithImpl(this._self, this._then);

  final _AppointmentFailuer _self;
  final $Res Function(_AppointmentFailuer) _then;

/// Create a copy of AppoinmentsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(_AppointmentFailuer(
null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

/// @nodoc


class _SelectedCardType implements AppoinmentsState {
  const _SelectedCardType();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectedCardType);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppoinmentsState.selectedCardType()';
}


}




/// @nodoc


class _SelectedMothed implements AppoinmentsState {
  const _SelectedMothed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectedMothed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppoinmentsState.selectedMothed()';
}


}




// dart format on
