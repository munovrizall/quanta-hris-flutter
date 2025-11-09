// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_attendance_history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AttendanceHistoryItemResponse {

 String get tanggal; String? get jamMasuk; String? get statusMasuk; String? get jamPulang; String? get statusPulang; String get statusAbsensi;
/// Create a copy of AttendanceHistoryItemResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceHistoryItemResponseCopyWith<AttendanceHistoryItemResponse> get copyWith => _$AttendanceHistoryItemResponseCopyWithImpl<AttendanceHistoryItemResponse>(this as AttendanceHistoryItemResponse, _$identity);

  /// Serializes this AttendanceHistoryItemResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceHistoryItemResponse&&(identical(other.tanggal, tanggal) || other.tanggal == tanggal)&&(identical(other.jamMasuk, jamMasuk) || other.jamMasuk == jamMasuk)&&(identical(other.statusMasuk, statusMasuk) || other.statusMasuk == statusMasuk)&&(identical(other.jamPulang, jamPulang) || other.jamPulang == jamPulang)&&(identical(other.statusPulang, statusPulang) || other.statusPulang == statusPulang)&&(identical(other.statusAbsensi, statusAbsensi) || other.statusAbsensi == statusAbsensi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tanggal,jamMasuk,statusMasuk,jamPulang,statusPulang,statusAbsensi);

@override
String toString() {
  return 'AttendanceHistoryItemResponse(tanggal: $tanggal, jamMasuk: $jamMasuk, statusMasuk: $statusMasuk, jamPulang: $jamPulang, statusPulang: $statusPulang, statusAbsensi: $statusAbsensi)';
}


}

/// @nodoc
abstract mixin class $AttendanceHistoryItemResponseCopyWith<$Res>  {
  factory $AttendanceHistoryItemResponseCopyWith(AttendanceHistoryItemResponse value, $Res Function(AttendanceHistoryItemResponse) _then) = _$AttendanceHistoryItemResponseCopyWithImpl;
@useResult
$Res call({
 String tanggal, String? jamMasuk, String? statusMasuk, String? jamPulang, String? statusPulang, String statusAbsensi
});




}
/// @nodoc
class _$AttendanceHistoryItemResponseCopyWithImpl<$Res>
    implements $AttendanceHistoryItemResponseCopyWith<$Res> {
  _$AttendanceHistoryItemResponseCopyWithImpl(this._self, this._then);

  final AttendanceHistoryItemResponse _self;
  final $Res Function(AttendanceHistoryItemResponse) _then;

/// Create a copy of AttendanceHistoryItemResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tanggal = null,Object? jamMasuk = freezed,Object? statusMasuk = freezed,Object? jamPulang = freezed,Object? statusPulang = freezed,Object? statusAbsensi = null,}) {
  return _then(_self.copyWith(
tanggal: null == tanggal ? _self.tanggal : tanggal // ignore: cast_nullable_to_non_nullable
as String,jamMasuk: freezed == jamMasuk ? _self.jamMasuk : jamMasuk // ignore: cast_nullable_to_non_nullable
as String?,statusMasuk: freezed == statusMasuk ? _self.statusMasuk : statusMasuk // ignore: cast_nullable_to_non_nullable
as String?,jamPulang: freezed == jamPulang ? _self.jamPulang : jamPulang // ignore: cast_nullable_to_non_nullable
as String?,statusPulang: freezed == statusPulang ? _self.statusPulang : statusPulang // ignore: cast_nullable_to_non_nullable
as String?,statusAbsensi: null == statusAbsensi ? _self.statusAbsensi : statusAbsensi // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceHistoryItemResponse].
extension AttendanceHistoryItemResponsePatterns on AttendanceHistoryItemResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceHistoryItemResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceHistoryItemResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceHistoryItemResponse value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceHistoryItemResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceHistoryItemResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceHistoryItemResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String tanggal,  String? jamMasuk,  String? statusMasuk,  String? jamPulang,  String? statusPulang,  String statusAbsensi)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceHistoryItemResponse() when $default != null:
return $default(_that.tanggal,_that.jamMasuk,_that.statusMasuk,_that.jamPulang,_that.statusPulang,_that.statusAbsensi);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String tanggal,  String? jamMasuk,  String? statusMasuk,  String? jamPulang,  String? statusPulang,  String statusAbsensi)  $default,) {final _that = this;
switch (_that) {
case _AttendanceHistoryItemResponse():
return $default(_that.tanggal,_that.jamMasuk,_that.statusMasuk,_that.jamPulang,_that.statusPulang,_that.statusAbsensi);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String tanggal,  String? jamMasuk,  String? statusMasuk,  String? jamPulang,  String? statusPulang,  String statusAbsensi)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceHistoryItemResponse() when $default != null:
return $default(_that.tanggal,_that.jamMasuk,_that.statusMasuk,_that.jamPulang,_that.statusPulang,_that.statusAbsensi);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _AttendanceHistoryItemResponse implements AttendanceHistoryItemResponse {
  const _AttendanceHistoryItemResponse({required this.tanggal, this.jamMasuk, this.statusMasuk, this.jamPulang, this.statusPulang, required this.statusAbsensi});
  factory _AttendanceHistoryItemResponse.fromJson(Map<String, dynamic> json) => _$AttendanceHistoryItemResponseFromJson(json);

@override final  String tanggal;
@override final  String? jamMasuk;
@override final  String? statusMasuk;
@override final  String? jamPulang;
@override final  String? statusPulang;
@override final  String statusAbsensi;

/// Create a copy of AttendanceHistoryItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceHistoryItemResponseCopyWith<_AttendanceHistoryItemResponse> get copyWith => __$AttendanceHistoryItemResponseCopyWithImpl<_AttendanceHistoryItemResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceHistoryItemResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceHistoryItemResponse&&(identical(other.tanggal, tanggal) || other.tanggal == tanggal)&&(identical(other.jamMasuk, jamMasuk) || other.jamMasuk == jamMasuk)&&(identical(other.statusMasuk, statusMasuk) || other.statusMasuk == statusMasuk)&&(identical(other.jamPulang, jamPulang) || other.jamPulang == jamPulang)&&(identical(other.statusPulang, statusPulang) || other.statusPulang == statusPulang)&&(identical(other.statusAbsensi, statusAbsensi) || other.statusAbsensi == statusAbsensi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tanggal,jamMasuk,statusMasuk,jamPulang,statusPulang,statusAbsensi);

@override
String toString() {
  return 'AttendanceHistoryItemResponse(tanggal: $tanggal, jamMasuk: $jamMasuk, statusMasuk: $statusMasuk, jamPulang: $jamPulang, statusPulang: $statusPulang, statusAbsensi: $statusAbsensi)';
}


}

/// @nodoc
abstract mixin class _$AttendanceHistoryItemResponseCopyWith<$Res> implements $AttendanceHistoryItemResponseCopyWith<$Res> {
  factory _$AttendanceHistoryItemResponseCopyWith(_AttendanceHistoryItemResponse value, $Res Function(_AttendanceHistoryItemResponse) _then) = __$AttendanceHistoryItemResponseCopyWithImpl;
@override @useResult
$Res call({
 String tanggal, String? jamMasuk, String? statusMasuk, String? jamPulang, String? statusPulang, String statusAbsensi
});




}
/// @nodoc
class __$AttendanceHistoryItemResponseCopyWithImpl<$Res>
    implements _$AttendanceHistoryItemResponseCopyWith<$Res> {
  __$AttendanceHistoryItemResponseCopyWithImpl(this._self, this._then);

  final _AttendanceHistoryItemResponse _self;
  final $Res Function(_AttendanceHistoryItemResponse) _then;

/// Create a copy of AttendanceHistoryItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tanggal = null,Object? jamMasuk = freezed,Object? statusMasuk = freezed,Object? jamPulang = freezed,Object? statusPulang = freezed,Object? statusAbsensi = null,}) {
  return _then(_AttendanceHistoryItemResponse(
tanggal: null == tanggal ? _self.tanggal : tanggal // ignore: cast_nullable_to_non_nullable
as String,jamMasuk: freezed == jamMasuk ? _self.jamMasuk : jamMasuk // ignore: cast_nullable_to_non_nullable
as String?,statusMasuk: freezed == statusMasuk ? _self.statusMasuk : statusMasuk // ignore: cast_nullable_to_non_nullable
as String?,jamPulang: freezed == jamPulang ? _self.jamPulang : jamPulang // ignore: cast_nullable_to_non_nullable
as String?,statusPulang: freezed == statusPulang ? _self.statusPulang : statusPulang // ignore: cast_nullable_to_non_nullable
as String?,statusAbsensi: null == statusAbsensi ? _self.statusAbsensi : statusAbsensi // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
