// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_leave_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubmitLeaveResponse {

@JsonKey(name: 'cuti_id') String get cutiId;@JsonKey(name: 'karyawan_id') String get karyawanId;@JsonKey(name: 'jenis_cuti') String get jenisCuti;@JsonKey(name: 'tanggal_mulai') String get tanggalMulai;@JsonKey(name: 'tanggal_selesai') String get tanggalSelesai; String get keterangan;@JsonKey(name: 'status_cuti') String get statusCuti;@JsonKey(name: 'dokumen_pendukung') String? get dokumenPendukung;@JsonKey(name: 'durasi_hari') int get durasiHari;@JsonKey(name: 'created_at') String get createdAt;
/// Create a copy of SubmitLeaveResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitLeaveResponseCopyWith<SubmitLeaveResponse> get copyWith => _$SubmitLeaveResponseCopyWithImpl<SubmitLeaveResponse>(this as SubmitLeaveResponse, _$identity);

  /// Serializes this SubmitLeaveResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitLeaveResponse&&(identical(other.cutiId, cutiId) || other.cutiId == cutiId)&&(identical(other.karyawanId, karyawanId) || other.karyawanId == karyawanId)&&(identical(other.jenisCuti, jenisCuti) || other.jenisCuti == jenisCuti)&&(identical(other.tanggalMulai, tanggalMulai) || other.tanggalMulai == tanggalMulai)&&(identical(other.tanggalSelesai, tanggalSelesai) || other.tanggalSelesai == tanggalSelesai)&&(identical(other.keterangan, keterangan) || other.keterangan == keterangan)&&(identical(other.statusCuti, statusCuti) || other.statusCuti == statusCuti)&&(identical(other.dokumenPendukung, dokumenPendukung) || other.dokumenPendukung == dokumenPendukung)&&(identical(other.durasiHari, durasiHari) || other.durasiHari == durasiHari)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cutiId,karyawanId,jenisCuti,tanggalMulai,tanggalSelesai,keterangan,statusCuti,dokumenPendukung,durasiHari,createdAt);

@override
String toString() {
  return 'SubmitLeaveResponse(cutiId: $cutiId, karyawanId: $karyawanId, jenisCuti: $jenisCuti, tanggalMulai: $tanggalMulai, tanggalSelesai: $tanggalSelesai, keterangan: $keterangan, statusCuti: $statusCuti, dokumenPendukung: $dokumenPendukung, durasiHari: $durasiHari, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $SubmitLeaveResponseCopyWith<$Res>  {
  factory $SubmitLeaveResponseCopyWith(SubmitLeaveResponse value, $Res Function(SubmitLeaveResponse) _then) = _$SubmitLeaveResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cuti_id') String cutiId,@JsonKey(name: 'karyawan_id') String karyawanId,@JsonKey(name: 'jenis_cuti') String jenisCuti,@JsonKey(name: 'tanggal_mulai') String tanggalMulai,@JsonKey(name: 'tanggal_selesai') String tanggalSelesai, String keterangan,@JsonKey(name: 'status_cuti') String statusCuti,@JsonKey(name: 'dokumen_pendukung') String? dokumenPendukung,@JsonKey(name: 'durasi_hari') int durasiHari,@JsonKey(name: 'created_at') String createdAt
});




}
/// @nodoc
class _$SubmitLeaveResponseCopyWithImpl<$Res>
    implements $SubmitLeaveResponseCopyWith<$Res> {
  _$SubmitLeaveResponseCopyWithImpl(this._self, this._then);

  final SubmitLeaveResponse _self;
  final $Res Function(SubmitLeaveResponse) _then;

/// Create a copy of SubmitLeaveResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cutiId = null,Object? karyawanId = null,Object? jenisCuti = null,Object? tanggalMulai = null,Object? tanggalSelesai = null,Object? keterangan = null,Object? statusCuti = null,Object? dokumenPendukung = freezed,Object? durasiHari = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
cutiId: null == cutiId ? _self.cutiId : cutiId // ignore: cast_nullable_to_non_nullable
as String,karyawanId: null == karyawanId ? _self.karyawanId : karyawanId // ignore: cast_nullable_to_non_nullable
as String,jenisCuti: null == jenisCuti ? _self.jenisCuti : jenisCuti // ignore: cast_nullable_to_non_nullable
as String,tanggalMulai: null == tanggalMulai ? _self.tanggalMulai : tanggalMulai // ignore: cast_nullable_to_non_nullable
as String,tanggalSelesai: null == tanggalSelesai ? _self.tanggalSelesai : tanggalSelesai // ignore: cast_nullable_to_non_nullable
as String,keterangan: null == keterangan ? _self.keterangan : keterangan // ignore: cast_nullable_to_non_nullable
as String,statusCuti: null == statusCuti ? _self.statusCuti : statusCuti // ignore: cast_nullable_to_non_nullable
as String,dokumenPendukung: freezed == dokumenPendukung ? _self.dokumenPendukung : dokumenPendukung // ignore: cast_nullable_to_non_nullable
as String?,durasiHari: null == durasiHari ? _self.durasiHari : durasiHari // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitLeaveResponse].
extension SubmitLeaveResponsePatterns on SubmitLeaveResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitLeaveResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitLeaveResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitLeaveResponse value)  $default,){
final _that = this;
switch (_that) {
case _SubmitLeaveResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitLeaveResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitLeaveResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cuti_id')  String cutiId, @JsonKey(name: 'karyawan_id')  String karyawanId, @JsonKey(name: 'jenis_cuti')  String jenisCuti, @JsonKey(name: 'tanggal_mulai')  String tanggalMulai, @JsonKey(name: 'tanggal_selesai')  String tanggalSelesai,  String keterangan, @JsonKey(name: 'status_cuti')  String statusCuti, @JsonKey(name: 'dokumen_pendukung')  String? dokumenPendukung, @JsonKey(name: 'durasi_hari')  int durasiHari, @JsonKey(name: 'created_at')  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitLeaveResponse() when $default != null:
return $default(_that.cutiId,_that.karyawanId,_that.jenisCuti,_that.tanggalMulai,_that.tanggalSelesai,_that.keterangan,_that.statusCuti,_that.dokumenPendukung,_that.durasiHari,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cuti_id')  String cutiId, @JsonKey(name: 'karyawan_id')  String karyawanId, @JsonKey(name: 'jenis_cuti')  String jenisCuti, @JsonKey(name: 'tanggal_mulai')  String tanggalMulai, @JsonKey(name: 'tanggal_selesai')  String tanggalSelesai,  String keterangan, @JsonKey(name: 'status_cuti')  String statusCuti, @JsonKey(name: 'dokumen_pendukung')  String? dokumenPendukung, @JsonKey(name: 'durasi_hari')  int durasiHari, @JsonKey(name: 'created_at')  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _SubmitLeaveResponse():
return $default(_that.cutiId,_that.karyawanId,_that.jenisCuti,_that.tanggalMulai,_that.tanggalSelesai,_that.keterangan,_that.statusCuti,_that.dokumenPendukung,_that.durasiHari,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cuti_id')  String cutiId, @JsonKey(name: 'karyawan_id')  String karyawanId, @JsonKey(name: 'jenis_cuti')  String jenisCuti, @JsonKey(name: 'tanggal_mulai')  String tanggalMulai, @JsonKey(name: 'tanggal_selesai')  String tanggalSelesai,  String keterangan, @JsonKey(name: 'status_cuti')  String statusCuti, @JsonKey(name: 'dokumen_pendukung')  String? dokumenPendukung, @JsonKey(name: 'durasi_hari')  int durasiHari, @JsonKey(name: 'created_at')  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _SubmitLeaveResponse() when $default != null:
return $default(_that.cutiId,_that.karyawanId,_that.jenisCuti,_that.tanggalMulai,_that.tanggalSelesai,_that.keterangan,_that.statusCuti,_that.dokumenPendukung,_that.durasiHari,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubmitLeaveResponse implements SubmitLeaveResponse {
  const _SubmitLeaveResponse({@JsonKey(name: 'cuti_id') required this.cutiId, @JsonKey(name: 'karyawan_id') required this.karyawanId, @JsonKey(name: 'jenis_cuti') required this.jenisCuti, @JsonKey(name: 'tanggal_mulai') required this.tanggalMulai, @JsonKey(name: 'tanggal_selesai') required this.tanggalSelesai, required this.keterangan, @JsonKey(name: 'status_cuti') required this.statusCuti, @JsonKey(name: 'dokumen_pendukung') this.dokumenPendukung, @JsonKey(name: 'durasi_hari') required this.durasiHari, @JsonKey(name: 'created_at') required this.createdAt});
  factory _SubmitLeaveResponse.fromJson(Map<String, dynamic> json) => _$SubmitLeaveResponseFromJson(json);

@override@JsonKey(name: 'cuti_id') final  String cutiId;
@override@JsonKey(name: 'karyawan_id') final  String karyawanId;
@override@JsonKey(name: 'jenis_cuti') final  String jenisCuti;
@override@JsonKey(name: 'tanggal_mulai') final  String tanggalMulai;
@override@JsonKey(name: 'tanggal_selesai') final  String tanggalSelesai;
@override final  String keterangan;
@override@JsonKey(name: 'status_cuti') final  String statusCuti;
@override@JsonKey(name: 'dokumen_pendukung') final  String? dokumenPendukung;
@override@JsonKey(name: 'durasi_hari') final  int durasiHari;
@override@JsonKey(name: 'created_at') final  String createdAt;

/// Create a copy of SubmitLeaveResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitLeaveResponseCopyWith<_SubmitLeaveResponse> get copyWith => __$SubmitLeaveResponseCopyWithImpl<_SubmitLeaveResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubmitLeaveResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitLeaveResponse&&(identical(other.cutiId, cutiId) || other.cutiId == cutiId)&&(identical(other.karyawanId, karyawanId) || other.karyawanId == karyawanId)&&(identical(other.jenisCuti, jenisCuti) || other.jenisCuti == jenisCuti)&&(identical(other.tanggalMulai, tanggalMulai) || other.tanggalMulai == tanggalMulai)&&(identical(other.tanggalSelesai, tanggalSelesai) || other.tanggalSelesai == tanggalSelesai)&&(identical(other.keterangan, keterangan) || other.keterangan == keterangan)&&(identical(other.statusCuti, statusCuti) || other.statusCuti == statusCuti)&&(identical(other.dokumenPendukung, dokumenPendukung) || other.dokumenPendukung == dokumenPendukung)&&(identical(other.durasiHari, durasiHari) || other.durasiHari == durasiHari)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cutiId,karyawanId,jenisCuti,tanggalMulai,tanggalSelesai,keterangan,statusCuti,dokumenPendukung,durasiHari,createdAt);

@override
String toString() {
  return 'SubmitLeaveResponse(cutiId: $cutiId, karyawanId: $karyawanId, jenisCuti: $jenisCuti, tanggalMulai: $tanggalMulai, tanggalSelesai: $tanggalSelesai, keterangan: $keterangan, statusCuti: $statusCuti, dokumenPendukung: $dokumenPendukung, durasiHari: $durasiHari, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$SubmitLeaveResponseCopyWith<$Res> implements $SubmitLeaveResponseCopyWith<$Res> {
  factory _$SubmitLeaveResponseCopyWith(_SubmitLeaveResponse value, $Res Function(_SubmitLeaveResponse) _then) = __$SubmitLeaveResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cuti_id') String cutiId,@JsonKey(name: 'karyawan_id') String karyawanId,@JsonKey(name: 'jenis_cuti') String jenisCuti,@JsonKey(name: 'tanggal_mulai') String tanggalMulai,@JsonKey(name: 'tanggal_selesai') String tanggalSelesai, String keterangan,@JsonKey(name: 'status_cuti') String statusCuti,@JsonKey(name: 'dokumen_pendukung') String? dokumenPendukung,@JsonKey(name: 'durasi_hari') int durasiHari,@JsonKey(name: 'created_at') String createdAt
});




}
/// @nodoc
class __$SubmitLeaveResponseCopyWithImpl<$Res>
    implements _$SubmitLeaveResponseCopyWith<$Res> {
  __$SubmitLeaveResponseCopyWithImpl(this._self, this._then);

  final _SubmitLeaveResponse _self;
  final $Res Function(_SubmitLeaveResponse) _then;

/// Create a copy of SubmitLeaveResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cutiId = null,Object? karyawanId = null,Object? jenisCuti = null,Object? tanggalMulai = null,Object? tanggalSelesai = null,Object? keterangan = null,Object? statusCuti = null,Object? dokumenPendukung = freezed,Object? durasiHari = null,Object? createdAt = null,}) {
  return _then(_SubmitLeaveResponse(
cutiId: null == cutiId ? _self.cutiId : cutiId // ignore: cast_nullable_to_non_nullable
as String,karyawanId: null == karyawanId ? _self.karyawanId : karyawanId // ignore: cast_nullable_to_non_nullable
as String,jenisCuti: null == jenisCuti ? _self.jenisCuti : jenisCuti // ignore: cast_nullable_to_non_nullable
as String,tanggalMulai: null == tanggalMulai ? _self.tanggalMulai : tanggalMulai // ignore: cast_nullable_to_non_nullable
as String,tanggalSelesai: null == tanggalSelesai ? _self.tanggalSelesai : tanggalSelesai // ignore: cast_nullable_to_non_nullable
as String,keterangan: null == keterangan ? _self.keterangan : keterangan // ignore: cast_nullable_to_non_nullable
as String,statusCuti: null == statusCuti ? _self.statusCuti : statusCuti // ignore: cast_nullable_to_non_nullable
as String,dokumenPendukung: freezed == dokumenPendukung ? _self.dokumenPendukung : dokumenPendukung // ignore: cast_nullable_to_non_nullable
as String?,durasiHari: null == durasiHari ? _self.durasiHari : durasiHari // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
