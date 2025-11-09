// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permission_submission_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PermissionSubmissionEntity {

 PermissionApplicationEntity get permission; String get message;
/// Create a copy of PermissionSubmissionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PermissionSubmissionEntityCopyWith<PermissionSubmissionEntity> get copyWith => _$PermissionSubmissionEntityCopyWithImpl<PermissionSubmissionEntity>(this as PermissionSubmissionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PermissionSubmissionEntity&&(identical(other.permission, permission) || other.permission == permission)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,permission,message);

@override
String toString() {
  return 'PermissionSubmissionEntity(permission: $permission, message: $message)';
}


}

/// @nodoc
abstract mixin class $PermissionSubmissionEntityCopyWith<$Res>  {
  factory $PermissionSubmissionEntityCopyWith(PermissionSubmissionEntity value, $Res Function(PermissionSubmissionEntity) _then) = _$PermissionSubmissionEntityCopyWithImpl;
@useResult
$Res call({
 PermissionApplicationEntity permission, String message
});


$PermissionApplicationEntityCopyWith<$Res> get permission;

}
/// @nodoc
class _$PermissionSubmissionEntityCopyWithImpl<$Res>
    implements $PermissionSubmissionEntityCopyWith<$Res> {
  _$PermissionSubmissionEntityCopyWithImpl(this._self, this._then);

  final PermissionSubmissionEntity _self;
  final $Res Function(PermissionSubmissionEntity) _then;

/// Create a copy of PermissionSubmissionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? permission = null,Object? message = null,}) {
  return _then(_self.copyWith(
permission: null == permission ? _self.permission : permission // ignore: cast_nullable_to_non_nullable
as PermissionApplicationEntity,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of PermissionSubmissionEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PermissionApplicationEntityCopyWith<$Res> get permission {
  
  return $PermissionApplicationEntityCopyWith<$Res>(_self.permission, (value) {
    return _then(_self.copyWith(permission: value));
  });
}
}


/// Adds pattern-matching-related methods to [PermissionSubmissionEntity].
extension PermissionSubmissionEntityPatterns on PermissionSubmissionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PermissionSubmissionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PermissionSubmissionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PermissionSubmissionEntity value)  $default,){
final _that = this;
switch (_that) {
case _PermissionSubmissionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PermissionSubmissionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PermissionSubmissionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PermissionApplicationEntity permission,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PermissionSubmissionEntity() when $default != null:
return $default(_that.permission,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PermissionApplicationEntity permission,  String message)  $default,) {final _that = this;
switch (_that) {
case _PermissionSubmissionEntity():
return $default(_that.permission,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PermissionApplicationEntity permission,  String message)?  $default,) {final _that = this;
switch (_that) {
case _PermissionSubmissionEntity() when $default != null:
return $default(_that.permission,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _PermissionSubmissionEntity implements PermissionSubmissionEntity {
  const _PermissionSubmissionEntity({required this.permission, required this.message});
  

@override final  PermissionApplicationEntity permission;
@override final  String message;

/// Create a copy of PermissionSubmissionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PermissionSubmissionEntityCopyWith<_PermissionSubmissionEntity> get copyWith => __$PermissionSubmissionEntityCopyWithImpl<_PermissionSubmissionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PermissionSubmissionEntity&&(identical(other.permission, permission) || other.permission == permission)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,permission,message);

@override
String toString() {
  return 'PermissionSubmissionEntity(permission: $permission, message: $message)';
}


}

/// @nodoc
abstract mixin class _$PermissionSubmissionEntityCopyWith<$Res> implements $PermissionSubmissionEntityCopyWith<$Res> {
  factory _$PermissionSubmissionEntityCopyWith(_PermissionSubmissionEntity value, $Res Function(_PermissionSubmissionEntity) _then) = __$PermissionSubmissionEntityCopyWithImpl;
@override @useResult
$Res call({
 PermissionApplicationEntity permission, String message
});


@override $PermissionApplicationEntityCopyWith<$Res> get permission;

}
/// @nodoc
class __$PermissionSubmissionEntityCopyWithImpl<$Res>
    implements _$PermissionSubmissionEntityCopyWith<$Res> {
  __$PermissionSubmissionEntityCopyWithImpl(this._self, this._then);

  final _PermissionSubmissionEntity _self;
  final $Res Function(_PermissionSubmissionEntity) _then;

/// Create a copy of PermissionSubmissionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? permission = null,Object? message = null,}) {
  return _then(_PermissionSubmissionEntity(
permission: null == permission ? _self.permission : permission // ignore: cast_nullable_to_non_nullable
as PermissionApplicationEntity,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of PermissionSubmissionEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PermissionApplicationEntityCopyWith<$Res> get permission {
  
  return $PermissionApplicationEntityCopyWith<$Res>(_self.permission, (value) {
    return _then(_self.copyWith(permission: value));
  });
}
}

// dart format on
