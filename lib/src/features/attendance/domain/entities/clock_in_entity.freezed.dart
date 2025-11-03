// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clock_in_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClockInEntity {

 String get absensiId; String get karyawanId; String get tanggal; String get waktuMasuk; String get statusMasuk; String get statusAbsensi; String get durasiTelat; String get fotoMasuk; ClockInBranchEntity get cabang; String get distanceFromBranch;
/// Create a copy of ClockInEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClockInEntityCopyWith<ClockInEntity> get copyWith => _$ClockInEntityCopyWithImpl<ClockInEntity>(this as ClockInEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClockInEntity&&(identical(other.absensiId, absensiId) || other.absensiId == absensiId)&&(identical(other.karyawanId, karyawanId) || other.karyawanId == karyawanId)&&(identical(other.tanggal, tanggal) || other.tanggal == tanggal)&&(identical(other.waktuMasuk, waktuMasuk) || other.waktuMasuk == waktuMasuk)&&(identical(other.statusMasuk, statusMasuk) || other.statusMasuk == statusMasuk)&&(identical(other.statusAbsensi, statusAbsensi) || other.statusAbsensi == statusAbsensi)&&(identical(other.durasiTelat, durasiTelat) || other.durasiTelat == durasiTelat)&&(identical(other.fotoMasuk, fotoMasuk) || other.fotoMasuk == fotoMasuk)&&(identical(other.cabang, cabang) || other.cabang == cabang)&&(identical(other.distanceFromBranch, distanceFromBranch) || other.distanceFromBranch == distanceFromBranch));
}


@override
int get hashCode => Object.hash(runtimeType,absensiId,karyawanId,tanggal,waktuMasuk,statusMasuk,statusAbsensi,durasiTelat,fotoMasuk,cabang,distanceFromBranch);

@override
String toString() {
  return 'ClockInEntity(absensiId: $absensiId, karyawanId: $karyawanId, tanggal: $tanggal, waktuMasuk: $waktuMasuk, statusMasuk: $statusMasuk, statusAbsensi: $statusAbsensi, durasiTelat: $durasiTelat, fotoMasuk: $fotoMasuk, cabang: $cabang, distanceFromBranch: $distanceFromBranch)';
}


}

/// @nodoc
abstract mixin class $ClockInEntityCopyWith<$Res>  {
  factory $ClockInEntityCopyWith(ClockInEntity value, $Res Function(ClockInEntity) _then) = _$ClockInEntityCopyWithImpl;
@useResult
$Res call({
 String absensiId, String karyawanId, String tanggal, String waktuMasuk, String statusMasuk, String statusAbsensi, String durasiTelat, String fotoMasuk, ClockInBranchEntity cabang, String distanceFromBranch
});


$ClockInBranchEntityCopyWith<$Res> get cabang;

}
/// @nodoc
class _$ClockInEntityCopyWithImpl<$Res>
    implements $ClockInEntityCopyWith<$Res> {
  _$ClockInEntityCopyWithImpl(this._self, this._then);

  final ClockInEntity _self;
  final $Res Function(ClockInEntity) _then;

/// Create a copy of ClockInEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? absensiId = null,Object? karyawanId = null,Object? tanggal = null,Object? waktuMasuk = null,Object? statusMasuk = null,Object? statusAbsensi = null,Object? durasiTelat = null,Object? fotoMasuk = null,Object? cabang = null,Object? distanceFromBranch = null,}) {
  return _then(_self.copyWith(
absensiId: null == absensiId ? _self.absensiId : absensiId // ignore: cast_nullable_to_non_nullable
as String,karyawanId: null == karyawanId ? _self.karyawanId : karyawanId // ignore: cast_nullable_to_non_nullable
as String,tanggal: null == tanggal ? _self.tanggal : tanggal // ignore: cast_nullable_to_non_nullable
as String,waktuMasuk: null == waktuMasuk ? _self.waktuMasuk : waktuMasuk // ignore: cast_nullable_to_non_nullable
as String,statusMasuk: null == statusMasuk ? _self.statusMasuk : statusMasuk // ignore: cast_nullable_to_non_nullable
as String,statusAbsensi: null == statusAbsensi ? _self.statusAbsensi : statusAbsensi // ignore: cast_nullable_to_non_nullable
as String,durasiTelat: null == durasiTelat ? _self.durasiTelat : durasiTelat // ignore: cast_nullable_to_non_nullable
as String,fotoMasuk: null == fotoMasuk ? _self.fotoMasuk : fotoMasuk // ignore: cast_nullable_to_non_nullable
as String,cabang: null == cabang ? _self.cabang : cabang // ignore: cast_nullable_to_non_nullable
as ClockInBranchEntity,distanceFromBranch: null == distanceFromBranch ? _self.distanceFromBranch : distanceFromBranch // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of ClockInEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClockInBranchEntityCopyWith<$Res> get cabang {
  
  return $ClockInBranchEntityCopyWith<$Res>(_self.cabang, (value) {
    return _then(_self.copyWith(cabang: value));
  });
}
}


/// Adds pattern-matching-related methods to [ClockInEntity].
extension ClockInEntityPatterns on ClockInEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClockInEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClockInEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClockInEntity value)  $default,){
final _that = this;
switch (_that) {
case _ClockInEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClockInEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ClockInEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String absensiId,  String karyawanId,  String tanggal,  String waktuMasuk,  String statusMasuk,  String statusAbsensi,  String durasiTelat,  String fotoMasuk,  ClockInBranchEntity cabang,  String distanceFromBranch)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClockInEntity() when $default != null:
return $default(_that.absensiId,_that.karyawanId,_that.tanggal,_that.waktuMasuk,_that.statusMasuk,_that.statusAbsensi,_that.durasiTelat,_that.fotoMasuk,_that.cabang,_that.distanceFromBranch);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String absensiId,  String karyawanId,  String tanggal,  String waktuMasuk,  String statusMasuk,  String statusAbsensi,  String durasiTelat,  String fotoMasuk,  ClockInBranchEntity cabang,  String distanceFromBranch)  $default,) {final _that = this;
switch (_that) {
case _ClockInEntity():
return $default(_that.absensiId,_that.karyawanId,_that.tanggal,_that.waktuMasuk,_that.statusMasuk,_that.statusAbsensi,_that.durasiTelat,_that.fotoMasuk,_that.cabang,_that.distanceFromBranch);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String absensiId,  String karyawanId,  String tanggal,  String waktuMasuk,  String statusMasuk,  String statusAbsensi,  String durasiTelat,  String fotoMasuk,  ClockInBranchEntity cabang,  String distanceFromBranch)?  $default,) {final _that = this;
switch (_that) {
case _ClockInEntity() when $default != null:
return $default(_that.absensiId,_that.karyawanId,_that.tanggal,_that.waktuMasuk,_that.statusMasuk,_that.statusAbsensi,_that.durasiTelat,_that.fotoMasuk,_that.cabang,_that.distanceFromBranch);case _:
  return null;

}
}

}

/// @nodoc


class _ClockInEntity implements ClockInEntity {
  const _ClockInEntity({required this.absensiId, required this.karyawanId, required this.tanggal, required this.waktuMasuk, required this.statusMasuk, required this.statusAbsensi, required this.durasiTelat, required this.fotoMasuk, required this.cabang, required this.distanceFromBranch});
  

@override final  String absensiId;
@override final  String karyawanId;
@override final  String tanggal;
@override final  String waktuMasuk;
@override final  String statusMasuk;
@override final  String statusAbsensi;
@override final  String durasiTelat;
@override final  String fotoMasuk;
@override final  ClockInBranchEntity cabang;
@override final  String distanceFromBranch;

/// Create a copy of ClockInEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClockInEntityCopyWith<_ClockInEntity> get copyWith => __$ClockInEntityCopyWithImpl<_ClockInEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClockInEntity&&(identical(other.absensiId, absensiId) || other.absensiId == absensiId)&&(identical(other.karyawanId, karyawanId) || other.karyawanId == karyawanId)&&(identical(other.tanggal, tanggal) || other.tanggal == tanggal)&&(identical(other.waktuMasuk, waktuMasuk) || other.waktuMasuk == waktuMasuk)&&(identical(other.statusMasuk, statusMasuk) || other.statusMasuk == statusMasuk)&&(identical(other.statusAbsensi, statusAbsensi) || other.statusAbsensi == statusAbsensi)&&(identical(other.durasiTelat, durasiTelat) || other.durasiTelat == durasiTelat)&&(identical(other.fotoMasuk, fotoMasuk) || other.fotoMasuk == fotoMasuk)&&(identical(other.cabang, cabang) || other.cabang == cabang)&&(identical(other.distanceFromBranch, distanceFromBranch) || other.distanceFromBranch == distanceFromBranch));
}


@override
int get hashCode => Object.hash(runtimeType,absensiId,karyawanId,tanggal,waktuMasuk,statusMasuk,statusAbsensi,durasiTelat,fotoMasuk,cabang,distanceFromBranch);

@override
String toString() {
  return 'ClockInEntity(absensiId: $absensiId, karyawanId: $karyawanId, tanggal: $tanggal, waktuMasuk: $waktuMasuk, statusMasuk: $statusMasuk, statusAbsensi: $statusAbsensi, durasiTelat: $durasiTelat, fotoMasuk: $fotoMasuk, cabang: $cabang, distanceFromBranch: $distanceFromBranch)';
}


}

/// @nodoc
abstract mixin class _$ClockInEntityCopyWith<$Res> implements $ClockInEntityCopyWith<$Res> {
  factory _$ClockInEntityCopyWith(_ClockInEntity value, $Res Function(_ClockInEntity) _then) = __$ClockInEntityCopyWithImpl;
@override @useResult
$Res call({
 String absensiId, String karyawanId, String tanggal, String waktuMasuk, String statusMasuk, String statusAbsensi, String durasiTelat, String fotoMasuk, ClockInBranchEntity cabang, String distanceFromBranch
});


@override $ClockInBranchEntityCopyWith<$Res> get cabang;

}
/// @nodoc
class __$ClockInEntityCopyWithImpl<$Res>
    implements _$ClockInEntityCopyWith<$Res> {
  __$ClockInEntityCopyWithImpl(this._self, this._then);

  final _ClockInEntity _self;
  final $Res Function(_ClockInEntity) _then;

/// Create a copy of ClockInEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? absensiId = null,Object? karyawanId = null,Object? tanggal = null,Object? waktuMasuk = null,Object? statusMasuk = null,Object? statusAbsensi = null,Object? durasiTelat = null,Object? fotoMasuk = null,Object? cabang = null,Object? distanceFromBranch = null,}) {
  return _then(_ClockInEntity(
absensiId: null == absensiId ? _self.absensiId : absensiId // ignore: cast_nullable_to_non_nullable
as String,karyawanId: null == karyawanId ? _self.karyawanId : karyawanId // ignore: cast_nullable_to_non_nullable
as String,tanggal: null == tanggal ? _self.tanggal : tanggal // ignore: cast_nullable_to_non_nullable
as String,waktuMasuk: null == waktuMasuk ? _self.waktuMasuk : waktuMasuk // ignore: cast_nullable_to_non_nullable
as String,statusMasuk: null == statusMasuk ? _self.statusMasuk : statusMasuk // ignore: cast_nullable_to_non_nullable
as String,statusAbsensi: null == statusAbsensi ? _self.statusAbsensi : statusAbsensi // ignore: cast_nullable_to_non_nullable
as String,durasiTelat: null == durasiTelat ? _self.durasiTelat : durasiTelat // ignore: cast_nullable_to_non_nullable
as String,fotoMasuk: null == fotoMasuk ? _self.fotoMasuk : fotoMasuk // ignore: cast_nullable_to_non_nullable
as String,cabang: null == cabang ? _self.cabang : cabang // ignore: cast_nullable_to_non_nullable
as ClockInBranchEntity,distanceFromBranch: null == distanceFromBranch ? _self.distanceFromBranch : distanceFromBranch // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of ClockInEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClockInBranchEntityCopyWith<$Res> get cabang {
  
  return $ClockInBranchEntityCopyWith<$Res>(_self.cabang, (value) {
    return _then(_self.copyWith(cabang: value));
  });
}
}

/// @nodoc
mixin _$ClockInBranchEntity {

 String get cabangId; String get namaCabang; String get alamat;
/// Create a copy of ClockInBranchEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClockInBranchEntityCopyWith<ClockInBranchEntity> get copyWith => _$ClockInBranchEntityCopyWithImpl<ClockInBranchEntity>(this as ClockInBranchEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClockInBranchEntity&&(identical(other.cabangId, cabangId) || other.cabangId == cabangId)&&(identical(other.namaCabang, namaCabang) || other.namaCabang == namaCabang)&&(identical(other.alamat, alamat) || other.alamat == alamat));
}


@override
int get hashCode => Object.hash(runtimeType,cabangId,namaCabang,alamat);

@override
String toString() {
  return 'ClockInBranchEntity(cabangId: $cabangId, namaCabang: $namaCabang, alamat: $alamat)';
}


}

/// @nodoc
abstract mixin class $ClockInBranchEntityCopyWith<$Res>  {
  factory $ClockInBranchEntityCopyWith(ClockInBranchEntity value, $Res Function(ClockInBranchEntity) _then) = _$ClockInBranchEntityCopyWithImpl;
@useResult
$Res call({
 String cabangId, String namaCabang, String alamat
});




}
/// @nodoc
class _$ClockInBranchEntityCopyWithImpl<$Res>
    implements $ClockInBranchEntityCopyWith<$Res> {
  _$ClockInBranchEntityCopyWithImpl(this._self, this._then);

  final ClockInBranchEntity _self;
  final $Res Function(ClockInBranchEntity) _then;

/// Create a copy of ClockInBranchEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cabangId = null,Object? namaCabang = null,Object? alamat = null,}) {
  return _then(_self.copyWith(
cabangId: null == cabangId ? _self.cabangId : cabangId // ignore: cast_nullable_to_non_nullable
as String,namaCabang: null == namaCabang ? _self.namaCabang : namaCabang // ignore: cast_nullable_to_non_nullable
as String,alamat: null == alamat ? _self.alamat : alamat // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ClockInBranchEntity].
extension ClockInBranchEntityPatterns on ClockInBranchEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClockInBranchEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClockInBranchEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClockInBranchEntity value)  $default,){
final _that = this;
switch (_that) {
case _ClockInBranchEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClockInBranchEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ClockInBranchEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String cabangId,  String namaCabang,  String alamat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClockInBranchEntity() when $default != null:
return $default(_that.cabangId,_that.namaCabang,_that.alamat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String cabangId,  String namaCabang,  String alamat)  $default,) {final _that = this;
switch (_that) {
case _ClockInBranchEntity():
return $default(_that.cabangId,_that.namaCabang,_that.alamat);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String cabangId,  String namaCabang,  String alamat)?  $default,) {final _that = this;
switch (_that) {
case _ClockInBranchEntity() when $default != null:
return $default(_that.cabangId,_that.namaCabang,_that.alamat);case _:
  return null;

}
}

}

/// @nodoc


class _ClockInBranchEntity implements ClockInBranchEntity {
  const _ClockInBranchEntity({required this.cabangId, required this.namaCabang, required this.alamat});
  

@override final  String cabangId;
@override final  String namaCabang;
@override final  String alamat;

/// Create a copy of ClockInBranchEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClockInBranchEntityCopyWith<_ClockInBranchEntity> get copyWith => __$ClockInBranchEntityCopyWithImpl<_ClockInBranchEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClockInBranchEntity&&(identical(other.cabangId, cabangId) || other.cabangId == cabangId)&&(identical(other.namaCabang, namaCabang) || other.namaCabang == namaCabang)&&(identical(other.alamat, alamat) || other.alamat == alamat));
}


@override
int get hashCode => Object.hash(runtimeType,cabangId,namaCabang,alamat);

@override
String toString() {
  return 'ClockInBranchEntity(cabangId: $cabangId, namaCabang: $namaCabang, alamat: $alamat)';
}


}

/// @nodoc
abstract mixin class _$ClockInBranchEntityCopyWith<$Res> implements $ClockInBranchEntityCopyWith<$Res> {
  factory _$ClockInBranchEntityCopyWith(_ClockInBranchEntity value, $Res Function(_ClockInBranchEntity) _then) = __$ClockInBranchEntityCopyWithImpl;
@override @useResult
$Res call({
 String cabangId, String namaCabang, String alamat
});




}
/// @nodoc
class __$ClockInBranchEntityCopyWithImpl<$Res>
    implements _$ClockInBranchEntityCopyWith<$Res> {
  __$ClockInBranchEntityCopyWithImpl(this._self, this._then);

  final _ClockInBranchEntity _self;
  final $Res Function(_ClockInBranchEntity) _then;

/// Create a copy of ClockInBranchEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cabangId = null,Object? namaCabang = null,Object? alamat = null,}) {
  return _then(_ClockInBranchEntity(
cabangId: null == cabangId ? _self.cabangId : cabangId // ignore: cast_nullable_to_non_nullable
as String,namaCabang: null == namaCabang ? _self.namaCabang : namaCabang // ignore: cast_nullable_to_non_nullable
as String,alamat: null == alamat ? _self.alamat : alamat // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ClockInSubmissionEntity {

 ClockInEntity get clockIn; String get message;
/// Create a copy of ClockInSubmissionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClockInSubmissionEntityCopyWith<ClockInSubmissionEntity> get copyWith => _$ClockInSubmissionEntityCopyWithImpl<ClockInSubmissionEntity>(this as ClockInSubmissionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClockInSubmissionEntity&&(identical(other.clockIn, clockIn) || other.clockIn == clockIn)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,clockIn,message);

@override
String toString() {
  return 'ClockInSubmissionEntity(clockIn: $clockIn, message: $message)';
}


}

/// @nodoc
abstract mixin class $ClockInSubmissionEntityCopyWith<$Res>  {
  factory $ClockInSubmissionEntityCopyWith(ClockInSubmissionEntity value, $Res Function(ClockInSubmissionEntity) _then) = _$ClockInSubmissionEntityCopyWithImpl;
@useResult
$Res call({
 ClockInEntity clockIn, String message
});


$ClockInEntityCopyWith<$Res> get clockIn;

}
/// @nodoc
class _$ClockInSubmissionEntityCopyWithImpl<$Res>
    implements $ClockInSubmissionEntityCopyWith<$Res> {
  _$ClockInSubmissionEntityCopyWithImpl(this._self, this._then);

  final ClockInSubmissionEntity _self;
  final $Res Function(ClockInSubmissionEntity) _then;

/// Create a copy of ClockInSubmissionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clockIn = null,Object? message = null,}) {
  return _then(_self.copyWith(
clockIn: null == clockIn ? _self.clockIn : clockIn // ignore: cast_nullable_to_non_nullable
as ClockInEntity,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of ClockInSubmissionEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClockInEntityCopyWith<$Res> get clockIn {
  
  return $ClockInEntityCopyWith<$Res>(_self.clockIn, (value) {
    return _then(_self.copyWith(clockIn: value));
  });
}
}


/// Adds pattern-matching-related methods to [ClockInSubmissionEntity].
extension ClockInSubmissionEntityPatterns on ClockInSubmissionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClockInSubmissionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClockInSubmissionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClockInSubmissionEntity value)  $default,){
final _that = this;
switch (_that) {
case _ClockInSubmissionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClockInSubmissionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ClockInSubmissionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ClockInEntity clockIn,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClockInSubmissionEntity() when $default != null:
return $default(_that.clockIn,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ClockInEntity clockIn,  String message)  $default,) {final _that = this;
switch (_that) {
case _ClockInSubmissionEntity():
return $default(_that.clockIn,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ClockInEntity clockIn,  String message)?  $default,) {final _that = this;
switch (_that) {
case _ClockInSubmissionEntity() when $default != null:
return $default(_that.clockIn,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _ClockInSubmissionEntity implements ClockInSubmissionEntity {
  const _ClockInSubmissionEntity({required this.clockIn, required this.message});
  

@override final  ClockInEntity clockIn;
@override final  String message;

/// Create a copy of ClockInSubmissionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClockInSubmissionEntityCopyWith<_ClockInSubmissionEntity> get copyWith => __$ClockInSubmissionEntityCopyWithImpl<_ClockInSubmissionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClockInSubmissionEntity&&(identical(other.clockIn, clockIn) || other.clockIn == clockIn)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,clockIn,message);

@override
String toString() {
  return 'ClockInSubmissionEntity(clockIn: $clockIn, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ClockInSubmissionEntityCopyWith<$Res> implements $ClockInSubmissionEntityCopyWith<$Res> {
  factory _$ClockInSubmissionEntityCopyWith(_ClockInSubmissionEntity value, $Res Function(_ClockInSubmissionEntity) _then) = __$ClockInSubmissionEntityCopyWithImpl;
@override @useResult
$Res call({
 ClockInEntity clockIn, String message
});


@override $ClockInEntityCopyWith<$Res> get clockIn;

}
/// @nodoc
class __$ClockInSubmissionEntityCopyWithImpl<$Res>
    implements _$ClockInSubmissionEntityCopyWith<$Res> {
  __$ClockInSubmissionEntityCopyWithImpl(this._self, this._then);

  final _ClockInSubmissionEntity _self;
  final $Res Function(_ClockInSubmissionEntity) _then;

/// Create a copy of ClockInSubmissionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clockIn = null,Object? message = null,}) {
  return _then(_ClockInSubmissionEntity(
clockIn: null == clockIn ? _self.clockIn : clockIn // ignore: cast_nullable_to_non_nullable
as ClockInEntity,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of ClockInSubmissionEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClockInEntityCopyWith<$Res> get clockIn {
  
  return $ClockInEntityCopyWith<$Res>(_self.clockIn, (value) {
    return _then(_self.copyWith(clockIn: value));
  });
}
}

// dart format on
