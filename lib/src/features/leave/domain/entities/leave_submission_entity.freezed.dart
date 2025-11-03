// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_submission_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LeaveSubmissionEntity {

 LeaveApplicationEntity get leave; String get message;
/// Create a copy of LeaveSubmissionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaveSubmissionEntityCopyWith<LeaveSubmissionEntity> get copyWith => _$LeaveSubmissionEntityCopyWithImpl<LeaveSubmissionEntity>(this as LeaveSubmissionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaveSubmissionEntity&&(identical(other.leave, leave) || other.leave == leave)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,leave,message);

@override
String toString() {
  return 'LeaveSubmissionEntity(leave: $leave, message: $message)';
}


}

/// @nodoc
abstract mixin class $LeaveSubmissionEntityCopyWith<$Res>  {
  factory $LeaveSubmissionEntityCopyWith(LeaveSubmissionEntity value, $Res Function(LeaveSubmissionEntity) _then) = _$LeaveSubmissionEntityCopyWithImpl;
@useResult
$Res call({
 LeaveApplicationEntity leave, String message
});


$LeaveApplicationEntityCopyWith<$Res> get leave;

}
/// @nodoc
class _$LeaveSubmissionEntityCopyWithImpl<$Res>
    implements $LeaveSubmissionEntityCopyWith<$Res> {
  _$LeaveSubmissionEntityCopyWithImpl(this._self, this._then);

  final LeaveSubmissionEntity _self;
  final $Res Function(LeaveSubmissionEntity) _then;

/// Create a copy of LeaveSubmissionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? leave = null,Object? message = null,}) {
  return _then(_self.copyWith(
leave: null == leave ? _self.leave : leave // ignore: cast_nullable_to_non_nullable
as LeaveApplicationEntity,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of LeaveSubmissionEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LeaveApplicationEntityCopyWith<$Res> get leave {
  
  return $LeaveApplicationEntityCopyWith<$Res>(_self.leave, (value) {
    return _then(_self.copyWith(leave: value));
  });
}
}


/// Adds pattern-matching-related methods to [LeaveSubmissionEntity].
extension LeaveSubmissionEntityPatterns on LeaveSubmissionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaveSubmissionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaveSubmissionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaveSubmissionEntity value)  $default,){
final _that = this;
switch (_that) {
case _LeaveSubmissionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaveSubmissionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _LeaveSubmissionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LeaveApplicationEntity leave,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaveSubmissionEntity() when $default != null:
return $default(_that.leave,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LeaveApplicationEntity leave,  String message)  $default,) {final _that = this;
switch (_that) {
case _LeaveSubmissionEntity():
return $default(_that.leave,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LeaveApplicationEntity leave,  String message)?  $default,) {final _that = this;
switch (_that) {
case _LeaveSubmissionEntity() when $default != null:
return $default(_that.leave,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _LeaveSubmissionEntity implements LeaveSubmissionEntity {
  const _LeaveSubmissionEntity({required this.leave, required this.message});
  

@override final  LeaveApplicationEntity leave;
@override final  String message;

/// Create a copy of LeaveSubmissionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaveSubmissionEntityCopyWith<_LeaveSubmissionEntity> get copyWith => __$LeaveSubmissionEntityCopyWithImpl<_LeaveSubmissionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaveSubmissionEntity&&(identical(other.leave, leave) || other.leave == leave)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,leave,message);

@override
String toString() {
  return 'LeaveSubmissionEntity(leave: $leave, message: $message)';
}


}

/// @nodoc
abstract mixin class _$LeaveSubmissionEntityCopyWith<$Res> implements $LeaveSubmissionEntityCopyWith<$Res> {
  factory _$LeaveSubmissionEntityCopyWith(_LeaveSubmissionEntity value, $Res Function(_LeaveSubmissionEntity) _then) = __$LeaveSubmissionEntityCopyWithImpl;
@override @useResult
$Res call({
 LeaveApplicationEntity leave, String message
});


@override $LeaveApplicationEntityCopyWith<$Res> get leave;

}
/// @nodoc
class __$LeaveSubmissionEntityCopyWithImpl<$Res>
    implements _$LeaveSubmissionEntityCopyWith<$Res> {
  __$LeaveSubmissionEntityCopyWithImpl(this._self, this._then);

  final _LeaveSubmissionEntity _self;
  final $Res Function(_LeaveSubmissionEntity) _then;

/// Create a copy of LeaveSubmissionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? leave = null,Object? message = null,}) {
  return _then(_LeaveSubmissionEntity(
leave: null == leave ? _self.leave : leave // ignore: cast_nullable_to_non_nullable
as LeaveApplicationEntity,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of LeaveSubmissionEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LeaveApplicationEntityCopyWith<$Res> get leave {
  
  return $LeaveApplicationEntityCopyWith<$Res>(_self.leave, (value) {
    return _then(_self.copyWith(leave: value));
  });
}
}

// dart format on
