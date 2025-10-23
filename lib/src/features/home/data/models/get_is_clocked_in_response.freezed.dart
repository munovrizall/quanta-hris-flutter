// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_is_clocked_in_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetIsClockedInResponse {

@JsonKey(name: 'is_clocked_in') bool get isClockedIn;
/// Create a copy of GetIsClockedInResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetIsClockedInResponseCopyWith<GetIsClockedInResponse> get copyWith => _$GetIsClockedInResponseCopyWithImpl<GetIsClockedInResponse>(this as GetIsClockedInResponse, _$identity);

  /// Serializes this GetIsClockedInResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetIsClockedInResponse&&(identical(other.isClockedIn, isClockedIn) || other.isClockedIn == isClockedIn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isClockedIn);

@override
String toString() {
  return 'GetIsClockedInResponse(isClockedIn: $isClockedIn)';
}


}

/// @nodoc
abstract mixin class $GetIsClockedInResponseCopyWith<$Res>  {
  factory $GetIsClockedInResponseCopyWith(GetIsClockedInResponse value, $Res Function(GetIsClockedInResponse) _then) = _$GetIsClockedInResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'is_clocked_in') bool isClockedIn
});




}
/// @nodoc
class _$GetIsClockedInResponseCopyWithImpl<$Res>
    implements $GetIsClockedInResponseCopyWith<$Res> {
  _$GetIsClockedInResponseCopyWithImpl(this._self, this._then);

  final GetIsClockedInResponse _self;
  final $Res Function(GetIsClockedInResponse) _then;

/// Create a copy of GetIsClockedInResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isClockedIn = null,}) {
  return _then(_self.copyWith(
isClockedIn: null == isClockedIn ? _self.isClockedIn : isClockedIn // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [GetIsClockedInResponse].
extension GetIsClockedInResponsePatterns on GetIsClockedInResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetIsClockedInResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetIsClockedInResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetIsClockedInResponse value)  $default,){
final _that = this;
switch (_that) {
case _GetIsClockedInResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetIsClockedInResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GetIsClockedInResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'is_clocked_in')  bool isClockedIn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetIsClockedInResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'is_clocked_in')  bool isClockedIn)  $default,) {final _that = this;
switch (_that) {
case _GetIsClockedInResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'is_clocked_in')  bool isClockedIn)?  $default,) {final _that = this;
switch (_that) {
case _GetIsClockedInResponse() when $default != null:
return $default(_that.isClockedIn);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetIsClockedInResponse implements GetIsClockedInResponse {
  const _GetIsClockedInResponse({@JsonKey(name: 'is_clocked_in') required this.isClockedIn});
  factory _GetIsClockedInResponse.fromJson(Map<String, dynamic> json) => _$GetIsClockedInResponseFromJson(json);

@override@JsonKey(name: 'is_clocked_in') final  bool isClockedIn;

/// Create a copy of GetIsClockedInResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetIsClockedInResponseCopyWith<_GetIsClockedInResponse> get copyWith => __$GetIsClockedInResponseCopyWithImpl<_GetIsClockedInResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetIsClockedInResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetIsClockedInResponse&&(identical(other.isClockedIn, isClockedIn) || other.isClockedIn == isClockedIn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isClockedIn);

@override
String toString() {
  return 'GetIsClockedInResponse(isClockedIn: $isClockedIn)';
}


}

/// @nodoc
abstract mixin class _$GetIsClockedInResponseCopyWith<$Res> implements $GetIsClockedInResponseCopyWith<$Res> {
  factory _$GetIsClockedInResponseCopyWith(_GetIsClockedInResponse value, $Res Function(_GetIsClockedInResponse) _then) = __$GetIsClockedInResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'is_clocked_in') bool isClockedIn
});




}
/// @nodoc
class __$GetIsClockedInResponseCopyWithImpl<$Res>
    implements _$GetIsClockedInResponseCopyWith<$Res> {
  __$GetIsClockedInResponseCopyWithImpl(this._self, this._then);

  final _GetIsClockedInResponse _self;
  final $Res Function(_GetIsClockedInResponse) _then;

/// Create a copy of GetIsClockedInResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isClockedIn = null,}) {
  return _then(_GetIsClockedInResponse(
isClockedIn: null == isClockedIn ? _self.isClockedIn : isClockedIn // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
