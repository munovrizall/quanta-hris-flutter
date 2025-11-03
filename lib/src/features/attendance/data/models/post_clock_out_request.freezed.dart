// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_clock_out_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostClockOutRequest {

 double get latitude; double get longitude;@JsonKey(name: 'foto_pulang') String? get fotoPulang;
/// Create a copy of PostClockOutRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostClockOutRequestCopyWith<PostClockOutRequest> get copyWith => _$PostClockOutRequestCopyWithImpl<PostClockOutRequest>(this as PostClockOutRequest, _$identity);

  /// Serializes this PostClockOutRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostClockOutRequest&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.fotoPulang, fotoPulang) || other.fotoPulang == fotoPulang));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,fotoPulang);

@override
String toString() {
  return 'PostClockOutRequest(latitude: $latitude, longitude: $longitude, fotoPulang: $fotoPulang)';
}


}

/// @nodoc
abstract mixin class $PostClockOutRequestCopyWith<$Res>  {
  factory $PostClockOutRequestCopyWith(PostClockOutRequest value, $Res Function(PostClockOutRequest) _then) = _$PostClockOutRequestCopyWithImpl;
@useResult
$Res call({
 double latitude, double longitude,@JsonKey(name: 'foto_pulang') String? fotoPulang
});




}
/// @nodoc
class _$PostClockOutRequestCopyWithImpl<$Res>
    implements $PostClockOutRequestCopyWith<$Res> {
  _$PostClockOutRequestCopyWithImpl(this._self, this._then);

  final PostClockOutRequest _self;
  final $Res Function(PostClockOutRequest) _then;

/// Create a copy of PostClockOutRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = null,Object? longitude = null,Object? fotoPulang = freezed,}) {
  return _then(_self.copyWith(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,fotoPulang: freezed == fotoPulang ? _self.fotoPulang : fotoPulang // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PostClockOutRequest].
extension PostClockOutRequestPatterns on PostClockOutRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostClockOutRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostClockOutRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostClockOutRequest value)  $default,){
final _that = this;
switch (_that) {
case _PostClockOutRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostClockOutRequest value)?  $default,){
final _that = this;
switch (_that) {
case _PostClockOutRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double latitude,  double longitude, @JsonKey(name: 'foto_pulang')  String? fotoPulang)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostClockOutRequest() when $default != null:
return $default(_that.latitude,_that.longitude,_that.fotoPulang);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double latitude,  double longitude, @JsonKey(name: 'foto_pulang')  String? fotoPulang)  $default,) {final _that = this;
switch (_that) {
case _PostClockOutRequest():
return $default(_that.latitude,_that.longitude,_that.fotoPulang);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double latitude,  double longitude, @JsonKey(name: 'foto_pulang')  String? fotoPulang)?  $default,) {final _that = this;
switch (_that) {
case _PostClockOutRequest() when $default != null:
return $default(_that.latitude,_that.longitude,_that.fotoPulang);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostClockOutRequest implements PostClockOutRequest {
  const _PostClockOutRequest({required this.latitude, required this.longitude, @JsonKey(name: 'foto_pulang') this.fotoPulang});
  factory _PostClockOutRequest.fromJson(Map<String, dynamic> json) => _$PostClockOutRequestFromJson(json);

@override final  double latitude;
@override final  double longitude;
@override@JsonKey(name: 'foto_pulang') final  String? fotoPulang;

/// Create a copy of PostClockOutRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostClockOutRequestCopyWith<_PostClockOutRequest> get copyWith => __$PostClockOutRequestCopyWithImpl<_PostClockOutRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostClockOutRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostClockOutRequest&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.fotoPulang, fotoPulang) || other.fotoPulang == fotoPulang));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,fotoPulang);

@override
String toString() {
  return 'PostClockOutRequest(latitude: $latitude, longitude: $longitude, fotoPulang: $fotoPulang)';
}


}

/// @nodoc
abstract mixin class _$PostClockOutRequestCopyWith<$Res> implements $PostClockOutRequestCopyWith<$Res> {
  factory _$PostClockOutRequestCopyWith(_PostClockOutRequest value, $Res Function(_PostClockOutRequest) _then) = __$PostClockOutRequestCopyWithImpl;
@override @useResult
$Res call({
 double latitude, double longitude,@JsonKey(name: 'foto_pulang') String? fotoPulang
});




}
/// @nodoc
class __$PostClockOutRequestCopyWithImpl<$Res>
    implements _$PostClockOutRequestCopyWith<$Res> {
  __$PostClockOutRequestCopyWithImpl(this._self, this._then);

  final _PostClockOutRequest _self;
  final $Res Function(_PostClockOutRequest) _then;

/// Create a copy of PostClockOutRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = null,Object? longitude = null,Object? fotoPulang = freezed,}) {
  return _then(_PostClockOutRequest(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,fotoPulang: freezed == fotoPulang ? _self.fotoPulang : fotoPulang // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
