// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_power_state_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostPowerStateRequest {

@JsonKey(name: 'power_state') bool get powerState;
/// Create a copy of PostPowerStateRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostPowerStateRequestCopyWith<PostPowerStateRequest> get copyWith => _$PostPowerStateRequestCopyWithImpl<PostPowerStateRequest>(this as PostPowerStateRequest, _$identity);

  /// Serializes this PostPowerStateRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostPowerStateRequest&&(identical(other.powerState, powerState) || other.powerState == powerState));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,powerState);

@override
String toString() {
  return 'PostPowerStateRequest(powerState: $powerState)';
}


}

/// @nodoc
abstract mixin class $PostPowerStateRequestCopyWith<$Res>  {
  factory $PostPowerStateRequestCopyWith(PostPowerStateRequest value, $Res Function(PostPowerStateRequest) _then) = _$PostPowerStateRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'power_state') bool powerState
});




}
/// @nodoc
class _$PostPowerStateRequestCopyWithImpl<$Res>
    implements $PostPowerStateRequestCopyWith<$Res> {
  _$PostPowerStateRequestCopyWithImpl(this._self, this._then);

  final PostPowerStateRequest _self;
  final $Res Function(PostPowerStateRequest) _then;

/// Create a copy of PostPowerStateRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? powerState = null,}) {
  return _then(_self.copyWith(
powerState: null == powerState ? _self.powerState : powerState // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PostPowerStateRequest].
extension PostPowerStateRequestPatterns on PostPowerStateRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostPowerStateRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostPowerStateRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostPowerStateRequest value)  $default,){
final _that = this;
switch (_that) {
case _PostPowerStateRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostPowerStateRequest value)?  $default,){
final _that = this;
switch (_that) {
case _PostPowerStateRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'power_state')  bool powerState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostPowerStateRequest() when $default != null:
return $default(_that.powerState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'power_state')  bool powerState)  $default,) {final _that = this;
switch (_that) {
case _PostPowerStateRequest():
return $default(_that.powerState);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'power_state')  bool powerState)?  $default,) {final _that = this;
switch (_that) {
case _PostPowerStateRequest() when $default != null:
return $default(_that.powerState);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostPowerStateRequest implements PostPowerStateRequest {
  const _PostPowerStateRequest({@JsonKey(name: 'power_state') required this.powerState});
  factory _PostPowerStateRequest.fromJson(Map<String, dynamic> json) => _$PostPowerStateRequestFromJson(json);

@override@JsonKey(name: 'power_state') final  bool powerState;

/// Create a copy of PostPowerStateRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostPowerStateRequestCopyWith<_PostPowerStateRequest> get copyWith => __$PostPowerStateRequestCopyWithImpl<_PostPowerStateRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostPowerStateRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostPowerStateRequest&&(identical(other.powerState, powerState) || other.powerState == powerState));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,powerState);

@override
String toString() {
  return 'PostPowerStateRequest(powerState: $powerState)';
}


}

/// @nodoc
abstract mixin class _$PostPowerStateRequestCopyWith<$Res> implements $PostPowerStateRequestCopyWith<$Res> {
  factory _$PostPowerStateRequestCopyWith(_PostPowerStateRequest value, $Res Function(_PostPowerStateRequest) _then) = __$PostPowerStateRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'power_state') bool powerState
});




}
/// @nodoc
class __$PostPowerStateRequestCopyWithImpl<$Res>
    implements _$PostPowerStateRequestCopyWith<$Res> {
  __$PostPowerStateRequestCopyWithImpl(this._self, this._then);

  final _PostPowerStateRequest _self;
  final $Res Function(_PostPowerStateRequest) _then;

/// Create a copy of PostPowerStateRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? powerState = null,}) {
  return _then(_PostPowerStateRequest(
powerState: null == powerState ? _self.powerState : powerState // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
