// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LeaveState {

// Loading indicators
 bool get isSubmitLoading; bool get isHistoryLoading;// Data hasil submit
 LeaveApplicationEntity? get submittedLeave;// Data riwayat cuti
 LeaveHistoryEntity? get leaveHistory;// Error / success message
 String? get submitError; String? get submitSuccessMessage; String? get historyError;
/// Create a copy of LeaveState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaveStateCopyWith<LeaveState> get copyWith => _$LeaveStateCopyWithImpl<LeaveState>(this as LeaveState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaveState&&(identical(other.isSubmitLoading, isSubmitLoading) || other.isSubmitLoading == isSubmitLoading)&&(identical(other.isHistoryLoading, isHistoryLoading) || other.isHistoryLoading == isHistoryLoading)&&(identical(other.submittedLeave, submittedLeave) || other.submittedLeave == submittedLeave)&&(identical(other.leaveHistory, leaveHistory) || other.leaveHistory == leaveHistory)&&(identical(other.submitError, submitError) || other.submitError == submitError)&&(identical(other.submitSuccessMessage, submitSuccessMessage) || other.submitSuccessMessage == submitSuccessMessage)&&(identical(other.historyError, historyError) || other.historyError == historyError));
}


@override
int get hashCode => Object.hash(runtimeType,isSubmitLoading,isHistoryLoading,submittedLeave,leaveHistory,submitError,submitSuccessMessage,historyError);

@override
String toString() {
  return 'LeaveState(isSubmitLoading: $isSubmitLoading, isHistoryLoading: $isHistoryLoading, submittedLeave: $submittedLeave, leaveHistory: $leaveHistory, submitError: $submitError, submitSuccessMessage: $submitSuccessMessage, historyError: $historyError)';
}


}

/// @nodoc
abstract mixin class $LeaveStateCopyWith<$Res>  {
  factory $LeaveStateCopyWith(LeaveState value, $Res Function(LeaveState) _then) = _$LeaveStateCopyWithImpl;
@useResult
$Res call({
 bool isSubmitLoading, bool isHistoryLoading, LeaveApplicationEntity? submittedLeave, LeaveHistoryEntity? leaveHistory, String? submitError, String? submitSuccessMessage, String? historyError
});


$LeaveApplicationEntityCopyWith<$Res>? get submittedLeave;$LeaveHistoryEntityCopyWith<$Res>? get leaveHistory;

}
/// @nodoc
class _$LeaveStateCopyWithImpl<$Res>
    implements $LeaveStateCopyWith<$Res> {
  _$LeaveStateCopyWithImpl(this._self, this._then);

  final LeaveState _self;
  final $Res Function(LeaveState) _then;

/// Create a copy of LeaveState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isSubmitLoading = null,Object? isHistoryLoading = null,Object? submittedLeave = freezed,Object? leaveHistory = freezed,Object? submitError = freezed,Object? submitSuccessMessage = freezed,Object? historyError = freezed,}) {
  return _then(_self.copyWith(
isSubmitLoading: null == isSubmitLoading ? _self.isSubmitLoading : isSubmitLoading // ignore: cast_nullable_to_non_nullable
as bool,isHistoryLoading: null == isHistoryLoading ? _self.isHistoryLoading : isHistoryLoading // ignore: cast_nullable_to_non_nullable
as bool,submittedLeave: freezed == submittedLeave ? _self.submittedLeave : submittedLeave // ignore: cast_nullable_to_non_nullable
as LeaveApplicationEntity?,leaveHistory: freezed == leaveHistory ? _self.leaveHistory : leaveHistory // ignore: cast_nullable_to_non_nullable
as LeaveHistoryEntity?,submitError: freezed == submitError ? _self.submitError : submitError // ignore: cast_nullable_to_non_nullable
as String?,submitSuccessMessage: freezed == submitSuccessMessage ? _self.submitSuccessMessage : submitSuccessMessage // ignore: cast_nullable_to_non_nullable
as String?,historyError: freezed == historyError ? _self.historyError : historyError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of LeaveState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LeaveApplicationEntityCopyWith<$Res>? get submittedLeave {
    if (_self.submittedLeave == null) {
    return null;
  }

  return $LeaveApplicationEntityCopyWith<$Res>(_self.submittedLeave!, (value) {
    return _then(_self.copyWith(submittedLeave: value));
  });
}/// Create a copy of LeaveState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LeaveHistoryEntityCopyWith<$Res>? get leaveHistory {
    if (_self.leaveHistory == null) {
    return null;
  }

  return $LeaveHistoryEntityCopyWith<$Res>(_self.leaveHistory!, (value) {
    return _then(_self.copyWith(leaveHistory: value));
  });
}
}


/// Adds pattern-matching-related methods to [LeaveState].
extension LeaveStatePatterns on LeaveState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaveState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaveState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaveState value)  $default,){
final _that = this;
switch (_that) {
case _LeaveState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaveState value)?  $default,){
final _that = this;
switch (_that) {
case _LeaveState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isSubmitLoading,  bool isHistoryLoading,  LeaveApplicationEntity? submittedLeave,  LeaveHistoryEntity? leaveHistory,  String? submitError,  String? submitSuccessMessage,  String? historyError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaveState() when $default != null:
return $default(_that.isSubmitLoading,_that.isHistoryLoading,_that.submittedLeave,_that.leaveHistory,_that.submitError,_that.submitSuccessMessage,_that.historyError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isSubmitLoading,  bool isHistoryLoading,  LeaveApplicationEntity? submittedLeave,  LeaveHistoryEntity? leaveHistory,  String? submitError,  String? submitSuccessMessage,  String? historyError)  $default,) {final _that = this;
switch (_that) {
case _LeaveState():
return $default(_that.isSubmitLoading,_that.isHistoryLoading,_that.submittedLeave,_that.leaveHistory,_that.submitError,_that.submitSuccessMessage,_that.historyError);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isSubmitLoading,  bool isHistoryLoading,  LeaveApplicationEntity? submittedLeave,  LeaveHistoryEntity? leaveHistory,  String? submitError,  String? submitSuccessMessage,  String? historyError)?  $default,) {final _that = this;
switch (_that) {
case _LeaveState() when $default != null:
return $default(_that.isSubmitLoading,_that.isHistoryLoading,_that.submittedLeave,_that.leaveHistory,_that.submitError,_that.submitSuccessMessage,_that.historyError);case _:
  return null;

}
}

}

/// @nodoc


class _LeaveState extends LeaveState {
  const _LeaveState({this.isSubmitLoading = false, this.isHistoryLoading = false, this.submittedLeave, this.leaveHistory, this.submitError, this.submitSuccessMessage, this.historyError}): super._();
  

// Loading indicators
@override@JsonKey() final  bool isSubmitLoading;
@override@JsonKey() final  bool isHistoryLoading;
// Data hasil submit
@override final  LeaveApplicationEntity? submittedLeave;
// Data riwayat cuti
@override final  LeaveHistoryEntity? leaveHistory;
// Error / success message
@override final  String? submitError;
@override final  String? submitSuccessMessage;
@override final  String? historyError;

/// Create a copy of LeaveState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaveStateCopyWith<_LeaveState> get copyWith => __$LeaveStateCopyWithImpl<_LeaveState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaveState&&(identical(other.isSubmitLoading, isSubmitLoading) || other.isSubmitLoading == isSubmitLoading)&&(identical(other.isHistoryLoading, isHistoryLoading) || other.isHistoryLoading == isHistoryLoading)&&(identical(other.submittedLeave, submittedLeave) || other.submittedLeave == submittedLeave)&&(identical(other.leaveHistory, leaveHistory) || other.leaveHistory == leaveHistory)&&(identical(other.submitError, submitError) || other.submitError == submitError)&&(identical(other.submitSuccessMessage, submitSuccessMessage) || other.submitSuccessMessage == submitSuccessMessage)&&(identical(other.historyError, historyError) || other.historyError == historyError));
}


@override
int get hashCode => Object.hash(runtimeType,isSubmitLoading,isHistoryLoading,submittedLeave,leaveHistory,submitError,submitSuccessMessage,historyError);

@override
String toString() {
  return 'LeaveState(isSubmitLoading: $isSubmitLoading, isHistoryLoading: $isHistoryLoading, submittedLeave: $submittedLeave, leaveHistory: $leaveHistory, submitError: $submitError, submitSuccessMessage: $submitSuccessMessage, historyError: $historyError)';
}


}

/// @nodoc
abstract mixin class _$LeaveStateCopyWith<$Res> implements $LeaveStateCopyWith<$Res> {
  factory _$LeaveStateCopyWith(_LeaveState value, $Res Function(_LeaveState) _then) = __$LeaveStateCopyWithImpl;
@override @useResult
$Res call({
 bool isSubmitLoading, bool isHistoryLoading, LeaveApplicationEntity? submittedLeave, LeaveHistoryEntity? leaveHistory, String? submitError, String? submitSuccessMessage, String? historyError
});


@override $LeaveApplicationEntityCopyWith<$Res>? get submittedLeave;@override $LeaveHistoryEntityCopyWith<$Res>? get leaveHistory;

}
/// @nodoc
class __$LeaveStateCopyWithImpl<$Res>
    implements _$LeaveStateCopyWith<$Res> {
  __$LeaveStateCopyWithImpl(this._self, this._then);

  final _LeaveState _self;
  final $Res Function(_LeaveState) _then;

/// Create a copy of LeaveState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isSubmitLoading = null,Object? isHistoryLoading = null,Object? submittedLeave = freezed,Object? leaveHistory = freezed,Object? submitError = freezed,Object? submitSuccessMessage = freezed,Object? historyError = freezed,}) {
  return _then(_LeaveState(
isSubmitLoading: null == isSubmitLoading ? _self.isSubmitLoading : isSubmitLoading // ignore: cast_nullable_to_non_nullable
as bool,isHistoryLoading: null == isHistoryLoading ? _self.isHistoryLoading : isHistoryLoading // ignore: cast_nullable_to_non_nullable
as bool,submittedLeave: freezed == submittedLeave ? _self.submittedLeave : submittedLeave // ignore: cast_nullable_to_non_nullable
as LeaveApplicationEntity?,leaveHistory: freezed == leaveHistory ? _self.leaveHistory : leaveHistory // ignore: cast_nullable_to_non_nullable
as LeaveHistoryEntity?,submitError: freezed == submitError ? _self.submitError : submitError // ignore: cast_nullable_to_non_nullable
as String?,submitSuccessMessage: freezed == submitSuccessMessage ? _self.submitSuccessMessage : submitSuccessMessage // ignore: cast_nullable_to_non_nullable
as String?,historyError: freezed == historyError ? _self.historyError : historyError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of LeaveState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LeaveApplicationEntityCopyWith<$Res>? get submittedLeave {
    if (_self.submittedLeave == null) {
    return null;
  }

  return $LeaveApplicationEntityCopyWith<$Res>(_self.submittedLeave!, (value) {
    return _then(_self.copyWith(submittedLeave: value));
  });
}/// Create a copy of LeaveState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LeaveHistoryEntityCopyWith<$Res>? get leaveHistory {
    if (_self.leaveHistory == null) {
    return null;
  }

  return $LeaveHistoryEntityCopyWith<$Res>(_self.leaveHistory!, (value) {
    return _then(_self.copyWith(leaveHistory: value));
  });
}
}

// dart format on
