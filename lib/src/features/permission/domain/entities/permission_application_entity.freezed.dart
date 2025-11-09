// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permission_application_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PermissionApplicationEntity {

 String get izinId; String get karyawanId; String get jenisIzin; String get tanggalMulai; String get tanggalSelesai; String get keterangan; String get statusIzin; String get createdAt;
/// Create a copy of PermissionApplicationEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PermissionApplicationEntityCopyWith<PermissionApplicationEntity> get copyWith => _$PermissionApplicationEntityCopyWithImpl<PermissionApplicationEntity>(this as PermissionApplicationEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PermissionApplicationEntity&&(identical(other.izinId, izinId) || other.izinId == izinId)&&(identical(other.karyawanId, karyawanId) || other.karyawanId == karyawanId)&&(identical(other.jenisIzin, jenisIzin) || other.jenisIzin == jenisIzin)&&(identical(other.tanggalMulai, tanggalMulai) || other.tanggalMulai == tanggalMulai)&&(identical(other.tanggalSelesai, tanggalSelesai) || other.tanggalSelesai == tanggalSelesai)&&(identical(other.keterangan, keterangan) || other.keterangan == keterangan)&&(identical(other.statusIzin, statusIzin) || other.statusIzin == statusIzin)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,izinId,karyawanId,jenisIzin,tanggalMulai,tanggalSelesai,keterangan,statusIzin,createdAt);

@override
String toString() {
  return 'PermissionApplicationEntity(izinId: $izinId, karyawanId: $karyawanId, jenisIzin: $jenisIzin, tanggalMulai: $tanggalMulai, tanggalSelesai: $tanggalSelesai, keterangan: $keterangan, statusIzin: $statusIzin, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $PermissionApplicationEntityCopyWith<$Res>  {
  factory $PermissionApplicationEntityCopyWith(PermissionApplicationEntity value, $Res Function(PermissionApplicationEntity) _then) = _$PermissionApplicationEntityCopyWithImpl;
@useResult
$Res call({
 String izinId, String karyawanId, String jenisIzin, String tanggalMulai, String tanggalSelesai, String keterangan, String statusIzin, String createdAt
});




}
/// @nodoc
class _$PermissionApplicationEntityCopyWithImpl<$Res>
    implements $PermissionApplicationEntityCopyWith<$Res> {
  _$PermissionApplicationEntityCopyWithImpl(this._self, this._then);

  final PermissionApplicationEntity _self;
  final $Res Function(PermissionApplicationEntity) _then;

/// Create a copy of PermissionApplicationEntity
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


/// Adds pattern-matching-related methods to [PermissionApplicationEntity].
extension PermissionApplicationEntityPatterns on PermissionApplicationEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PermissionApplicationEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PermissionApplicationEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PermissionApplicationEntity value)  $default,){
final _that = this;
switch (_that) {
case _PermissionApplicationEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PermissionApplicationEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PermissionApplicationEntity() when $default != null:
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
case _PermissionApplicationEntity() when $default != null:
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
case _PermissionApplicationEntity():
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
case _PermissionApplicationEntity() when $default != null:
return $default(_that.izinId,_that.karyawanId,_that.jenisIzin,_that.tanggalMulai,_that.tanggalSelesai,_that.keterangan,_that.statusIzin,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _PermissionApplicationEntity implements PermissionApplicationEntity {
  const _PermissionApplicationEntity({required this.izinId, required this.karyawanId, required this.jenisIzin, required this.tanggalMulai, required this.tanggalSelesai, required this.keterangan, required this.statusIzin, required this.createdAt});
  

@override final  String izinId;
@override final  String karyawanId;
@override final  String jenisIzin;
@override final  String tanggalMulai;
@override final  String tanggalSelesai;
@override final  String keterangan;
@override final  String statusIzin;
@override final  String createdAt;

/// Create a copy of PermissionApplicationEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PermissionApplicationEntityCopyWith<_PermissionApplicationEntity> get copyWith => __$PermissionApplicationEntityCopyWithImpl<_PermissionApplicationEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PermissionApplicationEntity&&(identical(other.izinId, izinId) || other.izinId == izinId)&&(identical(other.karyawanId, karyawanId) || other.karyawanId == karyawanId)&&(identical(other.jenisIzin, jenisIzin) || other.jenisIzin == jenisIzin)&&(identical(other.tanggalMulai, tanggalMulai) || other.tanggalMulai == tanggalMulai)&&(identical(other.tanggalSelesai, tanggalSelesai) || other.tanggalSelesai == tanggalSelesai)&&(identical(other.keterangan, keterangan) || other.keterangan == keterangan)&&(identical(other.statusIzin, statusIzin) || other.statusIzin == statusIzin)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,izinId,karyawanId,jenisIzin,tanggalMulai,tanggalSelesai,keterangan,statusIzin,createdAt);

@override
String toString() {
  return 'PermissionApplicationEntity(izinId: $izinId, karyawanId: $karyawanId, jenisIzin: $jenisIzin, tanggalMulai: $tanggalMulai, tanggalSelesai: $tanggalSelesai, keterangan: $keterangan, statusIzin: $statusIzin, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$PermissionApplicationEntityCopyWith<$Res> implements $PermissionApplicationEntityCopyWith<$Res> {
  factory _$PermissionApplicationEntityCopyWith(_PermissionApplicationEntity value, $Res Function(_PermissionApplicationEntity) _then) = __$PermissionApplicationEntityCopyWithImpl;
@override @useResult
$Res call({
 String izinId, String karyawanId, String jenisIzin, String tanggalMulai, String tanggalSelesai, String keterangan, String statusIzin, String createdAt
});




}
/// @nodoc
class __$PermissionApplicationEntityCopyWithImpl<$Res>
    implements _$PermissionApplicationEntityCopyWith<$Res> {
  __$PermissionApplicationEntityCopyWithImpl(this._self, this._then);

  final _PermissionApplicationEntity _self;
  final $Res Function(_PermissionApplicationEntity) _then;

/// Create a copy of PermissionApplicationEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? izinId = null,Object? karyawanId = null,Object? jenisIzin = null,Object? tanggalMulai = null,Object? tanggalSelesai = null,Object? keterangan = null,Object? statusIzin = null,Object? createdAt = null,}) {
  return _then(_PermissionApplicationEntity(
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
