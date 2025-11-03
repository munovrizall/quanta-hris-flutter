// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_application_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LeaveApplicationEntity {

 String get cutiId; String get karyawanId; String get jenisCuti; String get tanggalMulai; String get tanggalSelesai; String get keterangan; String get statusCuti; String? get dokumenPendukung; int get durasiHari; String get createdAt;
/// Create a copy of LeaveApplicationEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaveApplicationEntityCopyWith<LeaveApplicationEntity> get copyWith => _$LeaveApplicationEntityCopyWithImpl<LeaveApplicationEntity>(this as LeaveApplicationEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaveApplicationEntity&&(identical(other.cutiId, cutiId) || other.cutiId == cutiId)&&(identical(other.karyawanId, karyawanId) || other.karyawanId == karyawanId)&&(identical(other.jenisCuti, jenisCuti) || other.jenisCuti == jenisCuti)&&(identical(other.tanggalMulai, tanggalMulai) || other.tanggalMulai == tanggalMulai)&&(identical(other.tanggalSelesai, tanggalSelesai) || other.tanggalSelesai == tanggalSelesai)&&(identical(other.keterangan, keterangan) || other.keterangan == keterangan)&&(identical(other.statusCuti, statusCuti) || other.statusCuti == statusCuti)&&(identical(other.dokumenPendukung, dokumenPendukung) || other.dokumenPendukung == dokumenPendukung)&&(identical(other.durasiHari, durasiHari) || other.durasiHari == durasiHari)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,cutiId,karyawanId,jenisCuti,tanggalMulai,tanggalSelesai,keterangan,statusCuti,dokumenPendukung,durasiHari,createdAt);

@override
String toString() {
  return 'LeaveApplicationEntity(cutiId: $cutiId, karyawanId: $karyawanId, jenisCuti: $jenisCuti, tanggalMulai: $tanggalMulai, tanggalSelesai: $tanggalSelesai, keterangan: $keterangan, statusCuti: $statusCuti, dokumenPendukung: $dokumenPendukung, durasiHari: $durasiHari, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $LeaveApplicationEntityCopyWith<$Res>  {
  factory $LeaveApplicationEntityCopyWith(LeaveApplicationEntity value, $Res Function(LeaveApplicationEntity) _then) = _$LeaveApplicationEntityCopyWithImpl;
@useResult
$Res call({
 String cutiId, String karyawanId, String jenisCuti, String tanggalMulai, String tanggalSelesai, String keterangan, String statusCuti, String? dokumenPendukung, int durasiHari, String createdAt
});




}
/// @nodoc
class _$LeaveApplicationEntityCopyWithImpl<$Res>
    implements $LeaveApplicationEntityCopyWith<$Res> {
  _$LeaveApplicationEntityCopyWithImpl(this._self, this._then);

  final LeaveApplicationEntity _self;
  final $Res Function(LeaveApplicationEntity) _then;

/// Create a copy of LeaveApplicationEntity
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


/// Adds pattern-matching-related methods to [LeaveApplicationEntity].
extension LeaveApplicationEntityPatterns on LeaveApplicationEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaveApplicationEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaveApplicationEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaveApplicationEntity value)  $default,){
final _that = this;
switch (_that) {
case _LeaveApplicationEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaveApplicationEntity value)?  $default,){
final _that = this;
switch (_that) {
case _LeaveApplicationEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String cutiId,  String karyawanId,  String jenisCuti,  String tanggalMulai,  String tanggalSelesai,  String keterangan,  String statusCuti,  String? dokumenPendukung,  int durasiHari,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaveApplicationEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String cutiId,  String karyawanId,  String jenisCuti,  String tanggalMulai,  String tanggalSelesai,  String keterangan,  String statusCuti,  String? dokumenPendukung,  int durasiHari,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _LeaveApplicationEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String cutiId,  String karyawanId,  String jenisCuti,  String tanggalMulai,  String tanggalSelesai,  String keterangan,  String statusCuti,  String? dokumenPendukung,  int durasiHari,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _LeaveApplicationEntity() when $default != null:
return $default(_that.cutiId,_that.karyawanId,_that.jenisCuti,_that.tanggalMulai,_that.tanggalSelesai,_that.keterangan,_that.statusCuti,_that.dokumenPendukung,_that.durasiHari,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _LeaveApplicationEntity implements LeaveApplicationEntity {
  const _LeaveApplicationEntity({required this.cutiId, required this.karyawanId, required this.jenisCuti, required this.tanggalMulai, required this.tanggalSelesai, required this.keterangan, required this.statusCuti, this.dokumenPendukung, required this.durasiHari, required this.createdAt});
  

@override final  String cutiId;
@override final  String karyawanId;
@override final  String jenisCuti;
@override final  String tanggalMulai;
@override final  String tanggalSelesai;
@override final  String keterangan;
@override final  String statusCuti;
@override final  String? dokumenPendukung;
@override final  int durasiHari;
@override final  String createdAt;

/// Create a copy of LeaveApplicationEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaveApplicationEntityCopyWith<_LeaveApplicationEntity> get copyWith => __$LeaveApplicationEntityCopyWithImpl<_LeaveApplicationEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaveApplicationEntity&&(identical(other.cutiId, cutiId) || other.cutiId == cutiId)&&(identical(other.karyawanId, karyawanId) || other.karyawanId == karyawanId)&&(identical(other.jenisCuti, jenisCuti) || other.jenisCuti == jenisCuti)&&(identical(other.tanggalMulai, tanggalMulai) || other.tanggalMulai == tanggalMulai)&&(identical(other.tanggalSelesai, tanggalSelesai) || other.tanggalSelesai == tanggalSelesai)&&(identical(other.keterangan, keterangan) || other.keterangan == keterangan)&&(identical(other.statusCuti, statusCuti) || other.statusCuti == statusCuti)&&(identical(other.dokumenPendukung, dokumenPendukung) || other.dokumenPendukung == dokumenPendukung)&&(identical(other.durasiHari, durasiHari) || other.durasiHari == durasiHari)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,cutiId,karyawanId,jenisCuti,tanggalMulai,tanggalSelesai,keterangan,statusCuti,dokumenPendukung,durasiHari,createdAt);

@override
String toString() {
  return 'LeaveApplicationEntity(cutiId: $cutiId, karyawanId: $karyawanId, jenisCuti: $jenisCuti, tanggalMulai: $tanggalMulai, tanggalSelesai: $tanggalSelesai, keterangan: $keterangan, statusCuti: $statusCuti, dokumenPendukung: $dokumenPendukung, durasiHari: $durasiHari, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$LeaveApplicationEntityCopyWith<$Res> implements $LeaveApplicationEntityCopyWith<$Res> {
  factory _$LeaveApplicationEntityCopyWith(_LeaveApplicationEntity value, $Res Function(_LeaveApplicationEntity) _then) = __$LeaveApplicationEntityCopyWithImpl;
@override @useResult
$Res call({
 String cutiId, String karyawanId, String jenisCuti, String tanggalMulai, String tanggalSelesai, String keterangan, String statusCuti, String? dokumenPendukung, int durasiHari, String createdAt
});




}
/// @nodoc
class __$LeaveApplicationEntityCopyWithImpl<$Res>
    implements _$LeaveApplicationEntityCopyWith<$Res> {
  __$LeaveApplicationEntityCopyWithImpl(this._self, this._then);

  final _LeaveApplicationEntity _self;
  final $Res Function(_LeaveApplicationEntity) _then;

/// Create a copy of LeaveApplicationEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cutiId = null,Object? karyawanId = null,Object? jenisCuti = null,Object? tanggalMulai = null,Object? tanggalSelesai = null,Object? keterangan = null,Object? statusCuti = null,Object? dokumenPendukung = freezed,Object? durasiHari = null,Object? createdAt = null,}) {
  return _then(_LeaveApplicationEntity(
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
