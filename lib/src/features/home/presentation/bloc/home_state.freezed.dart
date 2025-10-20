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

// Emission Data
 OperationalHourEntity? get operationalHourData; bool get isLoadingOperationalHour; String? get operationalHourError;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.operationalHourData, operationalHourData) || other.operationalHourData == operationalHourData)&&(identical(other.isLoadingOperationalHour, isLoadingOperationalHour) || other.isLoadingOperationalHour == isLoadingOperationalHour)&&(identical(other.operationalHourError, operationalHourError) || other.operationalHourError == operationalHourError));
}


@override
int get hashCode => Object.hash(runtimeType,operationalHourData,isLoadingOperationalHour,operationalHourError);

@override
String toString() {
  return 'HomeState(operationalHourData: $operationalHourData, isLoadingOperationalHour: $isLoadingOperationalHour, operationalHourError: $operationalHourError)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 OperationalHourEntity? operationalHourData, bool isLoadingOperationalHour, String? operationalHourError
});


$OperationalHourEntityCopyWith<$Res>? get operationalHourData;

}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? operationalHourData = freezed,Object? isLoadingOperationalHour = null,Object? operationalHourError = freezed,}) {
  return _then(_self.copyWith(
operationalHourData: freezed == operationalHourData ? _self.operationalHourData : operationalHourData // ignore: cast_nullable_to_non_nullable
as OperationalHourEntity?,isLoadingOperationalHour: null == isLoadingOperationalHour ? _self.isLoadingOperationalHour : isLoadingOperationalHour // ignore: cast_nullable_to_non_nullable
as bool,operationalHourError: freezed == operationalHourError ? _self.operationalHourError : operationalHourError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OperationalHourEntityCopyWith<$Res>? get operationalHourData {
    if (_self.operationalHourData == null) {
    return null;
  }

  return $OperationalHourEntityCopyWith<$Res>(_self.operationalHourData!, (value) {
    return _then(_self.copyWith(operationalHourData: value));
  });
}
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value)  $default,){
final _that = this;
switch (_that) {
case _HomeState():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OperationalHourEntity? operationalHourData,  bool isLoadingOperationalHour,  String? operationalHourError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.operationalHourData,_that.isLoadingOperationalHour,_that.operationalHourError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OperationalHourEntity? operationalHourData,  bool isLoadingOperationalHour,  String? operationalHourError)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.operationalHourData,_that.isLoadingOperationalHour,_that.operationalHourError);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OperationalHourEntity? operationalHourData,  bool isLoadingOperationalHour,  String? operationalHourError)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.operationalHourData,_that.isLoadingOperationalHour,_that.operationalHourError);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState extends HomeState {
  const _HomeState({this.operationalHourData = null, this.isLoadingOperationalHour = false, this.operationalHourError = null}): super._();
  

// Emission Data
@override@JsonKey() final  OperationalHourEntity? operationalHourData;
@override@JsonKey() final  bool isLoadingOperationalHour;
@override@JsonKey() final  String? operationalHourError;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.operationalHourData, operationalHourData) || other.operationalHourData == operationalHourData)&&(identical(other.isLoadingOperationalHour, isLoadingOperationalHour) || other.isLoadingOperationalHour == isLoadingOperationalHour)&&(identical(other.operationalHourError, operationalHourError) || other.operationalHourError == operationalHourError));
}


@override
int get hashCode => Object.hash(runtimeType,operationalHourData,isLoadingOperationalHour,operationalHourError);

@override
String toString() {
  return 'HomeState(operationalHourData: $operationalHourData, isLoadingOperationalHour: $isLoadingOperationalHour, operationalHourError: $operationalHourError)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 OperationalHourEntity? operationalHourData, bool isLoadingOperationalHour, String? operationalHourError
});


@override $OperationalHourEntityCopyWith<$Res>? get operationalHourData;

}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? operationalHourData = freezed,Object? isLoadingOperationalHour = null,Object? operationalHourError = freezed,}) {
  return _then(_HomeState(
operationalHourData: freezed == operationalHourData ? _self.operationalHourData : operationalHourData // ignore: cast_nullable_to_non_nullable
as OperationalHourEntity?,isLoadingOperationalHour: null == isLoadingOperationalHour ? _self.isLoadingOperationalHour : isLoadingOperationalHour // ignore: cast_nullable_to_non_nullable
as bool,operationalHourError: freezed == operationalHourError ? _self.operationalHourError : operationalHourError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OperationalHourEntityCopyWith<$Res>? get operationalHourData {
    if (_self.operationalHourData == null) {
    return null;
  }

  return $OperationalHourEntityCopyWith<$Res>(_self.operationalHourData!, (value) {
    return _then(_self.copyWith(operationalHourData: value));
  });
}
}

// dart format on
