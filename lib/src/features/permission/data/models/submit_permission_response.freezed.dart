// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_permission_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubmitPermissionResponse {

 String get izinId; String get karyawanId; String get jenisIzin; String get tanggalMulai; String get tanggalSelesai; String get keterangan; String get statusIzin; String get createdAt;
/// Create a copy of SubmitPermissionResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitPermissionResponseCopyWith<SubmitPermissionResponse> get copyWith => _$SubmitPermissionResponseCopyWithImpl<SubmitPermissionResponse>(this as SubmitPermissionResponse, _$identity);

  /// Serializes this SubmitPermissionResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitPermissionResponse&&(identical(other.izinId, izinId) || other.izinId == izinId)&&(identical(other.karyawanId, karyawanId) || other.karyawanId == karyawanId)&&(identical(other.jenisIzin, jenisIzin) || other.jenisIzin == jenisIzin)&&(identical(other.tanggalMulai, tanggalMulai) || other.tanggalMulai == tanggalMulai)&&(identical(other.tanggalSelesai, tanggalSelesai) || other.tanggalSelesai == tanggalSelesai)&&(identical(other.keterangan, keterangan) || other.keterangan == keterangan)&&(identical(other.statusIzin, statusIzin) || other.statusIzin == statusIzin)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,izinId,karyawanId,jenisIzin,tanggalMulai,tanggalSelesai,keterangan,statusIzin,createdAt);

@override
String toString() {
  return 'SubmitPermissionResponse(izinId: $izinId, karyawanId: $karyawanId, jenisIzin: $jenisIzin, tanggalMulai: $tanggalMulai, tanggalSelesai: $tanggalSelesai, keterangan: $keterangan, statusIzin: $statusIzin, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $SubmitPermissionResponseCopyWith<$Res>  {
  factory $SubmitPermissionResponseCopyWith(SubmitPermissionResponse value, $Res Function(SubmitPermissionResponse) _then) = _$SubmitPermissionResponseCopyWithImpl;
@useResult
$Res call({
 String izinId, String karyawanId, String jenisIzin, String tanggalMulai, String tanggalSelesai, String keterangan, String statusIzin, String createdAt
});




}
/// @nodoc
class _$SubmitPermissionResponseCopyWithImpl<$Res>
    implements $SubmitPermissionResponseCopyWith<$Res> {
  _$SubmitPermissionResponseCopyWithImpl(this._self, this._then);

  final SubmitPermissionResponse _self;
  final $Res Function(SubmitPermissionResponse) _then;

/// Create a copy of SubmitPermissionResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? izinId = null,Object? karyawanId = null,Object? jenisIzin = null,Object? tanggalMulai = null,Object? tanggalSelesai = null,Object? keterangan = null,Object? statusIzin = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
izinId: null == izinId ? _self.izinId : izinId // ignore: cast_nullable_to_non_nullable
as String,karyawanId: null == karyawanId ? _self.karyawanId : karyawanId // ignore: cast_nullable_to_non_nullable
as String,jenisIzin: null == jenisIzin ? _self.jenisIzin : jenisIzin // ignore: cast_nullable_to_non_nullable
as String,tanggalMulai: null == tanggalMulai ? _self.tanggalMulai : tanggalMulai // ignore: cast_nullable_to_non_nullable
as String,tanggalSelesai: null == tanggalSelesai ? _self.tanggalSelesai : tanggalSelesai // ignore: cast_nullable_to_non_nullable
as String,keterangan: null == keterangan ? _self.keterangan : keterangan // ignore: cast_nullable_to_non_nullable
as String,statusIzin: null == statusIzin ? _self.statusIzin : statusIzin // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitPermissionResponse].
extension SubmitPermissionResponsePatterns on SubmitPermissionResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitPermissionResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitPermissionResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitPermissionResponse value)  $default,){
final _that = this;
switch (_that) {
case _SubmitPermissionResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitPermissionResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitPermissionResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String izinId,  String karyawanId,  String jenisIzin,  String tanggalMulai,  String tanggalSelesai,  String keterangan,  String statusIzin,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitPermissionResponse() when $default != null:
return $default(_that.izinId,_that.karyawanId,_that.jenisIzin,_that.tanggalMulai,_that.tanggalSelesai,_that.keterangan,_that.statusIzin,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String izinId,  String karyawanId,  String jenisIzin,  String tanggalMulai,  String tanggalSelesai,  String keterangan,  String statusIzin,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _SubmitPermissionResponse():
return $default(_that.izinId,_that.karyawanId,_that.jenisIzin,_that.tanggalMulai,_that.tanggalSelesai,_that.keterangan,_that.statusIzin,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String izinId,  String karyawanId,  String jenisIzin,  String tanggalMulai,  String tanggalSelesai,  String keterangan,  String statusIzin,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _SubmitPermissionResponse() when $default != null:
return $default(_that.izinId,_that.karyawanId,_that.jenisIzin,_that.tanggalMulai,_that.tanggalSelesai,_that.keterangan,_that.statusIzin,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _SubmitPermissionResponse implements SubmitPermissionResponse {
  const _SubmitPermissionResponse({required this.izinId, required this.karyawanId, required this.jenisIzin, required this.tanggalMulai, required this.tanggalSelesai, required this.keterangan, required this.statusIzin, required this.createdAt});
  factory _SubmitPermissionResponse.fromJson(Map<String, dynamic> json) => _$SubmitPermissionResponseFromJson(json);

@override final  String izinId;
@override final  String karyawanId;
@override final  String jenisIzin;
@override final  String tanggalMulai;
@override final  String tanggalSelesai;
@override final  String keterangan;
@override final  String statusIzin;
@override final  String createdAt;

/// Create a copy of SubmitPermissionResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitPermissionResponseCopyWith<_SubmitPermissionResponse> get copyWith => __$SubmitPermissionResponseCopyWithImpl<_SubmitPermissionResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubmitPermissionResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitPermissionResponse&&(identical(other.izinId, izinId) || other.izinId == izinId)&&(identical(other.karyawanId, karyawanId) || other.karyawanId == karyawanId)&&(identical(other.jenisIzin, jenisIzin) || other.jenisIzin == jenisIzin)&&(identical(other.tanggalMulai, tanggalMulai) || other.tanggalMulai == tanggalMulai)&&(identical(other.tanggalSelesai, tanggalSelesai) || other.tanggalSelesai == tanggalSelesai)&&(identical(other.keterangan, keterangan) || other.keterangan == keterangan)&&(identical(other.statusIzin, statusIzin) || other.statusIzin == statusIzin)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,izinId,karyawanId,jenisIzin,tanggalMulai,tanggalSelesai,keterangan,statusIzin,createdAt);

@override
String toString() {
  return 'SubmitPermissionResponse(izinId: $izinId, karyawanId: $karyawanId, jenisIzin: $jenisIzin, tanggalMulai: $tanggalMulai, tanggalSelesai: $tanggalSelesai, keterangan: $keterangan, statusIzin: $statusIzin, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$SubmitPermissionResponseCopyWith<$Res> implements $SubmitPermissionResponseCopyWith<$Res> {
  factory _$SubmitPermissionResponseCopyWith(_SubmitPermissionResponse value, $Res Function(_SubmitPermissionResponse) _then) = __$SubmitPermissionResponseCopyWithImpl;
@override @useResult
$Res call({
 String izinId, String karyawanId, String jenisIzin, String tanggalMulai, String tanggalSelesai, String keterangan, String statusIzin, String createdAt
});




}
/// @nodoc
class __$SubmitPermissionResponseCopyWithImpl<$Res>
    implements _$SubmitPermissionResponseCopyWith<$Res> {
  __$SubmitPermissionResponseCopyWithImpl(this._self, this._then);

  final _SubmitPermissionResponse _self;
  final $Res Function(_SubmitPermissionResponse) _then;

/// Create a copy of SubmitPermissionResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? izinId = null,Object? karyawanId = null,Object? jenisIzin = null,Object? tanggalMulai = null,Object? tanggalSelesai = null,Object? keterangan = null,Object? statusIzin = null,Object? createdAt = null,}) {
  return _then(_SubmitPermissionResponse(
izinId: null == izinId ? _self.izinId : izinId // ignore: cast_nullable_to_non_nullable
as String,karyawanId: null == karyawanId ? _self.karyawanId : karyawanId // ignore: cast_nullable_to_non_nullable
as String,jenisIzin: null == jenisIzin ? _self.jenisIzin : jenisIzin // ignore: cast_nullable_to_non_nullable
as String,tanggalMulai: null == tanggalMulai ? _self.tanggalMulai : tanggalMulai // ignore: cast_nullable_to_non_nullable
as String,tanggalSelesai: null == tanggalSelesai ? _self.tanggalSelesai : tanggalSelesai // ignore: cast_nullable_to_non_nullable
as String,keterangan: null == keterangan ? _self.keterangan : keterangan // ignore: cast_nullable_to_non_nullable
as String,statusIzin: null == statusIzin ? _self.statusIzin : statusIzin // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
