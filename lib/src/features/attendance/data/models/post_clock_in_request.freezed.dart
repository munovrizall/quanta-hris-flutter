// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_clock_in_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostClockInRequest {

 double get latitude; double get longitude;@JsonKey(name: 'foto_masuk') String? get fotoMasuk;
/// Create a copy of PostClockInRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostClockInRequestCopyWith<PostClockInRequest> get copyWith => _$PostClockInRequestCopyWithImpl<PostClockInRequest>(this as PostClockInRequest, _$identity);

  /// Serializes this PostClockInRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostClockInRequest&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.fotoMasuk, fotoMasuk) || other.fotoMasuk == fotoMasuk));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,fotoMasuk);

@override
String toString() {
  return 'PostClockInRequest(latitude: $latitude, longitude: $longitude, fotoMasuk: $fotoMasuk)';
}


}

/// @nodoc
abstract mixin class $PostClockInRequestCopyWith<$Res>  {
  factory $PostClockInRequestCopyWith(PostClockInRequest value, $Res Function(PostClockInRequest) _then) = _$PostClockInRequestCopyWithImpl;
@useResult
$Res call({
 double latitude, double longitude,@JsonKey(name: 'foto_masuk') String? fotoMasuk
});




}
/// @nodoc
class _$PostClockInRequestCopyWithImpl<$Res>
    implements $PostClockInRequestCopyWith<$Res> {
  _$PostClockInRequestCopyWithImpl(this._self, this._then);

  final PostClockInRequest _self;
  final $Res Function(PostClockInRequest) _then;

/// Create a copy of PostClockInRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = null,Object? longitude = null,Object? fotoMasuk = freezed,}) {
  return _then(_self.copyWith(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,fotoMasuk: freezed == fotoMasuk ? _self.fotoMasuk : fotoMasuk // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PostClockInRequest].
extension PostClockInRequestPatterns on PostClockInRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostClockInRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostClockInRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostClockInRequest value)  $default,){
final _that = this;
switch (_that) {
case _PostClockInRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostClockInRequest value)?  $default,){
final _that = this;
switch (_that) {
case _PostClockInRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double latitude,  double longitude, @JsonKey(name: 'foto_masuk')  String? fotoMasuk)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostClockInRequest() when $default != null:
return $default(_that.latitude,_that.longitude,_that.fotoMasuk);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double latitude,  double longitude, @JsonKey(name: 'foto_masuk')  String? fotoMasuk)  $default,) {final _that = this;
switch (_that) {
case _PostClockInRequest():
return $default(_that.latitude,_that.longitude,_that.fotoMasuk);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double latitude,  double longitude, @JsonKey(name: 'foto_masuk')  String? fotoMasuk)?  $default,) {final _that = this;
switch (_that) {
case _PostClockInRequest() when $default != null:
return $default(_that.latitude,_that.longitude,_that.fotoMasuk);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostClockInRequest implements PostClockInRequest {
  const _PostClockInRequest({required this.latitude, required this.longitude, @JsonKey(name: 'foto_masuk') this.fotoMasuk});
  factory _PostClockInRequest.fromJson(Map<String, dynamic> json) => _$PostClockInRequestFromJson(json);

@override final  double latitude;
@override final  double longitude;
@override@JsonKey(name: 'foto_masuk') final  String? fotoMasuk;

/// Create a copy of PostClockInRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostClockInRequestCopyWith<_PostClockInRequest> get copyWith => __$PostClockInRequestCopyWithImpl<_PostClockInRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostClockInRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostClockInRequest&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.fotoMasuk, fotoMasuk) || other.fotoMasuk == fotoMasuk));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,fotoMasuk);

@override
String toString() {
  return 'PostClockInRequest(latitude: $latitude, longitude: $longitude, fotoMasuk: $fotoMasuk)';
}


}

/// @nodoc
abstract mixin class _$PostClockInRequestCopyWith<$Res> implements $PostClockInRequestCopyWith<$Res> {
  factory _$PostClockInRequestCopyWith(_PostClockInRequest value, $Res Function(_PostClockInRequest) _then) = __$PostClockInRequestCopyWithImpl;
@override @useResult
$Res call({
 double latitude, double longitude,@JsonKey(name: 'foto_masuk') String? fotoMasuk
});




}
/// @nodoc
class __$PostClockInRequestCopyWithImpl<$Res>
    implements _$PostClockInRequestCopyWith<$Res> {
  __$PostClockInRequestCopyWithImpl(this._self, this._then);

  final _PostClockInRequest _self;
  final $Res Function(_PostClockInRequest) _then;

/// Create a copy of PostClockInRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = null,Object? longitude = null,Object? fotoMasuk = freezed,}) {
  return _then(_PostClockInRequest(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,fotoMasuk: freezed == fotoMasuk ? _self.fotoMasuk : fotoMasuk // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
