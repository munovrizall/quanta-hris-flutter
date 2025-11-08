// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_history_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LeaveHistoryEntity {

 String get karyawanId; int get totalPengajuan; int get sisaKuotaCuti; List<LeaveHistoryItemEntity> get riwayat;
/// Create a copy of LeaveHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaveHistoryEntityCopyWith<LeaveHistoryEntity> get copyWith => _$LeaveHistoryEntityCopyWithImpl<LeaveHistoryEntity>(this as LeaveHistoryEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaveHistoryEntity&&(identical(other.karyawanId, karyawanId) || other.karyawanId == karyawanId)&&(identical(other.totalPengajuan, totalPengajuan) || other.totalPengajuan == totalPengajuan)&&(identical(other.sisaKuotaCuti, sisaKuotaCuti) || other.sisaKuotaCuti == sisaKuotaCuti)&&const DeepCollectionEquality().equals(other.riwayat, riwayat));
}


@override
int get hashCode => Object.hash(runtimeType,karyawanId,totalPengajuan,sisaKuotaCuti,const DeepCollectionEquality().hash(riwayat));

@override
String toString() {
  return 'LeaveHistoryEntity(karyawanId: $karyawanId, totalPengajuan: $totalPengajuan, sisaKuotaCuti: $sisaKuotaCuti, riwayat: $riwayat)';
}


}

/// @nodoc
abstract mixin class $LeaveHistoryEntityCopyWith<$Res>  {
  factory $LeaveHistoryEntityCopyWith(LeaveHistoryEntity value, $Res Function(LeaveHistoryEntity) _then) = _$LeaveHistoryEntityCopyWithImpl;
@useResult
$Res call({
 String karyawanId, int totalPengajuan, int sisaKuotaCuti, List<LeaveHistoryItemEntity> riwayat
});




}
/// @nodoc
class _$LeaveHistoryEntityCopyWithImpl<$Res>
    implements $LeaveHistoryEntityCopyWith<$Res> {
  _$LeaveHistoryEntityCopyWithImpl(this._self, this._then);

  final LeaveHistoryEntity _self;
  final $Res Function(LeaveHistoryEntity) _then;

/// Create a copy of LeaveHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? karyawanId = null,Object? totalPengajuan = null,Object? sisaKuotaCuti = null,Object? riwayat = null,}) {
  return _then(_self.copyWith(
karyawanId: null == karyawanId ? _self.karyawanId : karyawanId // ignore: cast_nullable_to_non_nullable
as String,totalPengajuan: null == totalPengajuan ? _self.totalPengajuan : totalPengajuan // ignore: cast_nullable_to_non_nullable
as int,sisaKuotaCuti: null == sisaKuotaCuti ? _self.sisaKuotaCuti : sisaKuotaCuti // ignore: cast_nullable_to_non_nullable
as int,riwayat: null == riwayat ? _self.riwayat : riwayat // ignore: cast_nullable_to_non_nullable
as List<LeaveHistoryItemEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [LeaveHistoryEntity].
extension LeaveHistoryEntityPatterns on LeaveHistoryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaveHistoryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaveHistoryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaveHistoryEntity value)  $default,){
final _that = this;
switch (_that) {
case _LeaveHistoryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaveHistoryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _LeaveHistoryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String karyawanId,  int totalPengajuan,  int sisaKuotaCuti,  List<LeaveHistoryItemEntity> riwayat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaveHistoryEntity() when $default != null:
return $default(_that.karyawanId,_that.totalPengajuan,_that.sisaKuotaCuti,_that.riwayat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String karyawanId,  int totalPengajuan,  int sisaKuotaCuti,  List<LeaveHistoryItemEntity> riwayat)  $default,) {final _that = this;
switch (_that) {
case _LeaveHistoryEntity():
return $default(_that.karyawanId,_that.totalPengajuan,_that.sisaKuotaCuti,_that.riwayat);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String karyawanId,  int totalPengajuan,  int sisaKuotaCuti,  List<LeaveHistoryItemEntity> riwayat)?  $default,) {final _that = this;
switch (_that) {
case _LeaveHistoryEntity() when $default != null:
return $default(_that.karyawanId,_that.totalPengajuan,_that.sisaKuotaCuti,_that.riwayat);case _:
  return null;

}
}

}

/// @nodoc


class _LeaveHistoryEntity implements LeaveHistoryEntity {
  const _LeaveHistoryEntity({required this.karyawanId, required this.totalPengajuan, required this.sisaKuotaCuti, required final  List<LeaveHistoryItemEntity> riwayat}): _riwayat = riwayat;
  

@override final  String karyawanId;
@override final  int totalPengajuan;
@override final  int sisaKuotaCuti;
 final  List<LeaveHistoryItemEntity> _riwayat;
@override List<LeaveHistoryItemEntity> get riwayat {
  if (_riwayat is EqualUnmodifiableListView) return _riwayat;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_riwayat);
}


/// Create a copy of LeaveHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaveHistoryEntityCopyWith<_LeaveHistoryEntity> get copyWith => __$LeaveHistoryEntityCopyWithImpl<_LeaveHistoryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaveHistoryEntity&&(identical(other.karyawanId, karyawanId) || other.karyawanId == karyawanId)&&(identical(other.totalPengajuan, totalPengajuan) || other.totalPengajuan == totalPengajuan)&&(identical(other.sisaKuotaCuti, sisaKuotaCuti) || other.sisaKuotaCuti == sisaKuotaCuti)&&const DeepCollectionEquality().equals(other._riwayat, _riwayat));
}


@override
int get hashCode => Object.hash(runtimeType,karyawanId,totalPengajuan,sisaKuotaCuti,const DeepCollectionEquality().hash(_riwayat));

@override
String toString() {
  return 'LeaveHistoryEntity(karyawanId: $karyawanId, totalPengajuan: $totalPengajuan, sisaKuotaCuti: $sisaKuotaCuti, riwayat: $riwayat)';
}


}

/// @nodoc
abstract mixin class _$LeaveHistoryEntityCopyWith<$Res> implements $LeaveHistoryEntityCopyWith<$Res> {
  factory _$LeaveHistoryEntityCopyWith(_LeaveHistoryEntity value, $Res Function(_LeaveHistoryEntity) _then) = __$LeaveHistoryEntityCopyWithImpl;
@override @useResult
$Res call({
 String karyawanId, int totalPengajuan, int sisaKuotaCuti, List<LeaveHistoryItemEntity> riwayat
});




}
/// @nodoc
class __$LeaveHistoryEntityCopyWithImpl<$Res>
    implements _$LeaveHistoryEntityCopyWith<$Res> {
  __$LeaveHistoryEntityCopyWithImpl(this._self, this._then);

  final _LeaveHistoryEntity _self;
  final $Res Function(_LeaveHistoryEntity) _then;

/// Create a copy of LeaveHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? karyawanId = null,Object? totalPengajuan = null,Object? sisaKuotaCuti = null,Object? riwayat = null,}) {
  return _then(_LeaveHistoryEntity(
karyawanId: null == karyawanId ? _self.karyawanId : karyawanId // ignore: cast_nullable_to_non_nullable
as String,totalPengajuan: null == totalPengajuan ? _self.totalPengajuan : totalPengajuan // ignore: cast_nullable_to_non_nullable
as int,sisaKuotaCuti: null == sisaKuotaCuti ? _self.sisaKuotaCuti : sisaKuotaCuti // ignore: cast_nullable_to_non_nullable
as int,riwayat: null == riwayat ? _self._riwayat : riwayat // ignore: cast_nullable_to_non_nullable
as List<LeaveHistoryItemEntity>,
  ));
}


}

/// @nodoc
mixin _$LeaveHistoryItemEntity {

 String get cutiId; String get jenisCuti; String get tanggalMulai; String get tanggalSelesai; int get durasiHari; String get statusCuti; String? get alasanPenolakan; String? get dokumenPendukung; String? get diprosesOleh; String? get diprosesPada; String get dibuatPada; String get diperbaruiPada;
/// Create a copy of LeaveHistoryItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaveHistoryItemEntityCopyWith<LeaveHistoryItemEntity> get copyWith => _$LeaveHistoryItemEntityCopyWithImpl<LeaveHistoryItemEntity>(this as LeaveHistoryItemEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaveHistoryItemEntity&&(identical(other.cutiId, cutiId) || other.cutiId == cutiId)&&(identical(other.jenisCuti, jenisCuti) || other.jenisCuti == jenisCuti)&&(identical(other.tanggalMulai, tanggalMulai) || other.tanggalMulai == tanggalMulai)&&(identical(other.tanggalSelesai, tanggalSelesai) || other.tanggalSelesai == tanggalSelesai)&&(identical(other.durasiHari, durasiHari) || other.durasiHari == durasiHari)&&(identical(other.statusCuti, statusCuti) || other.statusCuti == statusCuti)&&(identical(other.alasanPenolakan, alasanPenolakan) || other.alasanPenolakan == alasanPenolakan)&&(identical(other.dokumenPendukung, dokumenPendukung) || other.dokumenPendukung == dokumenPendukung)&&(identical(other.diprosesOleh, diprosesOleh) || other.diprosesOleh == diprosesOleh)&&(identical(other.diprosesPada, diprosesPada) || other.diprosesPada == diprosesPada)&&(identical(other.dibuatPada, dibuatPada) || other.dibuatPada == dibuatPada)&&(identical(other.diperbaruiPada, diperbaruiPada) || other.diperbaruiPada == diperbaruiPada));
}


@override
int get hashCode => Object.hash(runtimeType,cutiId,jenisCuti,tanggalMulai,tanggalSelesai,durasiHari,statusCuti,alasanPenolakan,dokumenPendukung,diprosesOleh,diprosesPada,dibuatPada,diperbaruiPada);

@override
String toString() {
  return 'LeaveHistoryItemEntity(cutiId: $cutiId, jenisCuti: $jenisCuti, tanggalMulai: $tanggalMulai, tanggalSelesai: $tanggalSelesai, durasiHari: $durasiHari, statusCuti: $statusCuti, alasanPenolakan: $alasanPenolakan, dokumenPendukung: $dokumenPendukung, diprosesOleh: $diprosesOleh, diprosesPada: $diprosesPada, dibuatPada: $dibuatPada, diperbaruiPada: $diperbaruiPada)';
}


}

/// @nodoc
abstract mixin class $LeaveHistoryItemEntityCopyWith<$Res>  {
  factory $LeaveHistoryItemEntityCopyWith(LeaveHistoryItemEntity value, $Res Function(LeaveHistoryItemEntity) _then) = _$LeaveHistoryItemEntityCopyWithImpl;
@useResult
$Res call({
 String cutiId, String jenisCuti, String tanggalMulai, String tanggalSelesai, int durasiHari, String statusCuti, String? alasanPenolakan, String? dokumenPendukung, String? diprosesOleh, String? diprosesPada, String dibuatPada, String diperbaruiPada
});




}
/// @nodoc
class _$LeaveHistoryItemEntityCopyWithImpl<$Res>
    implements $LeaveHistoryItemEntityCopyWith<$Res> {
  _$LeaveHistoryItemEntityCopyWithImpl(this._self, this._then);

  final LeaveHistoryItemEntity _self;
  final $Res Function(LeaveHistoryItemEntity) _then;

/// Create a copy of LeaveHistoryItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cutiId = null,Object? jenisCuti = null,Object? tanggalMulai = null,Object? tanggalSelesai = null,Object? durasiHari = null,Object? statusCuti = null,Object? alasanPenolakan = freezed,Object? dokumenPendukung = freezed,Object? diprosesOleh = freezed,Object? diprosesPada = freezed,Object? dibuatPada = null,Object? diperbaruiPada = null,}) {
  return _then(_self.copyWith(
cutiId: null == cutiId ? _self.cutiId : cutiId // ignore: cast_nullable_to_non_nullable
as String,jenisCuti: null == jenisCuti ? _self.jenisCuti : jenisCuti // ignore: cast_nullable_to_non_nullable
as String,tanggalMulai: null == tanggalMulai ? _self.tanggalMulai : tanggalMulai // ignore: cast_nullable_to_non_nullable
as String,tanggalSelesai: null == tanggalSelesai ? _self.tanggalSelesai : tanggalSelesai // ignore: cast_nullable_to_non_nullable
as String,durasiHari: null == durasiHari ? _self.durasiHari : durasiHari // ignore: cast_nullable_to_non_nullable
as int,statusCuti: null == statusCuti ? _self.statusCuti : statusCuti // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [LeaveHistoryItemEntity].
extension LeaveHistoryItemEntityPatterns on LeaveHistoryItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaveHistoryItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaveHistoryItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaveHistoryItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _LeaveHistoryItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaveHistoryItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _LeaveHistoryItemEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String cutiId,  String jenisCuti,  String tanggalMulai,  String tanggalSelesai,  int durasiHari,  String statusCuti,  String? alasanPenolakan,  String? dokumenPendukung,  String? diprosesOleh,  String? diprosesPada,  String dibuatPada,  String diperbaruiPada)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaveHistoryItemEntity() when $default != null:
return $default(_that.cutiId,_that.jenisCuti,_that.tanggalMulai,_that.tanggalSelesai,_that.durasiHari,_that.statusCuti,_that.alasanPenolakan,_that.dokumenPendukung,_that.diprosesOleh,_that.diprosesPada,_that.dibuatPada,_that.diperbaruiPada);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String cutiId,  String jenisCuti,  String tanggalMulai,  String tanggalSelesai,  int durasiHari,  String statusCuti,  String? alasanPenolakan,  String? dokumenPendukung,  String? diprosesOleh,  String? diprosesPada,  String dibuatPada,  String diperbaruiPada)  $default,) {final _that = this;
switch (_that) {
case _LeaveHistoryItemEntity():
return $default(_that.cutiId,_that.jenisCuti,_that.tanggalMulai,_that.tanggalSelesai,_that.durasiHari,_that.statusCuti,_that.alasanPenolakan,_that.dokumenPendukung,_that.diprosesOleh,_that.diprosesPada,_that.dibuatPada,_that.diperbaruiPada);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String cutiId,  String jenisCuti,  String tanggalMulai,  String tanggalSelesai,  int durasiHari,  String statusCuti,  String? alasanPenolakan,  String? dokumenPendukung,  String? diprosesOleh,  String? diprosesPada,  String dibuatPada,  String diperbaruiPada)?  $default,) {final _that = this;
switch (_that) {
case _LeaveHistoryItemEntity() when $default != null:
return $default(_that.cutiId,_that.jenisCuti,_that.tanggalMulai,_that.tanggalSelesai,_that.durasiHari,_that.statusCuti,_that.alasanPenolakan,_that.dokumenPendukung,_that.diprosesOleh,_that.diprosesPada,_that.dibuatPada,_that.diperbaruiPada);case _:
  return null;

}
}

}

/// @nodoc


class _LeaveHistoryItemEntity implements LeaveHistoryItemEntity {
  const _LeaveHistoryItemEntity({required this.cutiId, required this.jenisCuti, required this.tanggalMulai, required this.tanggalSelesai, required this.durasiHari, required this.statusCuti, this.alasanPenolakan, this.dokumenPendukung, this.diprosesOleh, this.diprosesPada, required this.dibuatPada, required this.diperbaruiPada});
  

@override final  String cutiId;
@override final  String jenisCuti;
@override final  String tanggalMulai;
@override final  String tanggalSelesai;
@override final  int durasiHari;
@override final  String statusCuti;
@override final  String? alasanPenolakan;
@override final  String? dokumenPendukung;
@override final  String? diprosesOleh;
@override final  String? diprosesPada;
@override final  String dibuatPada;
@override final  String diperbaruiPada;

/// Create a copy of LeaveHistoryItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaveHistoryItemEntityCopyWith<_LeaveHistoryItemEntity> get copyWith => __$LeaveHistoryItemEntityCopyWithImpl<_LeaveHistoryItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaveHistoryItemEntity&&(identical(other.cutiId, cutiId) || other.cutiId == cutiId)&&(identical(other.jenisCuti, jenisCuti) || other.jenisCuti == jenisCuti)&&(identical(other.tanggalMulai, tanggalMulai) || other.tanggalMulai == tanggalMulai)&&(identical(other.tanggalSelesai, tanggalSelesai) || other.tanggalSelesai == tanggalSelesai)&&(identical(other.durasiHari, durasiHari) || other.durasiHari == durasiHari)&&(identical(other.statusCuti, statusCuti) || other.statusCuti == statusCuti)&&(identical(other.alasanPenolakan, alasanPenolakan) || other.alasanPenolakan == alasanPenolakan)&&(identical(other.dokumenPendukung, dokumenPendukung) || other.dokumenPendukung == dokumenPendukung)&&(identical(other.diprosesOleh, diprosesOleh) || other.diprosesOleh == diprosesOleh)&&(identical(other.diprosesPada, diprosesPada) || other.diprosesPada == diprosesPada)&&(identical(other.dibuatPada, dibuatPada) || other.dibuatPada == dibuatPada)&&(identical(other.diperbaruiPada, diperbaruiPada) || other.diperbaruiPada == diperbaruiPada));
}


@override
int get hashCode => Object.hash(runtimeType,cutiId,jenisCuti,tanggalMulai,tanggalSelesai,durasiHari,statusCuti,alasanPenolakan,dokumenPendukung,diprosesOleh,diprosesPada,dibuatPada,diperbaruiPada);

@override
String toString() {
  return 'LeaveHistoryItemEntity(cutiId: $cutiId, jenisCuti: $jenisCuti, tanggalMulai: $tanggalMulai, tanggalSelesai: $tanggalSelesai, durasiHari: $durasiHari, statusCuti: $statusCuti, alasanPenolakan: $alasanPenolakan, dokumenPendukung: $dokumenPendukung, diprosesOleh: $diprosesOleh, diprosesPada: $diprosesPada, dibuatPada: $dibuatPada, diperbaruiPada: $diperbaruiPada)';
}


}

/// @nodoc
abstract mixin class _$LeaveHistoryItemEntityCopyWith<$Res> implements $LeaveHistoryItemEntityCopyWith<$Res> {
  factory _$LeaveHistoryItemEntityCopyWith(_LeaveHistoryItemEntity value, $Res Function(_LeaveHistoryItemEntity) _then) = __$LeaveHistoryItemEntityCopyWithImpl;
@override @useResult
$Res call({
 String cutiId, String jenisCuti, String tanggalMulai, String tanggalSelesai, int durasiHari, String statusCuti, String? alasanPenolakan, String? dokumenPendukung, String? diprosesOleh, String? diprosesPada, String dibuatPada, String diperbaruiPada
});




}
/// @nodoc
class __$LeaveHistoryItemEntityCopyWithImpl<$Res>
    implements _$LeaveHistoryItemEntityCopyWith<$Res> {
  __$LeaveHistoryItemEntityCopyWithImpl(this._self, this._then);

  final _LeaveHistoryItemEntity _self;
  final $Res Function(_LeaveHistoryItemEntity) _then;

/// Create a copy of LeaveHistoryItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cutiId = null,Object? jenisCuti = null,Object? tanggalMulai = null,Object? tanggalSelesai = null,Object? durasiHari = null,Object? statusCuti = null,Object? alasanPenolakan = freezed,Object? dokumenPendukung = freezed,Object? diprosesOleh = freezed,Object? diprosesPada = freezed,Object? dibuatPada = null,Object? diperbaruiPada = null,}) {
  return _then(_LeaveHistoryItemEntity(
cutiId: null == cutiId ? _self.cutiId : cutiId // ignore: cast_nullable_to_non_nullable
as String,jenisCuti: null == jenisCuti ? _self.jenisCuti : jenisCuti // ignore: cast_nullable_to_non_nullable
as String,tanggalMulai: null == tanggalMulai ? _self.tanggalMulai : tanggalMulai // ignore: cast_nullable_to_non_nullable
as String,tanggalSelesai: null == tanggalSelesai ? _self.tanggalSelesai : tanggalSelesai // ignore: cast_nullable_to_non_nullable
as String,durasiHari: null == durasiHari ? _self.durasiHari : durasiHari // ignore: cast_nullable_to_non_nullable
as int,statusCuti: null == statusCuti ? _self.statusCuti : statusCuti // ignore: cast_nullable_to_non_nullable
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
