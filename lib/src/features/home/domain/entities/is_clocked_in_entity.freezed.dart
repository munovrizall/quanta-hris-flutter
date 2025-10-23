// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'is_clocked_in_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IsClockedInEntity {

 bool get isClockedIn;
/// Create a copy of IsClockedInEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IsClockedInEntityCopyWith<IsClockedInEntity> get copyWith => _$IsClockedInEntityCopyWithImpl<IsClockedInEntity>(this as IsClockedInEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IsClockedInEntity&&(identical(other.isClockedIn, isClockedIn) || other.isClockedIn == isClockedIn));
}


@override
int get hashCode => Object.hash(runtimeType,isClockedIn);

@override
String toString() {
  return 'IsClockedInEntity(isClockedIn: $isClockedIn)';
}


}

/// @nodoc
abstract mixin class $IsClockedInEntityCopyWith<$Res>  {
  factory $IsClockedInEntityCopyWith(IsClockedInEntity value, $Res Function(IsClockedInEntity) _then) = _$IsClockedInEntityCopyWithImpl;
@useResult
$Res call({
 bool isClockedIn
});




}
/// @nodoc
class _$IsClockedInEntityCopyWithImpl<$Res>
    implements $IsClockedInEntityCopyWith<$Res> {
  _$IsClockedInEntityCopyWithImpl(this._self, this._then);

  final IsClockedInEntity _self;
  final $Res Function(IsClockedInEntity) _then;

/// Create a copy of IsClockedInEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isClockedIn = null,}) {
  return _then(_self.copyWith(
isClockedIn: null == isClockedIn ? _self.isClockedIn : isClockedIn // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [IsClockedInEntity].
extension IsClockedInEntityPatterns on IsClockedInEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IsClockedInEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IsClockedInEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IsClockedInEntity value)  $default,){
final _that = this;
switch (_that) {
case _IsClockedInEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IsClockedInEntity value)?  $default,){
final _that = this;
switch (_that) {
case _IsClockedInEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isClockedIn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IsClockedInEntity() when $default != null:
return $default(_that.isClockedIn);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isClockedIn)  $default,) {final _that = this;
switch (_that) {
case _IsClockedInEntity():
return $default(_that.isClockedIn);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isClockedIn)?  $default,) {final _that = this;
switch (_that) {
case _IsClockedInEntity() when $default != null:
return $default(_that.isClockedIn);case _:
  return null;

}
}

}

/// @nodoc


class _IsClockedInEntity implements IsClockedInEntity {
  const _IsClockedInEntity({required this.isClockedIn});
  

@override final  bool isClockedIn;

/// Create a copy of IsClockedInEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IsClockedInEntityCopyWith<_IsClockedInEntity> get copyWith => __$IsClockedInEntityCopyWithImpl<_IsClockedInEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IsClockedInEntity&&(identical(other.isClockedIn, isClockedIn) || other.isClockedIn == isClockedIn));
}


@override
int get hashCode => Object.hash(runtimeType,isClockedIn);

@override
String toString() {
  return 'IsClockedInEntity(isClockedIn: $isClockedIn)';
}


}

/// @nodoc
abstract mixin class _$IsClockedInEntityCopyWith<$Res> implements $IsClockedInEntityCopyWith<$Res> {
  factory _$IsClockedInEntityCopyWith(_IsClockedInEntity value, $Res Function(_IsClockedInEntity) _then) = __$IsClockedInEntityCopyWithImpl;
@override @useResult
$Res call({
 bool isClockedIn
});




}
/// @nodoc
class __$IsClockedInEntityCopyWithImpl<$Res>
    implements _$IsClockedInEntityCopyWith<$Res> {
  __$IsClockedInEntityCopyWithImpl(this._self, this._then);

  final _IsClockedInEntity _self;
  final $Res Function(_IsClockedInEntity) _then;

/// Create a copy of IsClockedInEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isClockedIn = null,}) {
  return _then(_IsClockedInEntity(
isClockedIn: null == isClockedIn ? _self.isClockedIn : isClockedIn // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
