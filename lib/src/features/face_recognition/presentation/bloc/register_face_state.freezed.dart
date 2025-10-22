// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_face_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegisterFaceState {

 UserEntity? get registeredFaceData; bool get isRegisterFaceLoading; String? get registerFaceError;
/// Create a copy of RegisterFaceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterFaceStateCopyWith<RegisterFaceState> get copyWith => _$RegisterFaceStateCopyWithImpl<RegisterFaceState>(this as RegisterFaceState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterFaceState&&(identical(other.registeredFaceData, registeredFaceData) || other.registeredFaceData == registeredFaceData)&&(identical(other.isRegisterFaceLoading, isRegisterFaceLoading) || other.isRegisterFaceLoading == isRegisterFaceLoading)&&(identical(other.registerFaceError, registerFaceError) || other.registerFaceError == registerFaceError));
}


@override
int get hashCode => Object.hash(runtimeType,registeredFaceData,isRegisterFaceLoading,registerFaceError);

@override
String toString() {
  return 'RegisterFaceState(registeredFaceData: $registeredFaceData, isRegisterFaceLoading: $isRegisterFaceLoading, registerFaceError: $registerFaceError)';
}


}

/// @nodoc
abstract mixin class $RegisterFaceStateCopyWith<$Res>  {
  factory $RegisterFaceStateCopyWith(RegisterFaceState value, $Res Function(RegisterFaceState) _then) = _$RegisterFaceStateCopyWithImpl;
@useResult
$Res call({
 UserEntity? registeredFaceData, bool isRegisterFaceLoading, String? registerFaceError
});


$UserEntityCopyWith<$Res>? get registeredFaceData;

}
/// @nodoc
class _$RegisterFaceStateCopyWithImpl<$Res>
    implements $RegisterFaceStateCopyWith<$Res> {
  _$RegisterFaceStateCopyWithImpl(this._self, this._then);

  final RegisterFaceState _self;
  final $Res Function(RegisterFaceState) _then;

/// Create a copy of RegisterFaceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? registeredFaceData = freezed,Object? isRegisterFaceLoading = null,Object? registerFaceError = freezed,}) {
  return _then(_self.copyWith(
registeredFaceData: freezed == registeredFaceData ? _self.registeredFaceData : registeredFaceData // ignore: cast_nullable_to_non_nullable
as UserEntity?,isRegisterFaceLoading: null == isRegisterFaceLoading ? _self.isRegisterFaceLoading : isRegisterFaceLoading // ignore: cast_nullable_to_non_nullable
as bool,registerFaceError: freezed == registerFaceError ? _self.registerFaceError : registerFaceError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of RegisterFaceState
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
}
}


/// Adds pattern-matching-related methods to [RegisterFaceState].
extension RegisterFaceStatePatterns on RegisterFaceState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterFaceState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterFaceState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterFaceState value)  $default,){
final _that = this;
switch (_that) {
case _RegisterFaceState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterFaceState value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterFaceState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserEntity? registeredFaceData,  bool isRegisterFaceLoading,  String? registerFaceError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterFaceState() when $default != null:
return $default(_that.registeredFaceData,_that.isRegisterFaceLoading,_that.registerFaceError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserEntity? registeredFaceData,  bool isRegisterFaceLoading,  String? registerFaceError)  $default,) {final _that = this;
switch (_that) {
case _RegisterFaceState():
return $default(_that.registeredFaceData,_that.isRegisterFaceLoading,_that.registerFaceError);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserEntity? registeredFaceData,  bool isRegisterFaceLoading,  String? registerFaceError)?  $default,) {final _that = this;
switch (_that) {
case _RegisterFaceState() when $default != null:
return $default(_that.registeredFaceData,_that.isRegisterFaceLoading,_that.registerFaceError);case _:
  return null;

}
}

}

/// @nodoc


class _RegisterFaceState extends RegisterFaceState {
  const _RegisterFaceState({this.registeredFaceData = null, this.isRegisterFaceLoading = false, this.registerFaceError = null}): super._();
  

@override@JsonKey() final  UserEntity? registeredFaceData;
@override@JsonKey() final  bool isRegisterFaceLoading;
@override@JsonKey() final  String? registerFaceError;

/// Create a copy of RegisterFaceState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterFaceStateCopyWith<_RegisterFaceState> get copyWith => __$RegisterFaceStateCopyWithImpl<_RegisterFaceState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterFaceState&&(identical(other.registeredFaceData, registeredFaceData) || other.registeredFaceData == registeredFaceData)&&(identical(other.isRegisterFaceLoading, isRegisterFaceLoading) || other.isRegisterFaceLoading == isRegisterFaceLoading)&&(identical(other.registerFaceError, registerFaceError) || other.registerFaceError == registerFaceError));
}


@override
int get hashCode => Object.hash(runtimeType,registeredFaceData,isRegisterFaceLoading,registerFaceError);

@override
String toString() {
  return 'RegisterFaceState(registeredFaceData: $registeredFaceData, isRegisterFaceLoading: $isRegisterFaceLoading, registerFaceError: $registerFaceError)';
}


}

/// @nodoc
abstract mixin class _$RegisterFaceStateCopyWith<$Res> implements $RegisterFaceStateCopyWith<$Res> {
  factory _$RegisterFaceStateCopyWith(_RegisterFaceState value, $Res Function(_RegisterFaceState) _then) = __$RegisterFaceStateCopyWithImpl;
@override @useResult
$Res call({
 UserEntity? registeredFaceData, bool isRegisterFaceLoading, String? registerFaceError
});


@override $UserEntityCopyWith<$Res>? get registeredFaceData;

}
/// @nodoc
class __$RegisterFaceStateCopyWithImpl<$Res>
    implements _$RegisterFaceStateCopyWith<$Res> {
  __$RegisterFaceStateCopyWithImpl(this._self, this._then);

  final _RegisterFaceState _self;
  final $Res Function(_RegisterFaceState) _then;

/// Create a copy of RegisterFaceState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? registeredFaceData = freezed,Object? isRegisterFaceLoading = null,Object? registerFaceError = freezed,}) {
  return _then(_RegisterFaceState(
registeredFaceData: freezed == registeredFaceData ? _self.registeredFaceData : registeredFaceData // ignore: cast_nullable_to_non_nullable
as UserEntity?,isRegisterFaceLoading: null == isRegisterFaceLoading ? _self.isRegisterFaceLoading : isRegisterFaceLoading // ignore: cast_nullable_to_non_nullable
as bool,registerFaceError: freezed == registerFaceError ? _self.registerFaceError : registerFaceError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of RegisterFaceState
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
}
}

// dart format on
