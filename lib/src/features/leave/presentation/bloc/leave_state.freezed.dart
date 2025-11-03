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
 bool get isSubmitLoading;// Data hasil submit
 LeaveApplicationEntity? get submittedLeave;// Error / success message
 String? get submitError; String? get submitSuccessMessage;
/// Create a copy of LeaveState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaveStateCopyWith<LeaveState> get copyWith => _$LeaveStateCopyWithImpl<LeaveState>(this as LeaveState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaveState&&(identical(other.isSubmitLoading, isSubmitLoading) || other.isSubmitLoading == isSubmitLoading)&&(identical(other.submittedLeave, submittedLeave) || other.submittedLeave == submittedLeave)&&(identical(other.submitError, submitError) || other.submitError == submitError)&&(identical(other.submitSuccessMessage, submitSuccessMessage) || other.submitSuccessMessage == submitSuccessMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isSubmitLoading,submittedLeave,submitError,submitSuccessMessage);

@override
String toString() {
  return 'LeaveState(isSubmitLoading: $isSubmitLoading, submittedLeave: $submittedLeave, submitError: $submitError, submitSuccessMessage: $submitSuccessMessage)';
}


}

/// @nodoc
abstract mixin class $LeaveStateCopyWith<$Res>  {
  factory $LeaveStateCopyWith(LeaveState value, $Res Function(LeaveState) _then) = _$LeaveStateCopyWithImpl;
@useResult
$Res call({
 bool isSubmitLoading, LeaveApplicationEntity? submittedLeave, String? submitError, String? submitSuccessMessage
});


$LeaveApplicationEntityCopyWith<$Res>? get submittedLeave;

}
/// @nodoc
class _$LeaveStateCopyWithImpl<$Res>
    implements $LeaveStateCopyWith<$Res> {
  _$LeaveStateCopyWithImpl(this._self, this._then);

  final LeaveState _self;
  final $Res Function(LeaveState) _then;

/// Create a copy of LeaveState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isSubmitLoading = null,Object? submittedLeave = freezed,Object? submitError = freezed,Object? submitSuccessMessage = freezed,}) {
  return _then(_self.copyWith(
isSubmitLoading: null == isSubmitLoading ? _self.isSubmitLoading : isSubmitLoading // ignore: cast_nullable_to_non_nullable
as bool,submittedLeave: freezed == submittedLeave ? _self.submittedLeave : submittedLeave // ignore: cast_nullable_to_non_nullable
as LeaveApplicationEntity?,submitError: freezed == submitError ? _self.submitError : submitError // ignore: cast_nullable_to_non_nullable
as String?,submitSuccessMessage: freezed == submitSuccessMessage ? _self.submitSuccessMessage : submitSuccessMessage // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isSubmitLoading,  LeaveApplicationEntity? submittedLeave,  String? submitError,  String? submitSuccessMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaveState() when $default != null:
return $default(_that.isSubmitLoading,_that.submittedLeave,_that.submitError,_that.submitSuccessMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isSubmitLoading,  LeaveApplicationEntity? submittedLeave,  String? submitError,  String? submitSuccessMessage)  $default,) {final _that = this;
switch (_that) {
case _LeaveState():
return $default(_that.isSubmitLoading,_that.submittedLeave,_that.submitError,_that.submitSuccessMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isSubmitLoading,  LeaveApplicationEntity? submittedLeave,  String? submitError,  String? submitSuccessMessage)?  $default,) {final _that = this;
switch (_that) {
case _LeaveState() when $default != null:
return $default(_that.isSubmitLoading,_that.submittedLeave,_that.submitError,_that.submitSuccessMessage);case _:
  return null;

}
}

}

/// @nodoc


class _LeaveState extends LeaveState {
  const _LeaveState({this.isSubmitLoading = false, this.submittedLeave, this.submitError, this.submitSuccessMessage}): super._();
  

// Loading indicators
@override@JsonKey() final  bool isSubmitLoading;
// Data hasil submit
@override final  LeaveApplicationEntity? submittedLeave;
// Error / success message
@override final  String? submitError;
@override final  String? submitSuccessMessage;

/// Create a copy of LeaveState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaveStateCopyWith<_LeaveState> get copyWith => __$LeaveStateCopyWithImpl<_LeaveState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaveState&&(identical(other.isSubmitLoading, isSubmitLoading) || other.isSubmitLoading == isSubmitLoading)&&(identical(other.submittedLeave, submittedLeave) || other.submittedLeave == submittedLeave)&&(identical(other.submitError, submitError) || other.submitError == submitError)&&(identical(other.submitSuccessMessage, submitSuccessMessage) || other.submitSuccessMessage == submitSuccessMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isSubmitLoading,submittedLeave,submitError,submitSuccessMessage);

@override
String toString() {
  return 'LeaveState(isSubmitLoading: $isSubmitLoading, submittedLeave: $submittedLeave, submitError: $submitError, submitSuccessMessage: $submitSuccessMessage)';
}


}

/// @nodoc
abstract mixin class _$LeaveStateCopyWith<$Res> implements $LeaveStateCopyWith<$Res> {
  factory _$LeaveStateCopyWith(_LeaveState value, $Res Function(_LeaveState) _then) = __$LeaveStateCopyWithImpl;
@override @useResult
$Res call({
 bool isSubmitLoading, LeaveApplicationEntity? submittedLeave, String? submitError, String? submitSuccessMessage
});


@override $LeaveApplicationEntityCopyWith<$Res>? get submittedLeave;

}
/// @nodoc
class __$LeaveStateCopyWithImpl<$Res>
    implements _$LeaveStateCopyWith<$Res> {
  __$LeaveStateCopyWithImpl(this._self, this._then);

  final _LeaveState _self;
  final $Res Function(_LeaveState) _then;

/// Create a copy of LeaveState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isSubmitLoading = null,Object? submittedLeave = freezed,Object? submitError = freezed,Object? submitSuccessMessage = freezed,}) {
  return _then(_LeaveState(
isSubmitLoading: null == isSubmitLoading ? _self.isSubmitLoading : isSubmitLoading // ignore: cast_nullable_to_non_nullable
as bool,submittedLeave: freezed == submittedLeave ? _self.submittedLeave : submittedLeave // ignore: cast_nullable_to_non_nullable
as LeaveApplicationEntity?,submitError: freezed == submitError ? _self.submitError : submitError // ignore: cast_nullable_to_non_nullable
as String?,submitSuccessMessage: freezed == submitSuccessMessage ? _self.submitSuccessMessage : submitSuccessMessage // ignore: cast_nullable_to_non_nullable
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
}
}

// dart format on
