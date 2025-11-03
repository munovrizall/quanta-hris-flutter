// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AttendanceState {

// Company branches
 CompanyBranchesEntity? get companyBranches; bool get isCompanyBranchesLoading; String? get companyBranchesError;// Face registration
 UserEntity? get registeredFaceData; bool get isRegisterFaceLoading; String? get registerFaceError;// Clock-in
 ClockInEntity? get clockInData; bool get isClockInLoading; String? get clockInError; String? get clockInSuccessMessage;
/// Create a copy of AttendanceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceStateCopyWith<AttendanceState> get copyWith => _$AttendanceStateCopyWithImpl<AttendanceState>(this as AttendanceState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceState&&(identical(other.companyBranches, companyBranches) || other.companyBranches == companyBranches)&&(identical(other.isCompanyBranchesLoading, isCompanyBranchesLoading) || other.isCompanyBranchesLoading == isCompanyBranchesLoading)&&(identical(other.companyBranchesError, companyBranchesError) || other.companyBranchesError == companyBranchesError)&&(identical(other.registeredFaceData, registeredFaceData) || other.registeredFaceData == registeredFaceData)&&(identical(other.isRegisterFaceLoading, isRegisterFaceLoading) || other.isRegisterFaceLoading == isRegisterFaceLoading)&&(identical(other.registerFaceError, registerFaceError) || other.registerFaceError == registerFaceError)&&(identical(other.clockInData, clockInData) || other.clockInData == clockInData)&&(identical(other.isClockInLoading, isClockInLoading) || other.isClockInLoading == isClockInLoading)&&(identical(other.clockInError, clockInError) || other.clockInError == clockInError)&&(identical(other.clockInSuccessMessage, clockInSuccessMessage) || other.clockInSuccessMessage == clockInSuccessMessage));
}


@override
int get hashCode => Object.hash(runtimeType,companyBranches,isCompanyBranchesLoading,companyBranchesError,registeredFaceData,isRegisterFaceLoading,registerFaceError,clockInData,isClockInLoading,clockInError,clockInSuccessMessage);

@override
String toString() {
  return 'AttendanceState(companyBranches: $companyBranches, isCompanyBranchesLoading: $isCompanyBranchesLoading, companyBranchesError: $companyBranchesError, registeredFaceData: $registeredFaceData, isRegisterFaceLoading: $isRegisterFaceLoading, registerFaceError: $registerFaceError, clockInData: $clockInData, isClockInLoading: $isClockInLoading, clockInError: $clockInError, clockInSuccessMessage: $clockInSuccessMessage)';
}


}

/// @nodoc
abstract mixin class $AttendanceStateCopyWith<$Res>  {
  factory $AttendanceStateCopyWith(AttendanceState value, $Res Function(AttendanceState) _then) = _$AttendanceStateCopyWithImpl;
@useResult
$Res call({
 CompanyBranchesEntity? companyBranches, bool isCompanyBranchesLoading, String? companyBranchesError, UserEntity? registeredFaceData, bool isRegisterFaceLoading, String? registerFaceError, ClockInEntity? clockInData, bool isClockInLoading, String? clockInError, String? clockInSuccessMessage
});


$CompanyBranchesEntityCopyWith<$Res>? get companyBranches;$UserEntityCopyWith<$Res>? get registeredFaceData;$ClockInEntityCopyWith<$Res>? get clockInData;

}
/// @nodoc
class _$AttendanceStateCopyWithImpl<$Res>
    implements $AttendanceStateCopyWith<$Res> {
  _$AttendanceStateCopyWithImpl(this._self, this._then);

  final AttendanceState _self;
  final $Res Function(AttendanceState) _then;

/// Create a copy of AttendanceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? companyBranches = freezed,Object? isCompanyBranchesLoading = null,Object? companyBranchesError = freezed,Object? registeredFaceData = freezed,Object? isRegisterFaceLoading = null,Object? registerFaceError = freezed,Object? clockInData = freezed,Object? isClockInLoading = null,Object? clockInError = freezed,Object? clockInSuccessMessage = freezed,}) {
  return _then(_self.copyWith(
companyBranches: freezed == companyBranches ? _self.companyBranches : companyBranches // ignore: cast_nullable_to_non_nullable
as CompanyBranchesEntity?,isCompanyBranchesLoading: null == isCompanyBranchesLoading ? _self.isCompanyBranchesLoading : isCompanyBranchesLoading // ignore: cast_nullable_to_non_nullable
as bool,companyBranchesError: freezed == companyBranchesError ? _self.companyBranchesError : companyBranchesError // ignore: cast_nullable_to_non_nullable
as String?,registeredFaceData: freezed == registeredFaceData ? _self.registeredFaceData : registeredFaceData // ignore: cast_nullable_to_non_nullable
as UserEntity?,isRegisterFaceLoading: null == isRegisterFaceLoading ? _self.isRegisterFaceLoading : isRegisterFaceLoading // ignore: cast_nullable_to_non_nullable
as bool,registerFaceError: freezed == registerFaceError ? _self.registerFaceError : registerFaceError // ignore: cast_nullable_to_non_nullable
as String?,clockInData: freezed == clockInData ? _self.clockInData : clockInData // ignore: cast_nullable_to_non_nullable
as ClockInEntity?,isClockInLoading: null == isClockInLoading ? _self.isClockInLoading : isClockInLoading // ignore: cast_nullable_to_non_nullable
as bool,clockInError: freezed == clockInError ? _self.clockInError : clockInError // ignore: cast_nullable_to_non_nullable
as String?,clockInSuccessMessage: freezed == clockInSuccessMessage ? _self.clockInSuccessMessage : clockInSuccessMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of AttendanceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyBranchesEntityCopyWith<$Res>? get companyBranches {
    if (_self.companyBranches == null) {
    return null;
  }

  return $CompanyBranchesEntityCopyWith<$Res>(_self.companyBranches!, (value) {
    return _then(_self.copyWith(companyBranches: value));
  });
}/// Create a copy of AttendanceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res>? get registeredFaceData {
    if (_self.registeredFaceData == null) {
    return null;
  }

  return $UserEntityCopyWith<$Res>(_self.registeredFaceData!, (value) {
    return _then(_self.copyWith(registeredFaceData: value));
  });
}/// Create a copy of AttendanceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClockInEntityCopyWith<$Res>? get clockInData {
    if (_self.clockInData == null) {
    return null;
  }

  return $ClockInEntityCopyWith<$Res>(_self.clockInData!, (value) {
    return _then(_self.copyWith(clockInData: value));
  });
}
}


/// Adds pattern-matching-related methods to [AttendanceState].
extension AttendanceStatePatterns on AttendanceState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceState value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceState value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CompanyBranchesEntity? companyBranches,  bool isCompanyBranchesLoading,  String? companyBranchesError,  UserEntity? registeredFaceData,  bool isRegisterFaceLoading,  String? registerFaceError,  ClockInEntity? clockInData,  bool isClockInLoading,  String? clockInError,  String? clockInSuccessMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceState() when $default != null:
return $default(_that.companyBranches,_that.isCompanyBranchesLoading,_that.companyBranchesError,_that.registeredFaceData,_that.isRegisterFaceLoading,_that.registerFaceError,_that.clockInData,_that.isClockInLoading,_that.clockInError,_that.clockInSuccessMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CompanyBranchesEntity? companyBranches,  bool isCompanyBranchesLoading,  String? companyBranchesError,  UserEntity? registeredFaceData,  bool isRegisterFaceLoading,  String? registerFaceError,  ClockInEntity? clockInData,  bool isClockInLoading,  String? clockInError,  String? clockInSuccessMessage)  $default,) {final _that = this;
switch (_that) {
case _AttendanceState():
return $default(_that.companyBranches,_that.isCompanyBranchesLoading,_that.companyBranchesError,_that.registeredFaceData,_that.isRegisterFaceLoading,_that.registerFaceError,_that.clockInData,_that.isClockInLoading,_that.clockInError,_that.clockInSuccessMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CompanyBranchesEntity? companyBranches,  bool isCompanyBranchesLoading,  String? companyBranchesError,  UserEntity? registeredFaceData,  bool isRegisterFaceLoading,  String? registerFaceError,  ClockInEntity? clockInData,  bool isClockInLoading,  String? clockInError,  String? clockInSuccessMessage)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceState() when $default != null:
return $default(_that.companyBranches,_that.isCompanyBranchesLoading,_that.companyBranchesError,_that.registeredFaceData,_that.isRegisterFaceLoading,_that.registerFaceError,_that.clockInData,_that.isClockInLoading,_that.clockInError,_that.clockInSuccessMessage);case _:
  return null;

}
}

}

/// @nodoc


class _AttendanceState extends AttendanceState {
  const _AttendanceState({this.companyBranches = null, this.isCompanyBranchesLoading = false, this.companyBranchesError = null, this.registeredFaceData = null, this.isRegisterFaceLoading = false, this.registerFaceError = null, this.clockInData = null, this.isClockInLoading = false, this.clockInError = null, this.clockInSuccessMessage = null}): super._();
  

// Company branches
@override@JsonKey() final  CompanyBranchesEntity? companyBranches;
@override@JsonKey() final  bool isCompanyBranchesLoading;
@override@JsonKey() final  String? companyBranchesError;
// Face registration
@override@JsonKey() final  UserEntity? registeredFaceData;
@override@JsonKey() final  bool isRegisterFaceLoading;
@override@JsonKey() final  String? registerFaceError;
// Clock-in
@override@JsonKey() final  ClockInEntity? clockInData;
@override@JsonKey() final  bool isClockInLoading;
@override@JsonKey() final  String? clockInError;
@override@JsonKey() final  String? clockInSuccessMessage;

/// Create a copy of AttendanceState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceStateCopyWith<_AttendanceState> get copyWith => __$AttendanceStateCopyWithImpl<_AttendanceState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceState&&(identical(other.companyBranches, companyBranches) || other.companyBranches == companyBranches)&&(identical(other.isCompanyBranchesLoading, isCompanyBranchesLoading) || other.isCompanyBranchesLoading == isCompanyBranchesLoading)&&(identical(other.companyBranchesError, companyBranchesError) || other.companyBranchesError == companyBranchesError)&&(identical(other.registeredFaceData, registeredFaceData) || other.registeredFaceData == registeredFaceData)&&(identical(other.isRegisterFaceLoading, isRegisterFaceLoading) || other.isRegisterFaceLoading == isRegisterFaceLoading)&&(identical(other.registerFaceError, registerFaceError) || other.registerFaceError == registerFaceError)&&(identical(other.clockInData, clockInData) || other.clockInData == clockInData)&&(identical(other.isClockInLoading, isClockInLoading) || other.isClockInLoading == isClockInLoading)&&(identical(other.clockInError, clockInError) || other.clockInError == clockInError)&&(identical(other.clockInSuccessMessage, clockInSuccessMessage) || other.clockInSuccessMessage == clockInSuccessMessage));
}


@override
int get hashCode => Object.hash(runtimeType,companyBranches,isCompanyBranchesLoading,companyBranchesError,registeredFaceData,isRegisterFaceLoading,registerFaceError,clockInData,isClockInLoading,clockInError,clockInSuccessMessage);

@override
String toString() {
  return 'AttendanceState(companyBranches: $companyBranches, isCompanyBranchesLoading: $isCompanyBranchesLoading, companyBranchesError: $companyBranchesError, registeredFaceData: $registeredFaceData, isRegisterFaceLoading: $isRegisterFaceLoading, registerFaceError: $registerFaceError, clockInData: $clockInData, isClockInLoading: $isClockInLoading, clockInError: $clockInError, clockInSuccessMessage: $clockInSuccessMessage)';
}


}

/// @nodoc
abstract mixin class _$AttendanceStateCopyWith<$Res> implements $AttendanceStateCopyWith<$Res> {
  factory _$AttendanceStateCopyWith(_AttendanceState value, $Res Function(_AttendanceState) _then) = __$AttendanceStateCopyWithImpl;
@override @useResult
$Res call({
 CompanyBranchesEntity? companyBranches, bool isCompanyBranchesLoading, String? companyBranchesError, UserEntity? registeredFaceData, bool isRegisterFaceLoading, String? registerFaceError, ClockInEntity? clockInData, bool isClockInLoading, String? clockInError, String? clockInSuccessMessage
});


@override $CompanyBranchesEntityCopyWith<$Res>? get companyBranches;@override $UserEntityCopyWith<$Res>? get registeredFaceData;@override $ClockInEntityCopyWith<$Res>? get clockInData;

}
/// @nodoc
class __$AttendanceStateCopyWithImpl<$Res>
    implements _$AttendanceStateCopyWith<$Res> {
  __$AttendanceStateCopyWithImpl(this._self, this._then);

  final _AttendanceState _self;
  final $Res Function(_AttendanceState) _then;

/// Create a copy of AttendanceState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? companyBranches = freezed,Object? isCompanyBranchesLoading = null,Object? companyBranchesError = freezed,Object? registeredFaceData = freezed,Object? isRegisterFaceLoading = null,Object? registerFaceError = freezed,Object? clockInData = freezed,Object? isClockInLoading = null,Object? clockInError = freezed,Object? clockInSuccessMessage = freezed,}) {
  return _then(_AttendanceState(
companyBranches: freezed == companyBranches ? _self.companyBranches : companyBranches // ignore: cast_nullable_to_non_nullable
as CompanyBranchesEntity?,isCompanyBranchesLoading: null == isCompanyBranchesLoading ? _self.isCompanyBranchesLoading : isCompanyBranchesLoading // ignore: cast_nullable_to_non_nullable
as bool,companyBranchesError: freezed == companyBranchesError ? _self.companyBranchesError : companyBranchesError // ignore: cast_nullable_to_non_nullable
as String?,registeredFaceData: freezed == registeredFaceData ? _self.registeredFaceData : registeredFaceData // ignore: cast_nullable_to_non_nullable
as UserEntity?,isRegisterFaceLoading: null == isRegisterFaceLoading ? _self.isRegisterFaceLoading : isRegisterFaceLoading // ignore: cast_nullable_to_non_nullable
as bool,registerFaceError: freezed == registerFaceError ? _self.registerFaceError : registerFaceError // ignore: cast_nullable_to_non_nullable
as String?,clockInData: freezed == clockInData ? _self.clockInData : clockInData // ignore: cast_nullable_to_non_nullable
as ClockInEntity?,isClockInLoading: null == isClockInLoading ? _self.isClockInLoading : isClockInLoading // ignore: cast_nullable_to_non_nullable
as bool,clockInError: freezed == clockInError ? _self.clockInError : clockInError // ignore: cast_nullable_to_non_nullable
as String?,clockInSuccessMessage: freezed == clockInSuccessMessage ? _self.clockInSuccessMessage : clockInSuccessMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of AttendanceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyBranchesEntityCopyWith<$Res>? get companyBranches {
    if (_self.companyBranches == null) {
    return null;
  }

  return $CompanyBranchesEntityCopyWith<$Res>(_self.companyBranches!, (value) {
    return _then(_self.copyWith(companyBranches: value));
  });
}/// Create a copy of AttendanceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res>? get registeredFaceData {
    if (_self.registeredFaceData == null) {
    return null;
  }

  return $UserEntityCopyWith<$Res>(_self.registeredFaceData!, (value) {
    return _then(_self.copyWith(registeredFaceData: value));
  });
}/// Create a copy of AttendanceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClockInEntityCopyWith<$Res>? get clockInData {
    if (_self.clockInData == null) {
    return null;
  }

  return $ClockInEntityCopyWith<$Res>(_self.clockInData!, (value) {
    return _then(_self.copyWith(clockInData: value));
  });
}
}

// dart format on
