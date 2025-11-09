// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HistoryState {

 bool get isLoadingAttendanceHistory; AttendanceHistoryListEntity? get attendanceHistory; String? get attendanceHistoryError;
/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryStateCopyWith<HistoryState> get copyWith => _$HistoryStateCopyWithImpl<HistoryState>(this as HistoryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryState&&(identical(other.isLoadingAttendanceHistory, isLoadingAttendanceHistory) || other.isLoadingAttendanceHistory == isLoadingAttendanceHistory)&&(identical(other.attendanceHistory, attendanceHistory) || other.attendanceHistory == attendanceHistory)&&(identical(other.attendanceHistoryError, attendanceHistoryError) || other.attendanceHistoryError == attendanceHistoryError));
}


@override
int get hashCode => Object.hash(runtimeType,isLoadingAttendanceHistory,attendanceHistory,attendanceHistoryError);

@override
String toString() {
  return 'HistoryState(isLoadingAttendanceHistory: $isLoadingAttendanceHistory, attendanceHistory: $attendanceHistory, attendanceHistoryError: $attendanceHistoryError)';
}


}

/// @nodoc
abstract mixin class $HistoryStateCopyWith<$Res>  {
  factory $HistoryStateCopyWith(HistoryState value, $Res Function(HistoryState) _then) = _$HistoryStateCopyWithImpl;
@useResult
$Res call({
 bool isLoadingAttendanceHistory, AttendanceHistoryListEntity? attendanceHistory, String? attendanceHistoryError
});


$AttendanceHistoryListEntityCopyWith<$Res>? get attendanceHistory;

}
/// @nodoc
class _$HistoryStateCopyWithImpl<$Res>
    implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._self, this._then);

  final HistoryState _self;
  final $Res Function(HistoryState) _then;

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoadingAttendanceHistory = null,Object? attendanceHistory = freezed,Object? attendanceHistoryError = freezed,}) {
  return _then(_self.copyWith(
isLoadingAttendanceHistory: null == isLoadingAttendanceHistory ? _self.isLoadingAttendanceHistory : isLoadingAttendanceHistory // ignore: cast_nullable_to_non_nullable
as bool,attendanceHistory: freezed == attendanceHistory ? _self.attendanceHistory : attendanceHistory // ignore: cast_nullable_to_non_nullable
as AttendanceHistoryListEntity?,attendanceHistoryError: freezed == attendanceHistoryError ? _self.attendanceHistoryError : attendanceHistoryError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceHistoryListEntityCopyWith<$Res>? get attendanceHistory {
    if (_self.attendanceHistory == null) {
    return null;
  }

  return $AttendanceHistoryListEntityCopyWith<$Res>(_self.attendanceHistory!, (value) {
    return _then(_self.copyWith(attendanceHistory: value));
  });
}
}


/// Adds pattern-matching-related methods to [HistoryState].
extension HistoryStatePatterns on HistoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HistoryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HistoryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HistoryState value)  $default,){
final _that = this;
switch (_that) {
case _HistoryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HistoryState value)?  $default,){
final _that = this;
switch (_that) {
case _HistoryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoadingAttendanceHistory,  AttendanceHistoryListEntity? attendanceHistory,  String? attendanceHistoryError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HistoryState() when $default != null:
return $default(_that.isLoadingAttendanceHistory,_that.attendanceHistory,_that.attendanceHistoryError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoadingAttendanceHistory,  AttendanceHistoryListEntity? attendanceHistory,  String? attendanceHistoryError)  $default,) {final _that = this;
switch (_that) {
case _HistoryState():
return $default(_that.isLoadingAttendanceHistory,_that.attendanceHistory,_that.attendanceHistoryError);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoadingAttendanceHistory,  AttendanceHistoryListEntity? attendanceHistory,  String? attendanceHistoryError)?  $default,) {final _that = this;
switch (_that) {
case _HistoryState() when $default != null:
return $default(_that.isLoadingAttendanceHistory,_that.attendanceHistory,_that.attendanceHistoryError);case _:
  return null;

}
}

}

/// @nodoc


class _HistoryState implements HistoryState {
  const _HistoryState({this.isLoadingAttendanceHistory = false, this.attendanceHistory, this.attendanceHistoryError});
  

@override@JsonKey() final  bool isLoadingAttendanceHistory;
@override final  AttendanceHistoryListEntity? attendanceHistory;
@override final  String? attendanceHistoryError;

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HistoryStateCopyWith<_HistoryState> get copyWith => __$HistoryStateCopyWithImpl<_HistoryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HistoryState&&(identical(other.isLoadingAttendanceHistory, isLoadingAttendanceHistory) || other.isLoadingAttendanceHistory == isLoadingAttendanceHistory)&&(identical(other.attendanceHistory, attendanceHistory) || other.attendanceHistory == attendanceHistory)&&(identical(other.attendanceHistoryError, attendanceHistoryError) || other.attendanceHistoryError == attendanceHistoryError));
}


@override
int get hashCode => Object.hash(runtimeType,isLoadingAttendanceHistory,attendanceHistory,attendanceHistoryError);

@override
String toString() {
  return 'HistoryState(isLoadingAttendanceHistory: $isLoadingAttendanceHistory, attendanceHistory: $attendanceHistory, attendanceHistoryError: $attendanceHistoryError)';
}


}

/// @nodoc
abstract mixin class _$HistoryStateCopyWith<$Res> implements $HistoryStateCopyWith<$Res> {
  factory _$HistoryStateCopyWith(_HistoryState value, $Res Function(_HistoryState) _then) = __$HistoryStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoadingAttendanceHistory, AttendanceHistoryListEntity? attendanceHistory, String? attendanceHistoryError
});


@override $AttendanceHistoryListEntityCopyWith<$Res>? get attendanceHistory;

}
/// @nodoc
class __$HistoryStateCopyWithImpl<$Res>
    implements _$HistoryStateCopyWith<$Res> {
  __$HistoryStateCopyWithImpl(this._self, this._then);

  final _HistoryState _self;
  final $Res Function(_HistoryState) _then;

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoadingAttendanceHistory = null,Object? attendanceHistory = freezed,Object? attendanceHistoryError = freezed,}) {
  return _then(_HistoryState(
isLoadingAttendanceHistory: null == isLoadingAttendanceHistory ? _self.isLoadingAttendanceHistory : isLoadingAttendanceHistory // ignore: cast_nullable_to_non_nullable
as bool,attendanceHistory: freezed == attendanceHistory ? _self.attendanceHistory : attendanceHistory // ignore: cast_nullable_to_non_nullable
as AttendanceHistoryListEntity?,attendanceHistoryError: freezed == attendanceHistoryError ? _self.attendanceHistoryError : attendanceHistoryError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceHistoryListEntityCopyWith<$Res>? get attendanceHistory {
    if (_self.attendanceHistory == null) {
    return null;
  }

  return $AttendanceHistoryListEntityCopyWith<$Res>(_self.attendanceHistory!, (value) {
    return _then(_self.copyWith(attendanceHistory: value));
  });
}
}

// dart format on
