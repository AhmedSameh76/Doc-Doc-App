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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( SplizationLoading value)?  splizationLoading,TResult Function( SplizationSuccess value)?  splizationSuccess,TResult Function( SplizationError value)?  splizationError,TResult Function( DoctorSuccess value)?  doctorSuccess,TResult Function( DoctorError value)?  doctorError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SplizationLoading() when splizationLoading != null:
return splizationLoading(_that);case SplizationSuccess() when splizationSuccess != null:
return splizationSuccess(_that);case SplizationError() when splizationError != null:
return splizationError(_that);case DoctorSuccess() when doctorSuccess != null:
return doctorSuccess(_that);case DoctorError() when doctorError != null:
return doctorError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( SplizationLoading value)  splizationLoading,required TResult Function( SplizationSuccess value)  splizationSuccess,required TResult Function( SplizationError value)  splizationError,required TResult Function( DoctorSuccess value)  doctorSuccess,required TResult Function( DoctorError value)  doctorError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case SplizationLoading():
return splizationLoading(_that);case SplizationSuccess():
return splizationSuccess(_that);case SplizationError():
return splizationError(_that);case DoctorSuccess():
return doctorSuccess(_that);case DoctorError():
return doctorError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( SplizationLoading value)?  splizationLoading,TResult? Function( SplizationSuccess value)?  splizationSuccess,TResult? Function( SplizationError value)?  splizationError,TResult? Function( DoctorSuccess value)?  doctorSuccess,TResult? Function( DoctorError value)?  doctorError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SplizationLoading() when splizationLoading != null:
return splizationLoading(_that);case SplizationSuccess() when splizationSuccess != null:
return splizationSuccess(_that);case SplizationError() when splizationError != null:
return splizationError(_that);case DoctorSuccess() when doctorSuccess != null:
return doctorSuccess(_that);case DoctorError() when doctorError != null:
return doctorError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  splizationLoading,TResult Function( List<SpecializationData?>? specilaizationData)?  splizationSuccess,TResult Function( ErrorHandler errorHandler)?  splizationError,TResult Function( List<Doctors?>? doctorsList)?  doctorSuccess,TResult Function( ErrorHandler errorHandler)?  doctorError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SplizationLoading() when splizationLoading != null:
return splizationLoading();case SplizationSuccess() when splizationSuccess != null:
return splizationSuccess(_that.specilaizationData);case SplizationError() when splizationError != null:
return splizationError(_that.errorHandler);case DoctorSuccess() when doctorSuccess != null:
return doctorSuccess(_that.doctorsList);case DoctorError() when doctorError != null:
return doctorError(_that.errorHandler);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  splizationLoading,required TResult Function( List<SpecializationData?>? specilaizationData)  splizationSuccess,required TResult Function( ErrorHandler errorHandler)  splizationError,required TResult Function( List<Doctors?>? doctorsList)  doctorSuccess,required TResult Function( ErrorHandler errorHandler)  doctorError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case SplizationLoading():
return splizationLoading();case SplizationSuccess():
return splizationSuccess(_that.specilaizationData);case SplizationError():
return splizationError(_that.errorHandler);case DoctorSuccess():
return doctorSuccess(_that.doctorsList);case DoctorError():
return doctorError(_that.errorHandler);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  splizationLoading,TResult? Function( List<SpecializationData?>? specilaizationData)?  splizationSuccess,TResult? Function( ErrorHandler errorHandler)?  splizationError,TResult? Function( List<Doctors?>? doctorsList)?  doctorSuccess,TResult? Function( ErrorHandler errorHandler)?  doctorError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SplizationLoading() when splizationLoading != null:
return splizationLoading();case SplizationSuccess() when splizationSuccess != null:
return splizationSuccess(_that.specilaizationData);case SplizationError() when splizationError != null:
return splizationError(_that.errorHandler);case DoctorSuccess() when doctorSuccess != null:
return doctorSuccess(_that.doctorsList);case DoctorError() when doctorError != null:
return doctorError(_that.errorHandler);case _:
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
  const SplizationSuccess(final  List<SpecializationData?>? specilaizationData): _specilaizationData = specilaizationData;
  

 final  List<SpecializationData?>? _specilaizationData;
 List<SpecializationData?>? get specilaizationData {
  final value = _specilaizationData;
  if (value == null) return null;
  if (_specilaizationData is EqualUnmodifiableListView) return _specilaizationData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SplizationSuccessCopyWith<SplizationSuccess> get copyWith => _$SplizationSuccessCopyWithImpl<SplizationSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplizationSuccess&&const DeepCollectionEquality().equals(other._specilaizationData, _specilaizationData));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_specilaizationData));

@override
String toString() {
  return 'HomeState.splizationSuccess(specilaizationData: $specilaizationData)';
}


}

/// @nodoc
abstract mixin class $SplizationSuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $SplizationSuccessCopyWith(SplizationSuccess value, $Res Function(SplizationSuccess) _then) = _$SplizationSuccessCopyWithImpl;
@useResult
$Res call({
 List<SpecializationData?>? specilaizationData
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
@pragma('vm:prefer-inline') $Res call({Object? specilaizationData = freezed,}) {
  return _then(SplizationSuccess(
freezed == specilaizationData ? _self._specilaizationData : specilaizationData // ignore: cast_nullable_to_non_nullable
as List<SpecializationData?>?,
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

/// @nodoc


class DoctorSuccess implements HomeState {
  const DoctorSuccess(final  List<Doctors?>? doctorsList): _doctorsList = doctorsList;
  

 final  List<Doctors?>? _doctorsList;
 List<Doctors?>? get doctorsList {
  final value = _doctorsList;
  if (value == null) return null;
  if (_doctorsList is EqualUnmodifiableListView) return _doctorsList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorSuccessCopyWith<DoctorSuccess> get copyWith => _$DoctorSuccessCopyWithImpl<DoctorSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorSuccess&&const DeepCollectionEquality().equals(other._doctorsList, _doctorsList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_doctorsList));

@override
String toString() {
  return 'HomeState.doctorSuccess(doctorsList: $doctorsList)';
}


}

/// @nodoc
abstract mixin class $DoctorSuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $DoctorSuccessCopyWith(DoctorSuccess value, $Res Function(DoctorSuccess) _then) = _$DoctorSuccessCopyWithImpl;
@useResult
$Res call({
 List<Doctors?>? doctorsList
});




}
/// @nodoc
class _$DoctorSuccessCopyWithImpl<$Res>
    implements $DoctorSuccessCopyWith<$Res> {
  _$DoctorSuccessCopyWithImpl(this._self, this._then);

  final DoctorSuccess _self;
  final $Res Function(DoctorSuccess) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? doctorsList = freezed,}) {
  return _then(DoctorSuccess(
freezed == doctorsList ? _self._doctorsList : doctorsList // ignore: cast_nullable_to_non_nullable
as List<Doctors?>?,
  ));
}


}

/// @nodoc


class DoctorError implements HomeState {
  const DoctorError(this.errorHandler);
  

 final  ErrorHandler errorHandler;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorErrorCopyWith<DoctorError> get copyWith => _$DoctorErrorCopyWithImpl<DoctorError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorError&&(identical(other.errorHandler, errorHandler) || other.errorHandler == errorHandler));
}


@override
int get hashCode => Object.hash(runtimeType,errorHandler);

@override
String toString() {
  return 'HomeState.doctorError(errorHandler: $errorHandler)';
}


}

/// @nodoc
abstract mixin class $DoctorErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $DoctorErrorCopyWith(DoctorError value, $Res Function(DoctorError) _then) = _$DoctorErrorCopyWithImpl;
@useResult
$Res call({
 ErrorHandler errorHandler
});




}
/// @nodoc
class _$DoctorErrorCopyWithImpl<$Res>
    implements $DoctorErrorCopyWith<$Res> {
  _$DoctorErrorCopyWithImpl(this._self, this._then);

  final DoctorError _self;
  final $Res Function(DoctorError) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorHandler = null,}) {
  return _then(DoctorError(
null == errorHandler ? _self.errorHandler : errorHandler // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

// dart format on
