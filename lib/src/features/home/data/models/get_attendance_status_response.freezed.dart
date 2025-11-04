// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_attendance_status_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetAttendanceStatusResponse {

@JsonKey(name: 'is_clocked_in') bool get isClockedIn;@JsonKey(name: 'is_clocked_out') bool get isClockedOut;
/// Create a copy of GetAttendanceStatusResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAttendanceStatusResponseCopyWith<GetAttendanceStatusResponse> get copyWith => _$GetAttendanceStatusResponseCopyWithImpl<GetAttendanceStatusResponse>(this as GetAttendanceStatusResponse, _$identity);

  /// Serializes this GetAttendanceStatusResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAttendanceStatusResponse&&(identical(other.isClockedIn, isClockedIn) || other.isClockedIn == isClockedIn)&&(identical(other.isClockedOut, isClockedOut) || other.isClockedOut == isClockedOut));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isClockedIn,isClockedOut);

@override
String toString() {
  return 'GetAttendanceStatusResponse(isClockedIn: $isClockedIn, isClockedOut: $isClockedOut)';
}


}

/// @nodoc
abstract mixin class $GetAttendanceStatusResponseCopyWith<$Res>  {
  factory $GetAttendanceStatusResponseCopyWith(GetAttendanceStatusResponse value, $Res Function(GetAttendanceStatusResponse) _then) = _$GetAttendanceStatusResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'is_clocked_in') bool isClockedIn,@JsonKey(name: 'is_clocked_out') bool isClockedOut
});




}
/// @nodoc
class _$GetAttendanceStatusResponseCopyWithImpl<$Res>
    implements $GetAttendanceStatusResponseCopyWith<$Res> {
  _$GetAttendanceStatusResponseCopyWithImpl(this._self, this._then);

  final GetAttendanceStatusResponse _self;
  final $Res Function(GetAttendanceStatusResponse) _then;

/// Create a copy of GetAttendanceStatusResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isClockedIn = null,Object? isClockedOut = null,}) {
  return _then(_self.copyWith(
isClockedIn: null == isClockedIn ? _self.isClockedIn : isClockedIn // ignore: cast_nullable_to_non_nullable
as bool,isClockedOut: null == isClockedOut ? _self.isClockedOut : isClockedOut // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [GetAttendanceStatusResponse].
extension GetAttendanceStatusResponsePatterns on GetAttendanceStatusResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetAttendanceStatusResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetAttendanceStatusResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetAttendanceStatusResponse value)  $default,){
final _that = this;
switch (_that) {
case _GetAttendanceStatusResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetAttendanceStatusResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GetAttendanceStatusResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'is_clocked_in')  bool isClockedIn, @JsonKey(name: 'is_clocked_out')  bool isClockedOut)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetAttendanceStatusResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'is_clocked_in')  bool isClockedIn, @JsonKey(name: 'is_clocked_out')  bool isClockedOut)  $default,) {final _that = this;
switch (_that) {
case _GetAttendanceStatusResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'is_clocked_in')  bool isClockedIn, @JsonKey(name: 'is_clocked_out')  bool isClockedOut)?  $default,) {final _that = this;
switch (_that) {
case _GetAttendanceStatusResponse() when $default != null:
return $default(_that.isClockedIn,_that.isClockedOut);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetAttendanceStatusResponse implements GetAttendanceStatusResponse {
  const _GetAttendanceStatusResponse({@JsonKey(name: 'is_clocked_in') required this.isClockedIn, @JsonKey(name: 'is_clocked_out') required this.isClockedOut});
  factory _GetAttendanceStatusResponse.fromJson(Map<String, dynamic> json) => _$GetAttendanceStatusResponseFromJson(json);

@override@JsonKey(name: 'is_clocked_in') final  bool isClockedIn;
@override@JsonKey(name: 'is_clocked_out') final  bool isClockedOut;

/// Create a copy of GetAttendanceStatusResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAttendanceStatusResponseCopyWith<_GetAttendanceStatusResponse> get copyWith => __$GetAttendanceStatusResponseCopyWithImpl<_GetAttendanceStatusResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetAttendanceStatusResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAttendanceStatusResponse&&(identical(other.isClockedIn, isClockedIn) || other.isClockedIn == isClockedIn)&&(identical(other.isClockedOut, isClockedOut) || other.isClockedOut == isClockedOut));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isClockedIn,isClockedOut);

@override
String toString() {
  return 'GetAttendanceStatusResponse(isClockedIn: $isClockedIn, isClockedOut: $isClockedOut)';
}


}

/// @nodoc
abstract mixin class _$GetAttendanceStatusResponseCopyWith<$Res> implements $GetAttendanceStatusResponseCopyWith<$Res> {
  factory _$GetAttendanceStatusResponseCopyWith(_GetAttendanceStatusResponse value, $Res Function(_GetAttendanceStatusResponse) _then) = __$GetAttendanceStatusResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'is_clocked_in') bool isClockedIn,@JsonKey(name: 'is_clocked_out') bool isClockedOut
});




}
/// @nodoc
class __$GetAttendanceStatusResponseCopyWithImpl<$Res>
    implements _$GetAttendanceStatusResponseCopyWith<$Res> {
  __$GetAttendanceStatusResponseCopyWithImpl(this._self, this._then);

  final _GetAttendanceStatusResponse _self;
  final $Res Function(_GetAttendanceStatusResponse) _then;

/// Create a copy of GetAttendanceStatusResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isClockedIn = null,Object? isClockedOut = null,}) {
  return _then(_GetAttendanceStatusResponse(
isClockedIn: null == isClockedIn ? _self.isClockedIn : isClockedIn // ignore: cast_nullable_to_non_nullable
as bool,isClockedOut: null == isClockedOut ? _self.isClockedOut : isClockedOut // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
