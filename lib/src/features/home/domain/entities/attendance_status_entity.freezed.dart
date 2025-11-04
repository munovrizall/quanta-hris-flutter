// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_status_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AttendanceStatusEntity {

 bool get isClockedIn; bool get isClockedOut;
/// Create a copy of AttendanceStatusEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceStatusEntityCopyWith<AttendanceStatusEntity> get copyWith => _$AttendanceStatusEntityCopyWithImpl<AttendanceStatusEntity>(this as AttendanceStatusEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceStatusEntity&&(identical(other.isClockedIn, isClockedIn) || other.isClockedIn == isClockedIn)&&(identical(other.isClockedOut, isClockedOut) || other.isClockedOut == isClockedOut));
}


@override
int get hashCode => Object.hash(runtimeType,isClockedIn,isClockedOut);

@override
String toString() {
  return 'AttendanceStatusEntity(isClockedIn: $isClockedIn, isClockedOut: $isClockedOut)';
}


}

/// @nodoc
abstract mixin class $AttendanceStatusEntityCopyWith<$Res>  {
  factory $AttendanceStatusEntityCopyWith(AttendanceStatusEntity value, $Res Function(AttendanceStatusEntity) _then) = _$AttendanceStatusEntityCopyWithImpl;
@useResult
$Res call({
 bool isClockedIn, bool isClockedOut
});




}
/// @nodoc
class _$AttendanceStatusEntityCopyWithImpl<$Res>
    implements $AttendanceStatusEntityCopyWith<$Res> {
  _$AttendanceStatusEntityCopyWithImpl(this._self, this._then);

  final AttendanceStatusEntity _self;
  final $Res Function(AttendanceStatusEntity) _then;

/// Create a copy of AttendanceStatusEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isClockedIn = null,Object? isClockedOut = null,}) {
  return _then(_self.copyWith(
isClockedIn: null == isClockedIn ? _self.isClockedIn : isClockedIn // ignore: cast_nullable_to_non_nullable
as bool,isClockedOut: null == isClockedOut ? _self.isClockedOut : isClockedOut // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceStatusEntity].
extension AttendanceStatusEntityPatterns on AttendanceStatusEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceStatusEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceStatusEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceStatusEntity value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceStatusEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceStatusEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceStatusEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isClockedIn,  bool isClockedOut)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceStatusEntity() when $default != null:
return $default(_that.isClockedIn,_that.isClockedOut);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isClockedIn,  bool isClockedOut)  $default,) {final _that = this;
switch (_that) {
case _AttendanceStatusEntity():
return $default(_that.isClockedIn,_that.isClockedOut);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isClockedIn,  bool isClockedOut)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceStatusEntity() when $default != null:
return $default(_that.isClockedIn,_that.isClockedOut);case _:
  return null;

}
}

}

/// @nodoc


class _AttendanceStatusEntity implements AttendanceStatusEntity {
  const _AttendanceStatusEntity({required this.isClockedIn, required this.isClockedOut});
  

@override final  bool isClockedIn;
@override final  bool isClockedOut;

/// Create a copy of AttendanceStatusEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceStatusEntityCopyWith<_AttendanceStatusEntity> get copyWith => __$AttendanceStatusEntityCopyWithImpl<_AttendanceStatusEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceStatusEntity&&(identical(other.isClockedIn, isClockedIn) || other.isClockedIn == isClockedIn)&&(identical(other.isClockedOut, isClockedOut) || other.isClockedOut == isClockedOut));
}


@override
int get hashCode => Object.hash(runtimeType,isClockedIn,isClockedOut);

@override
String toString() {
  return 'AttendanceStatusEntity(isClockedIn: $isClockedIn, isClockedOut: $isClockedOut)';
}


}

/// @nodoc
abstract mixin class _$AttendanceStatusEntityCopyWith<$Res> implements $AttendanceStatusEntityCopyWith<$Res> {
  factory _$AttendanceStatusEntityCopyWith(_AttendanceStatusEntity value, $Res Function(_AttendanceStatusEntity) _then) = __$AttendanceStatusEntityCopyWithImpl;
@override @useResult
$Res call({
 bool isClockedIn, bool isClockedOut
});




}
/// @nodoc
class __$AttendanceStatusEntityCopyWithImpl<$Res>
    implements _$AttendanceStatusEntityCopyWith<$Res> {
  __$AttendanceStatusEntityCopyWithImpl(this._self, this._then);

  final _AttendanceStatusEntity _self;
  final $Res Function(_AttendanceStatusEntity) _then;

/// Create a copy of AttendanceStatusEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isClockedIn = null,Object? isClockedOut = null,}) {
  return _then(_AttendanceStatusEntity(
isClockedIn: null == isClockedIn ? _self.isClockedIn : isClockedIn // ignore: cast_nullable_to_non_nullable
as bool,isClockedOut: null == isClockedOut ? _self.isClockedOut : isClockedOut // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
