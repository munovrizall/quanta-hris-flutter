// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permission_history_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PermissionHistoryEntity {

 String get karyawanId; int get totalPengajuan; List<PermissionHistoryItemEntity> get riwayat;
/// Create a copy of PermissionHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PermissionHistoryEntityCopyWith<PermissionHistoryEntity> get copyWith => _$PermissionHistoryEntityCopyWithImpl<PermissionHistoryEntity>(this as PermissionHistoryEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PermissionHistoryEntity&&(identical(other.karyawanId, karyawanId) || other.karyawanId == karyawanId)&&(identical(other.totalPengajuan, totalPengajuan) || other.totalPengajuan == totalPengajuan)&&const DeepCollectionEquality().equals(other.riwayat, riwayat));
}


@override
int get hashCode => Object.hash(runtimeType,karyawanId,totalPengajuan,const DeepCollectionEquality().hash(riwayat));

@override
String toString() {
  return 'PermissionHistoryEntity(karyawanId: $karyawanId, totalPengajuan: $totalPengajuan, riwayat: $riwayat)';
}


}

/// @nodoc
abstract mixin class $PermissionHistoryEntityCopyWith<$Res>  {
  factory $PermissionHistoryEntityCopyWith(PermissionHistoryEntity value, $Res Function(PermissionHistoryEntity) _then) = _$PermissionHistoryEntityCopyWithImpl;
@useResult
$Res call({
 String karyawanId, int totalPengajuan, List<PermissionHistoryItemEntity> riwayat
});




}
/// @nodoc
class _$PermissionHistoryEntityCopyWithImpl<$Res>
    implements $PermissionHistoryEntityCopyWith<$Res> {
  _$PermissionHistoryEntityCopyWithImpl(this._self, this._then);

  final PermissionHistoryEntity _self;
  final $Res Function(PermissionHistoryEntity) _then;

/// Create a copy of PermissionHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? karyawanId = null,Object? totalPengajuan = null,Object? riwayat = null,}) {
  return _then(_self.copyWith(
karyawanId: null == karyawanId ? _self.karyawanId : karyawanId // ignore: cast_nullable_to_non_nullable
as String,totalPengajuan: null == totalPengajuan ? _self.totalPengajuan : totalPengajuan // ignore: cast_nullable_to_non_nullable
as int,riwayat: null == riwayat ? _self.riwayat : riwayat // ignore: cast_nullable_to_non_nullable
as List<PermissionHistoryItemEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [PermissionHistoryEntity].
extension PermissionHistoryEntityPatterns on PermissionHistoryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PermissionHistoryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PermissionHistoryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PermissionHistoryEntity value)  $default,){
final _that = this;
switch (_that) {
case _PermissionHistoryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PermissionHistoryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PermissionHistoryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String karyawanId,  int totalPengajuan,  List<PermissionHistoryItemEntity> riwayat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PermissionHistoryEntity() when $default != null:
return $default(_that.karyawanId,_that.totalPengajuan,_that.riwayat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String karyawanId,  int totalPengajuan,  List<PermissionHistoryItemEntity> riwayat)  $default,) {final _that = this;
switch (_that) {
case _PermissionHistoryEntity():
return $default(_that.karyawanId,_that.totalPengajuan,_that.riwayat);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String karyawanId,  int totalPengajuan,  List<PermissionHistoryItemEntity> riwayat)?  $default,) {final _that = this;
switch (_that) {
case _PermissionHistoryEntity() when $default != null:
return $default(_that.karyawanId,_that.totalPengajuan,_that.riwayat);case _:
  return null;

}
}

}

/// @nodoc


class _PermissionHistoryEntity implements PermissionHistoryEntity {
  const _PermissionHistoryEntity({required this.karyawanId, required this.totalPengajuan, required final  List<PermissionHistoryItemEntity> riwayat}): _riwayat = riwayat;
  

@override final  String karyawanId;
@override final  int totalPengajuan;
 final  List<PermissionHistoryItemEntity> _riwayat;
@override List<PermissionHistoryItemEntity> get riwayat {
  if (_riwayat is EqualUnmodifiableListView) return _riwayat;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_riwayat);
}


/// Create a copy of PermissionHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PermissionHistoryEntityCopyWith<_PermissionHistoryEntity> get copyWith => __$PermissionHistoryEntityCopyWithImpl<_PermissionHistoryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PermissionHistoryEntity&&(identical(other.karyawanId, karyawanId) || other.karyawanId == karyawanId)&&(identical(other.totalPengajuan, totalPengajuan) || other.totalPengajuan == totalPengajuan)&&const DeepCollectionEquality().equals(other._riwayat, _riwayat));
}


@override
int get hashCode => Object.hash(runtimeType,karyawanId,totalPengajuan,const DeepCollectionEquality().hash(_riwayat));

@override
String toString() {
  return 'PermissionHistoryEntity(karyawanId: $karyawanId, totalPengajuan: $totalPengajuan, riwayat: $riwayat)';
}


}

/// @nodoc
abstract mixin class _$PermissionHistoryEntityCopyWith<$Res> implements $PermissionHistoryEntityCopyWith<$Res> {
  factory _$PermissionHistoryEntityCopyWith(_PermissionHistoryEntity value, $Res Function(_PermissionHistoryEntity) _then) = __$PermissionHistoryEntityCopyWithImpl;
@override @useResult
$Res call({
 String karyawanId, int totalPengajuan, List<PermissionHistoryItemEntity> riwayat
});




}
/// @nodoc
class __$PermissionHistoryEntityCopyWithImpl<$Res>
    implements _$PermissionHistoryEntityCopyWith<$Res> {
  __$PermissionHistoryEntityCopyWithImpl(this._self, this._then);

  final _PermissionHistoryEntity _self;
  final $Res Function(_PermissionHistoryEntity) _then;

/// Create a copy of PermissionHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? karyawanId = null,Object? totalPengajuan = null,Object? riwayat = null,}) {
  return _then(_PermissionHistoryEntity(
karyawanId: null == karyawanId ? _self.karyawanId : karyawanId // ignore: cast_nullable_to_non_nullable
as String,totalPengajuan: null == totalPengajuan ? _self.totalPengajuan : totalPengajuan // ignore: cast_nullable_to_non_nullable
as int,riwayat: null == riwayat ? _self._riwayat : riwayat // ignore: cast_nullable_to_non_nullable
as List<PermissionHistoryItemEntity>,
  ));
}


}

/// @nodoc
mixin _$PermissionHistoryItemEntity {

 String get izinId; String get jenisIzin; String get tanggalMulai; String get tanggalSelesai; String get statusIzin; String? get alasanPenolakan; String? get dokumenPendukung; String? get diprosesOleh; String? get diprosesPada; String get dibuatPada; String get diperbaruiPada;
/// Create a copy of PermissionHistoryItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PermissionHistoryItemEntityCopyWith<PermissionHistoryItemEntity> get copyWith => _$PermissionHistoryItemEntityCopyWithImpl<PermissionHistoryItemEntity>(this as PermissionHistoryItemEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PermissionHistoryItemEntity&&(identical(other.izinId, izinId) || other.izinId == izinId)&&(identical(other.jenisIzin, jenisIzin) || other.jenisIzin == jenisIzin)&&(identical(other.tanggalMulai, tanggalMulai) || other.tanggalMulai == tanggalMulai)&&(identical(other.tanggalSelesai, tanggalSelesai) || other.tanggalSelesai == tanggalSelesai)&&(identical(other.statusIzin, statusIzin) || other.statusIzin == statusIzin)&&(identical(other.alasanPenolakan, alasanPenolakan) || other.alasanPenolakan == alasanPenolakan)&&(identical(other.dokumenPendukung, dokumenPendukung) || other.dokumenPendukung == dokumenPendukung)&&(identical(other.diprosesOleh, diprosesOleh) || other.diprosesOleh == diprosesOleh)&&(identical(other.diprosesPada, diprosesPada) || other.diprosesPada == diprosesPada)&&(identical(other.dibuatPada, dibuatPada) || other.dibuatPada == dibuatPada)&&(identical(other.diperbaruiPada, diperbaruiPada) || other.diperbaruiPada == diperbaruiPada));
}


@override
int get hashCode => Object.hash(runtimeType,izinId,jenisIzin,tanggalMulai,tanggalSelesai,statusIzin,alasanPenolakan,dokumenPendukung,diprosesOleh,diprosesPada,dibuatPada,diperbaruiPada);

@override
String toString() {
  return 'PermissionHistoryItemEntity(izinId: $izinId, jenisIzin: $jenisIzin, tanggalMulai: $tanggalMulai, tanggalSelesai: $tanggalSelesai, statusIzin: $statusIzin, alasanPenolakan: $alasanPenolakan, dokumenPendukung: $dokumenPendukung, diprosesOleh: $diprosesOleh, diprosesPada: $diprosesPada, dibuatPada: $dibuatPada, diperbaruiPada: $diperbaruiPada)';
}


}

/// @nodoc
abstract mixin class $PermissionHistoryItemEntityCopyWith<$Res>  {
  factory $PermissionHistoryItemEntityCopyWith(PermissionHistoryItemEntity value, $Res Function(PermissionHistoryItemEntity) _then) = _$PermissionHistoryItemEntityCopyWithImpl;
@useResult
$Res call({
 String izinId, String jenisIzin, String tanggalMulai, String tanggalSelesai, String statusIzin, String? alasanPenolakan, String? dokumenPendukung, String? diprosesOleh, String? diprosesPada, String dibuatPada, String diperbaruiPada
});




}
/// @nodoc
class _$PermissionHistoryItemEntityCopyWithImpl<$Res>
    implements $PermissionHistoryItemEntityCopyWith<$Res> {
  _$PermissionHistoryItemEntityCopyWithImpl(this._self, this._then);

  final PermissionHistoryItemEntity _self;
  final $Res Function(PermissionHistoryItemEntity) _then;

/// Create a copy of PermissionHistoryItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? izinId = null,Object? jenisIzin = null,Object? tanggalMulai = null,Object? tanggalSelesai = null,Object? statusIzin = null,Object? alasanPenolakan = freezed,Object? dokumenPendukung = freezed,Object? diprosesOleh = freezed,Object? diprosesPada = freezed,Object? dibuatPada = null,Object? diperbaruiPada = null,}) {
  return _then(_self.copyWith(
izinId: null == izinId ? _self.izinId : izinId // ignore: cast_nullable_to_non_nullable
as String,jenisIzin: null == jenisIzin ? _self.jenisIzin : jenisIzin // ignore: cast_nullable_to_non_nullable
as String,tanggalMulai: null == tanggalMulai ? _self.tanggalMulai : tanggalMulai // ignore: cast_nullable_to_non_nullable
as String,tanggalSelesai: null == tanggalSelesai ? _self.tanggalSelesai : tanggalSelesai // ignore: cast_nullable_to_non_nullable
as String,statusIzin: null == statusIzin ? _self.statusIzin : statusIzin // ignore: cast_nullable_to_non_nullable
as String,alasanPenolakan: freezed == alasanPenolakan ? _self.alasanPenolakan : alasanPenolakan // ignore: cast_nullable_to_non_nullable
as String?,dokumenPendukung: freezed == dokumenPendukung ? _self.dokumenPendukung : dokumenPendukung // ignore: cast_nullable_to_non_nullable
as String?,diprosesOleh: freezed == diprosesOleh ? _self.diprosesOleh : diprosesOleh // ignore: cast_nullable_to_non_nullable
as String?,diprosesPada: freezed == diprosesPada ? _self.diprosesPada : diprosesPada // ignore: cast_nullable_to_non_nullable
as String?,dibuatPada: null == dibuatPada ? _self.dibuatPada : dibuatPada // ignore: cast_nullable_to_non_nullable
as String,diperbaruiPada: null == diperbaruiPada ? _self.diperbaruiPada : diperbaruiPada // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PermissionHistoryItemEntity].
extension PermissionHistoryItemEntityPatterns on PermissionHistoryItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PermissionHistoryItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PermissionHistoryItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PermissionHistoryItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _PermissionHistoryItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PermissionHistoryItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PermissionHistoryItemEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String izinId,  String jenisIzin,  String tanggalMulai,  String tanggalSelesai,  String statusIzin,  String? alasanPenolakan,  String? dokumenPendukung,  String? diprosesOleh,  String? diprosesPada,  String dibuatPada,  String diperbaruiPada)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PermissionHistoryItemEntity() when $default != null:
return $default(_that.izinId,_that.jenisIzin,_that.tanggalMulai,_that.tanggalSelesai,_that.statusIzin,_that.alasanPenolakan,_that.dokumenPendukung,_that.diprosesOleh,_that.diprosesPada,_that.dibuatPada,_that.diperbaruiPada);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String izinId,  String jenisIzin,  String tanggalMulai,  String tanggalSelesai,  String statusIzin,  String? alasanPenolakan,  String? dokumenPendukung,  String? diprosesOleh,  String? diprosesPada,  String dibuatPada,  String diperbaruiPada)  $default,) {final _that = this;
switch (_that) {
case _PermissionHistoryItemEntity():
return $default(_that.izinId,_that.jenisIzin,_that.tanggalMulai,_that.tanggalSelesai,_that.statusIzin,_that.alasanPenolakan,_that.dokumenPendukung,_that.diprosesOleh,_that.diprosesPada,_that.dibuatPada,_that.diperbaruiPada);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String izinId,  String jenisIzin,  String tanggalMulai,  String tanggalSelesai,  String statusIzin,  String? alasanPenolakan,  String? dokumenPendukung,  String? diprosesOleh,  String? diprosesPada,  String dibuatPada,  String diperbaruiPada)?  $default,) {final _that = this;
switch (_that) {
case _PermissionHistoryItemEntity() when $default != null:
return $default(_that.izinId,_that.jenisIzin,_that.tanggalMulai,_that.tanggalSelesai,_that.statusIzin,_that.alasanPenolakan,_that.dokumenPendukung,_that.diprosesOleh,_that.diprosesPada,_that.dibuatPada,_that.diperbaruiPada);case _:
  return null;

}
}

}

/// @nodoc


class _PermissionHistoryItemEntity implements PermissionHistoryItemEntity {
  const _PermissionHistoryItemEntity({required this.izinId, required this.jenisIzin, required this.tanggalMulai, required this.tanggalSelesai, required this.statusIzin, this.alasanPenolakan, this.dokumenPendukung, this.diprosesOleh, this.diprosesPada, required this.dibuatPada, required this.diperbaruiPada});
  

@override final  String izinId;
@override final  String jenisIzin;
@override final  String tanggalMulai;
@override final  String tanggalSelesai;
@override final  String statusIzin;
@override final  String? alasanPenolakan;
@override final  String? dokumenPendukung;
@override final  String? diprosesOleh;
@override final  String? diprosesPada;
@override final  String dibuatPada;
@override final  String diperbaruiPada;

/// Create a copy of PermissionHistoryItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PermissionHistoryItemEntityCopyWith<_PermissionHistoryItemEntity> get copyWith => __$PermissionHistoryItemEntityCopyWithImpl<_PermissionHistoryItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PermissionHistoryItemEntity&&(identical(other.izinId, izinId) || other.izinId == izinId)&&(identical(other.jenisIzin, jenisIzin) || other.jenisIzin == jenisIzin)&&(identical(other.tanggalMulai, tanggalMulai) || other.tanggalMulai == tanggalMulai)&&(identical(other.tanggalSelesai, tanggalSelesai) || other.tanggalSelesai == tanggalSelesai)&&(identical(other.statusIzin, statusIzin) || other.statusIzin == statusIzin)&&(identical(other.alasanPenolakan, alasanPenolakan) || other.alasanPenolakan == alasanPenolakan)&&(identical(other.dokumenPendukung, dokumenPendukung) || other.dokumenPendukung == dokumenPendukung)&&(identical(other.diprosesOleh, diprosesOleh) || other.diprosesOleh == diprosesOleh)&&(identical(other.diprosesPada, diprosesPada) || other.diprosesPada == diprosesPada)&&(identical(other.dibuatPada, dibuatPada) || other.dibuatPada == dibuatPada)&&(identical(other.diperbaruiPada, diperbaruiPada) || other.diperbaruiPada == diperbaruiPada));
}


@override
int get hashCode => Object.hash(runtimeType,izinId,jenisIzin,tanggalMulai,tanggalSelesai,statusIzin,alasanPenolakan,dokumenPendukung,diprosesOleh,diprosesPada,dibuatPada,diperbaruiPada);

@override
String toString() {
  return 'PermissionHistoryItemEntity(izinId: $izinId, jenisIzin: $jenisIzin, tanggalMulai: $tanggalMulai, tanggalSelesai: $tanggalSelesai, statusIzin: $statusIzin, alasanPenolakan: $alasanPenolakan, dokumenPendukung: $dokumenPendukung, diprosesOleh: $diprosesOleh, diprosesPada: $diprosesPada, dibuatPada: $dibuatPada, diperbaruiPada: $diperbaruiPada)';
}


}

/// @nodoc
abstract mixin class _$PermissionHistoryItemEntityCopyWith<$Res> implements $PermissionHistoryItemEntityCopyWith<$Res> {
  factory _$PermissionHistoryItemEntityCopyWith(_PermissionHistoryItemEntity value, $Res Function(_PermissionHistoryItemEntity) _then) = __$PermissionHistoryItemEntityCopyWithImpl;
@override @useResult
$Res call({
 String izinId, String jenisIzin, String tanggalMulai, String tanggalSelesai, String statusIzin, String? alasanPenolakan, String? dokumenPendukung, String? diprosesOleh, String? diprosesPada, String dibuatPada, String diperbaruiPada
});




}
/// @nodoc
class __$PermissionHistoryItemEntityCopyWithImpl<$Res>
    implements _$PermissionHistoryItemEntityCopyWith<$Res> {
  __$PermissionHistoryItemEntityCopyWithImpl(this._self, this._then);

  final _PermissionHistoryItemEntity _self;
  final $Res Function(_PermissionHistoryItemEntity) _then;

/// Create a copy of PermissionHistoryItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? izinId = null,Object? jenisIzin = null,Object? tanggalMulai = null,Object? tanggalSelesai = null,Object? statusIzin = null,Object? alasanPenolakan = freezed,Object? dokumenPendukung = freezed,Object? diprosesOleh = freezed,Object? diprosesPada = freezed,Object? dibuatPada = null,Object? diperbaruiPada = null,}) {
  return _then(_PermissionHistoryItemEntity(
izinId: null == izinId ? _self.izinId : izinId // ignore: cast_nullable_to_non_nullable
as String,jenisIzin: null == jenisIzin ? _self.jenisIzin : jenisIzin // ignore: cast_nullable_to_non_nullable
as String,tanggalMulai: null == tanggalMulai ? _self.tanggalMulai : tanggalMulai // ignore: cast_nullable_to_non_nullable
as String,tanggalSelesai: null == tanggalSelesai ? _self.tanggalSelesai : tanggalSelesai // ignore: cast_nullable_to_non_nullable
as String,statusIzin: null == statusIzin ? _self.statusIzin : statusIzin // ignore: cast_nullable_to_non_nullable
as String,alasanPenolakan: freezed == alasanPenolakan ? _self.alasanPenolakan : alasanPenolakan // ignore: cast_nullable_to_non_nullable
as String?,dokumenPendukung: freezed == dokumenPendukung ? _self.dokumenPendukung : dokumenPendukung // ignore: cast_nullable_to_non_nullable
as String?,diprosesOleh: freezed == diprosesOleh ? _self.diprosesOleh : diprosesOleh // ignore: cast_nullable_to_non_nullable
as String?,diprosesPada: freezed == diprosesPada ? _self.diprosesPada : diprosesPada // ignore: cast_nullable_to_non_nullable
as String?,dibuatPada: null == dibuatPada ? _self.dibuatPada : dibuatPada // ignore: cast_nullable_to_non_nullable
as String,diperbaruiPada: null == diperbaruiPada ? _self.diperbaruiPada : diperbaruiPada // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
