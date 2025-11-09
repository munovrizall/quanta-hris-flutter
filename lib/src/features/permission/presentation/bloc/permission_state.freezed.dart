// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permission_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PermissionState {

 bool get isHistoryLoading; bool get isSubmitLoading; PermissionHistoryEntity? get history; PermissionApplicationEntity? get submittedPermission; String? get historyError; String? get submitError; String? get submitSuccessMessage;
/// Create a copy of PermissionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PermissionStateCopyWith<PermissionState> get copyWith => _$PermissionStateCopyWithImpl<PermissionState>(this as PermissionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PermissionState&&(identical(other.isHistoryLoading, isHistoryLoading) || other.isHistoryLoading == isHistoryLoading)&&(identical(other.isSubmitLoading, isSubmitLoading) || other.isSubmitLoading == isSubmitLoading)&&(identical(other.history, history) || other.history == history)&&(identical(other.submittedPermission, submittedPermission) || other.submittedPermission == submittedPermission)&&(identical(other.historyError, historyError) || other.historyError == historyError)&&(identical(other.submitError, submitError) || other.submitError == submitError)&&(identical(other.submitSuccessMessage, submitSuccessMessage) || other.submitSuccessMessage == submitSuccessMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isHistoryLoading,isSubmitLoading,history,submittedPermission,historyError,submitError,submitSuccessMessage);

@override
String toString() {
  return 'PermissionState(isHistoryLoading: $isHistoryLoading, isSubmitLoading: $isSubmitLoading, history: $history, submittedPermission: $submittedPermission, historyError: $historyError, submitError: $submitError, submitSuccessMessage: $submitSuccessMessage)';
}


}

/// @nodoc
abstract mixin class $PermissionStateCopyWith<$Res>  {
  factory $PermissionStateCopyWith(PermissionState value, $Res Function(PermissionState) _then) = _$PermissionStateCopyWithImpl;
@useResult
$Res call({
 bool isHistoryLoading, bool isSubmitLoading, PermissionHistoryEntity? history, PermissionApplicationEntity? submittedPermission, String? historyError, String? submitError, String? submitSuccessMessage
});


$PermissionHistoryEntityCopyWith<$Res>? get history;$PermissionApplicationEntityCopyWith<$Res>? get submittedPermission;

}
/// @nodoc
class _$PermissionStateCopyWithImpl<$Res>
    implements $PermissionStateCopyWith<$Res> {
  _$PermissionStateCopyWithImpl(this._self, this._then);

  final PermissionState _self;
  final $Res Function(PermissionState) _then;

/// Create a copy of PermissionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isHistoryLoading = null,Object? isSubmitLoading = null,Object? history = freezed,Object? submittedPermission = freezed,Object? historyError = freezed,Object? submitError = freezed,Object? submitSuccessMessage = freezed,}) {
  return _then(_self.copyWith(
isHistoryLoading: null == isHistoryLoading ? _self.isHistoryLoading : isHistoryLoading // ignore: cast_nullable_to_non_nullable
as bool,isSubmitLoading: null == isSubmitLoading ? _self.isSubmitLoading : isSubmitLoading // ignore: cast_nullable_to_non_nullable
as bool,history: freezed == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as PermissionHistoryEntity?,submittedPermission: freezed == submittedPermission ? _self.submittedPermission : submittedPermission // ignore: cast_nullable_to_non_nullable
as PermissionApplicationEntity?,historyError: freezed == historyError ? _self.historyError : historyError // ignore: cast_nullable_to_non_nullable
as String?,submitError: freezed == submitError ? _self.submitError : submitError // ignore: cast_nullable_to_non_nullable
as String?,submitSuccessMessage: freezed == submitSuccessMessage ? _self.submitSuccessMessage : submitSuccessMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of PermissionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PermissionHistoryEntityCopyWith<$Res>? get history {
    if (_self.history == null) {
    return null;
  }

  return $PermissionHistoryEntityCopyWith<$Res>(_self.history!, (value) {
    return _then(_self.copyWith(history: value));
  });
}/// Create a copy of PermissionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PermissionApplicationEntityCopyWith<$Res>? get submittedPermission {
    if (_self.submittedPermission == null) {
    return null;
  }

  return $PermissionApplicationEntityCopyWith<$Res>(_self.submittedPermission!, (value) {
    return _then(_self.copyWith(submittedPermission: value));
  });
}
}


/// Adds pattern-matching-related methods to [PermissionState].
extension PermissionStatePatterns on PermissionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PermissionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PermissionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PermissionState value)  $default,){
final _that = this;
switch (_that) {
case _PermissionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PermissionState value)?  $default,){
final _that = this;
switch (_that) {
case _PermissionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isHistoryLoading,  bool isSubmitLoading,  PermissionHistoryEntity? history,  PermissionApplicationEntity? submittedPermission,  String? historyError,  String? submitError,  String? submitSuccessMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PermissionState() when $default != null:
return $default(_that.isHistoryLoading,_that.isSubmitLoading,_that.history,_that.submittedPermission,_that.historyError,_that.submitError,_that.submitSuccessMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isHistoryLoading,  bool isSubmitLoading,  PermissionHistoryEntity? history,  PermissionApplicationEntity? submittedPermission,  String? historyError,  String? submitError,  String? submitSuccessMessage)  $default,) {final _that = this;
switch (_that) {
case _PermissionState():
return $default(_that.isHistoryLoading,_that.isSubmitLoading,_that.history,_that.submittedPermission,_that.historyError,_that.submitError,_that.submitSuccessMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isHistoryLoading,  bool isSubmitLoading,  PermissionHistoryEntity? history,  PermissionApplicationEntity? submittedPermission,  String? historyError,  String? submitError,  String? submitSuccessMessage)?  $default,) {final _that = this;
switch (_that) {
case _PermissionState() when $default != null:
return $default(_that.isHistoryLoading,_that.isSubmitLoading,_that.history,_that.submittedPermission,_that.historyError,_that.submitError,_that.submitSuccessMessage);case _:
  return null;

}
}

}

/// @nodoc


class _PermissionState implements PermissionState {
  const _PermissionState({this.isHistoryLoading = false, this.isSubmitLoading = false, this.history, this.submittedPermission, this.historyError, this.submitError, this.submitSuccessMessage});
  

@override@JsonKey() final  bool isHistoryLoading;
@override@JsonKey() final  bool isSubmitLoading;
@override final  PermissionHistoryEntity? history;
@override final  PermissionApplicationEntity? submittedPermission;
@override final  String? historyError;
@override final  String? submitError;
@override final  String? submitSuccessMessage;

/// Create a copy of PermissionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PermissionStateCopyWith<_PermissionState> get copyWith => __$PermissionStateCopyWithImpl<_PermissionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PermissionState&&(identical(other.isHistoryLoading, isHistoryLoading) || other.isHistoryLoading == isHistoryLoading)&&(identical(other.isSubmitLoading, isSubmitLoading) || other.isSubmitLoading == isSubmitLoading)&&(identical(other.history, history) || other.history == history)&&(identical(other.submittedPermission, submittedPermission) || other.submittedPermission == submittedPermission)&&(identical(other.historyError, historyError) || other.historyError == historyError)&&(identical(other.submitError, submitError) || other.submitError == submitError)&&(identical(other.submitSuccessMessage, submitSuccessMessage) || other.submitSuccessMessage == submitSuccessMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isHistoryLoading,isSubmitLoading,history,submittedPermission,historyError,submitError,submitSuccessMessage);

@override
String toString() {
  return 'PermissionState(isHistoryLoading: $isHistoryLoading, isSubmitLoading: $isSubmitLoading, history: $history, submittedPermission: $submittedPermission, historyError: $historyError, submitError: $submitError, submitSuccessMessage: $submitSuccessMessage)';
}


}

/// @nodoc
abstract mixin class _$PermissionStateCopyWith<$Res> implements $PermissionStateCopyWith<$Res> {
  factory _$PermissionStateCopyWith(_PermissionState value, $Res Function(_PermissionState) _then) = __$PermissionStateCopyWithImpl;
@override @useResult
$Res call({
 bool isHistoryLoading, bool isSubmitLoading, PermissionHistoryEntity? history, PermissionApplicationEntity? submittedPermission, String? historyError, String? submitError, String? submitSuccessMessage
});


@override $PermissionHistoryEntityCopyWith<$Res>? get history;@override $PermissionApplicationEntityCopyWith<$Res>? get submittedPermission;

}
/// @nodoc
class __$PermissionStateCopyWithImpl<$Res>
    implements _$PermissionStateCopyWith<$Res> {
  __$PermissionStateCopyWithImpl(this._self, this._then);

  final _PermissionState _self;
  final $Res Function(_PermissionState) _then;

/// Create a copy of PermissionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isHistoryLoading = null,Object? isSubmitLoading = null,Object? history = freezed,Object? submittedPermission = freezed,Object? historyError = freezed,Object? submitError = freezed,Object? submitSuccessMessage = freezed,}) {
  return _then(_PermissionState(
isHistoryLoading: null == isHistoryLoading ? _self.isHistoryLoading : isHistoryLoading // ignore: cast_nullable_to_non_nullable
as bool,isSubmitLoading: null == isSubmitLoading ? _self.isSubmitLoading : isSubmitLoading // ignore: cast_nullable_to_non_nullable
as bool,history: freezed == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as PermissionHistoryEntity?,submittedPermission: freezed == submittedPermission ? _self.submittedPermission : submittedPermission // ignore: cast_nullable_to_non_nullable
as PermissionApplicationEntity?,historyError: freezed == historyError ? _self.historyError : historyError // ignore: cast_nullable_to_non_nullable
as String?,submitError: freezed == submitError ? _self.submitError : submitError // ignore: cast_nullable_to_non_nullable
as String?,submitSuccessMessage: freezed == submitSuccessMessage ? _self.submitSuccessMessage : submitSuccessMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of PermissionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PermissionHistoryEntityCopyWith<$Res>? get history {
    if (_self.history == null) {
    return null;
  }

  return $PermissionHistoryEntityCopyWith<$Res>(_self.history!, (value) {
    return _then(_self.copyWith(history: value));
  });
}/// Create a copy of PermissionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PermissionApplicationEntityCopyWith<$Res>? get submittedPermission {
    if (_self.submittedPermission == null) {
    return null;
  }

  return $PermissionApplicationEntityCopyWith<$Res>(_self.submittedPermission!, (value) {
    return _then(_self.copyWith(submittedPermission: value));
  });
}
}

// dart format on
