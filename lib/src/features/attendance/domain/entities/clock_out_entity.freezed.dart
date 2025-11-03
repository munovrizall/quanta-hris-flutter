// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clock_out_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClockOutEntity {

 String get absensiId; String get karyawanId; String get tanggal; String get waktuPulang; String get statusPulang; String get statusAbsensi; String get durasiPulangCepat; String get fotoPulang; ClockOutBranchEntity get cabang; String get distanceFromBranch;
/// Create a copy of ClockOutEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClockOutEntityCopyWith<ClockOutEntity> get copyWith => _$ClockOutEntityCopyWithImpl<ClockOutEntity>(this as ClockOutEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClockOutEntity&&(identical(other.absensiId, absensiId) || other.absensiId == absensiId)&&(identical(other.karyawanId, karyawanId) || other.karyawanId == karyawanId)&&(identical(other.tanggal, tanggal) || other.tanggal == tanggal)&&(identical(other.waktuPulang, waktuPulang) || other.waktuPulang == waktuPulang)&&(identical(other.statusPulang, statusPulang) || other.statusPulang == statusPulang)&&(identical(other.statusAbsensi, statusAbsensi) || other.statusAbsensi == statusAbsensi)&&(identical(other.durasiPulangCepat, durasiPulangCepat) || other.durasiPulangCepat == durasiPulangCepat)&&(identical(other.fotoPulang, fotoPulang) || other.fotoPulang == fotoPulang)&&(identical(other.cabang, cabang) || other.cabang == cabang)&&(identical(other.distanceFromBranch, distanceFromBranch) || other.distanceFromBranch == distanceFromBranch));
}


@override
int get hashCode => Object.hash(runtimeType,absensiId,karyawanId,tanggal,waktuPulang,statusPulang,statusAbsensi,durasiPulangCepat,fotoPulang,cabang,distanceFromBranch);

@override
String toString() {
  return 'ClockOutEntity(absensiId: $absensiId, karyawanId: $karyawanId, tanggal: $tanggal, waktuPulang: $waktuPulang, statusPulang: $statusPulang, statusAbsensi: $statusAbsensi, durasiPulangCepat: $durasiPulangCepat, fotoPulang: $fotoPulang, cabang: $cabang, distanceFromBranch: $distanceFromBranch)';
}


}

/// @nodoc
abstract mixin class $ClockOutEntityCopyWith<$Res>  {
  factory $ClockOutEntityCopyWith(ClockOutEntity value, $Res Function(ClockOutEntity) _then) = _$ClockOutEntityCopyWithImpl;
@useResult
$Res call({
 String absensiId, String karyawanId, String tanggal, String waktuPulang, String statusPulang, String statusAbsensi, String durasiPulangCepat, String fotoPulang, ClockOutBranchEntity cabang, String distanceFromBranch
});


$ClockOutBranchEntityCopyWith<$Res> get cabang;

}
/// @nodoc
class _$ClockOutEntityCopyWithImpl<$Res>
    implements $ClockOutEntityCopyWith<$Res> {
  _$ClockOutEntityCopyWithImpl(this._self, this._then);

  final ClockOutEntity _self;
  final $Res Function(ClockOutEntity) _then;

/// Create a copy of ClockOutEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? absensiId = null,Object? karyawanId = null,Object? tanggal = null,Object? waktuPulang = null,Object? statusPulang = null,Object? statusAbsensi = null,Object? durasiPulangCepat = null,Object? fotoPulang = null,Object? cabang = null,Object? distanceFromBranch = null,}) {
  return _then(_self.copyWith(
absensiId: null == absensiId ? _self.absensiId : absensiId // ignore: cast_nullable_to_non_nullable
as String,karyawanId: null == karyawanId ? _self.karyawanId : karyawanId // ignore: cast_nullable_to_non_nullable
as String,tanggal: null == tanggal ? _self.tanggal : tanggal // ignore: cast_nullable_to_non_nullable
as String,waktuPulang: null == waktuPulang ? _self.waktuPulang : waktuPulang // ignore: cast_nullable_to_non_nullable
as String,statusPulang: null == statusPulang ? _self.statusPulang : statusPulang // ignore: cast_nullable_to_non_nullable
as String,statusAbsensi: null == statusAbsensi ? _self.statusAbsensi : statusAbsensi // ignore: cast_nullable_to_non_nullable
as String,durasiPulangCepat: null == durasiPulangCepat ? _self.durasiPulangCepat : durasiPulangCepat // ignore: cast_nullable_to_non_nullable
as String,fotoPulang: null == fotoPulang ? _self.fotoPulang : fotoPulang // ignore: cast_nullable_to_non_nullable
as String,cabang: null == cabang ? _self.cabang : cabang // ignore: cast_nullable_to_non_nullable
as ClockOutBranchEntity,distanceFromBranch: null == distanceFromBranch ? _self.distanceFromBranch : distanceFromBranch // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of ClockOutEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClockOutBranchEntityCopyWith<$Res> get cabang {
  
  return $ClockOutBranchEntityCopyWith<$Res>(_self.cabang, (value) {
    return _then(_self.copyWith(cabang: value));
  });
}
}


/// Adds pattern-matching-related methods to [ClockOutEntity].
extension ClockOutEntityPatterns on ClockOutEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClockOutEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClockOutEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClockOutEntity value)  $default,){
final _that = this;
switch (_that) {
case _ClockOutEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClockOutEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ClockOutEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String absensiId,  String karyawanId,  String tanggal,  String waktuPulang,  String statusPulang,  String statusAbsensi,  String durasiPulangCepat,  String fotoPulang,  ClockOutBranchEntity cabang,  String distanceFromBranch)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClockOutEntity() when $default != null:
return $default(_that.absensiId,_that.karyawanId,_that.tanggal,_that.waktuPulang,_that.statusPulang,_that.statusAbsensi,_that.durasiPulangCepat,_that.fotoPulang,_that.cabang,_that.distanceFromBranch);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String absensiId,  String karyawanId,  String tanggal,  String waktuPulang,  String statusPulang,  String statusAbsensi,  String durasiPulangCepat,  String fotoPulang,  ClockOutBranchEntity cabang,  String distanceFromBranch)  $default,) {final _that = this;
switch (_that) {
case _ClockOutEntity():
return $default(_that.absensiId,_that.karyawanId,_that.tanggal,_that.waktuPulang,_that.statusPulang,_that.statusAbsensi,_that.durasiPulangCepat,_that.fotoPulang,_that.cabang,_that.distanceFromBranch);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String absensiId,  String karyawanId,  String tanggal,  String waktuPulang,  String statusPulang,  String statusAbsensi,  String durasiPulangCepat,  String fotoPulang,  ClockOutBranchEntity cabang,  String distanceFromBranch)?  $default,) {final _that = this;
switch (_that) {
case _ClockOutEntity() when $default != null:
return $default(_that.absensiId,_that.karyawanId,_that.tanggal,_that.waktuPulang,_that.statusPulang,_that.statusAbsensi,_that.durasiPulangCepat,_that.fotoPulang,_that.cabang,_that.distanceFromBranch);case _:
  return null;

}
}

}

/// @nodoc


class _ClockOutEntity implements ClockOutEntity {
  const _ClockOutEntity({required this.absensiId, required this.karyawanId, required this.tanggal, required this.waktuPulang, required this.statusPulang, required this.statusAbsensi, required this.durasiPulangCepat, required this.fotoPulang, required this.cabang, required this.distanceFromBranch});
  

@override final  String absensiId;
@override final  String karyawanId;
@override final  String tanggal;
@override final  String waktuPulang;
@override final  String statusPulang;
@override final  String statusAbsensi;
@override final  String durasiPulangCepat;
@override final  String fotoPulang;
@override final  ClockOutBranchEntity cabang;
@override final  String distanceFromBranch;

/// Create a copy of ClockOutEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClockOutEntityCopyWith<_ClockOutEntity> get copyWith => __$ClockOutEntityCopyWithImpl<_ClockOutEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClockOutEntity&&(identical(other.absensiId, absensiId) || other.absensiId == absensiId)&&(identical(other.karyawanId, karyawanId) || other.karyawanId == karyawanId)&&(identical(other.tanggal, tanggal) || other.tanggal == tanggal)&&(identical(other.waktuPulang, waktuPulang) || other.waktuPulang == waktuPulang)&&(identical(other.statusPulang, statusPulang) || other.statusPulang == statusPulang)&&(identical(other.statusAbsensi, statusAbsensi) || other.statusAbsensi == statusAbsensi)&&(identical(other.durasiPulangCepat, durasiPulangCepat) || other.durasiPulangCepat == durasiPulangCepat)&&(identical(other.fotoPulang, fotoPulang) || other.fotoPulang == fotoPulang)&&(identical(other.cabang, cabang) || other.cabang == cabang)&&(identical(other.distanceFromBranch, distanceFromBranch) || other.distanceFromBranch == distanceFromBranch));
}


@override
int get hashCode => Object.hash(runtimeType,absensiId,karyawanId,tanggal,waktuPulang,statusPulang,statusAbsensi,durasiPulangCepat,fotoPulang,cabang,distanceFromBranch);

@override
String toString() {
  return 'ClockOutEntity(absensiId: $absensiId, karyawanId: $karyawanId, tanggal: $tanggal, waktuPulang: $waktuPulang, statusPulang: $statusPulang, statusAbsensi: $statusAbsensi, durasiPulangCepat: $durasiPulangCepat, fotoPulang: $fotoPulang, cabang: $cabang, distanceFromBranch: $distanceFromBranch)';
}


}

/// @nodoc
abstract mixin class _$ClockOutEntityCopyWith<$Res> implements $ClockOutEntityCopyWith<$Res> {
  factory _$ClockOutEntityCopyWith(_ClockOutEntity value, $Res Function(_ClockOutEntity) _then) = __$ClockOutEntityCopyWithImpl;
@override @useResult
$Res call({
 String absensiId, String karyawanId, String tanggal, String waktuPulang, String statusPulang, String statusAbsensi, String durasiPulangCepat, String fotoPulang, ClockOutBranchEntity cabang, String distanceFromBranch
});


@override $ClockOutBranchEntityCopyWith<$Res> get cabang;

}
/// @nodoc
class __$ClockOutEntityCopyWithImpl<$Res>
    implements _$ClockOutEntityCopyWith<$Res> {
  __$ClockOutEntityCopyWithImpl(this._self, this._then);

  final _ClockOutEntity _self;
  final $Res Function(_ClockOutEntity) _then;

/// Create a copy of ClockOutEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? absensiId = null,Object? karyawanId = null,Object? tanggal = null,Object? waktuPulang = null,Object? statusPulang = null,Object? statusAbsensi = null,Object? durasiPulangCepat = null,Object? fotoPulang = null,Object? cabang = null,Object? distanceFromBranch = null,}) {
  return _then(_ClockOutEntity(
absensiId: null == absensiId ? _self.absensiId : absensiId // ignore: cast_nullable_to_non_nullable
as String,karyawanId: null == karyawanId ? _self.karyawanId : karyawanId // ignore: cast_nullable_to_non_nullable
as String,tanggal: null == tanggal ? _self.tanggal : tanggal // ignore: cast_nullable_to_non_nullable
as String,waktuPulang: null == waktuPulang ? _self.waktuPulang : waktuPulang // ignore: cast_nullable_to_non_nullable
as String,statusPulang: null == statusPulang ? _self.statusPulang : statusPulang // ignore: cast_nullable_to_non_nullable
as String,statusAbsensi: null == statusAbsensi ? _self.statusAbsensi : statusAbsensi // ignore: cast_nullable_to_non_nullable
as String,durasiPulangCepat: null == durasiPulangCepat ? _self.durasiPulangCepat : durasiPulangCepat // ignore: cast_nullable_to_non_nullable
as String,fotoPulang: null == fotoPulang ? _self.fotoPulang : fotoPulang // ignore: cast_nullable_to_non_nullable
as String,cabang: null == cabang ? _self.cabang : cabang // ignore: cast_nullable_to_non_nullable
as ClockOutBranchEntity,distanceFromBranch: null == distanceFromBranch ? _self.distanceFromBranch : distanceFromBranch // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of ClockOutEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClockOutBranchEntityCopyWith<$Res> get cabang {
  
  return $ClockOutBranchEntityCopyWith<$Res>(_self.cabang, (value) {
    return _then(_self.copyWith(cabang: value));
  });
}
}

/// @nodoc
mixin _$ClockOutBranchEntity {

 String get cabangId; String get namaCabang; String get alamat;
/// Create a copy of ClockOutBranchEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClockOutBranchEntityCopyWith<ClockOutBranchEntity> get copyWith => _$ClockOutBranchEntityCopyWithImpl<ClockOutBranchEntity>(this as ClockOutBranchEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClockOutBranchEntity&&(identical(other.cabangId, cabangId) || other.cabangId == cabangId)&&(identical(other.namaCabang, namaCabang) || other.namaCabang == namaCabang)&&(identical(other.alamat, alamat) || other.alamat == alamat));
}


@override
int get hashCode => Object.hash(runtimeType,cabangId,namaCabang,alamat);

@override
String toString() {
  return 'ClockOutBranchEntity(cabangId: $cabangId, namaCabang: $namaCabang, alamat: $alamat)';
}


}

/// @nodoc
abstract mixin class $ClockOutBranchEntityCopyWith<$Res>  {
  factory $ClockOutBranchEntityCopyWith(ClockOutBranchEntity value, $Res Function(ClockOutBranchEntity) _then) = _$ClockOutBranchEntityCopyWithImpl;
@useResult
$Res call({
 String cabangId, String namaCabang, String alamat
});




}
/// @nodoc
class _$ClockOutBranchEntityCopyWithImpl<$Res>
    implements $ClockOutBranchEntityCopyWith<$Res> {
  _$ClockOutBranchEntityCopyWithImpl(this._self, this._then);

  final ClockOutBranchEntity _self;
  final $Res Function(ClockOutBranchEntity) _then;

/// Create a copy of ClockOutBranchEntity
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


/// Adds pattern-matching-related methods to [ClockOutBranchEntity].
extension ClockOutBranchEntityPatterns on ClockOutBranchEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClockOutBranchEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClockOutBranchEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClockOutBranchEntity value)  $default,){
final _that = this;
switch (_that) {
case _ClockOutBranchEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClockOutBranchEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ClockOutBranchEntity() when $default != null:
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
case _ClockOutBranchEntity() when $default != null:
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
case _ClockOutBranchEntity():
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
case _ClockOutBranchEntity() when $default != null:
return $default(_that.cabangId,_that.namaCabang,_that.alamat);case _:
  return null;

}
}

}

/// @nodoc


class _ClockOutBranchEntity implements ClockOutBranchEntity {
  const _ClockOutBranchEntity({required this.cabangId, required this.namaCabang, required this.alamat});
  

@override final  String cabangId;
@override final  String namaCabang;
@override final  String alamat;

/// Create a copy of ClockOutBranchEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClockOutBranchEntityCopyWith<_ClockOutBranchEntity> get copyWith => __$ClockOutBranchEntityCopyWithImpl<_ClockOutBranchEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClockOutBranchEntity&&(identical(other.cabangId, cabangId) || other.cabangId == cabangId)&&(identical(other.namaCabang, namaCabang) || other.namaCabang == namaCabang)&&(identical(other.alamat, alamat) || other.alamat == alamat));
}


@override
int get hashCode => Object.hash(runtimeType,cabangId,namaCabang,alamat);

@override
String toString() {
  return 'ClockOutBranchEntity(cabangId: $cabangId, namaCabang: $namaCabang, alamat: $alamat)';
}


}

/// @nodoc
abstract mixin class _$ClockOutBranchEntityCopyWith<$Res> implements $ClockOutBranchEntityCopyWith<$Res> {
  factory _$ClockOutBranchEntityCopyWith(_ClockOutBranchEntity value, $Res Function(_ClockOutBranchEntity) _then) = __$ClockOutBranchEntityCopyWithImpl;
@override @useResult
$Res call({
 String cabangId, String namaCabang, String alamat
});




}
/// @nodoc
class __$ClockOutBranchEntityCopyWithImpl<$Res>
    implements _$ClockOutBranchEntityCopyWith<$Res> {
  __$ClockOutBranchEntityCopyWithImpl(this._self, this._then);

  final _ClockOutBranchEntity _self;
  final $Res Function(_ClockOutBranchEntity) _then;

/// Create a copy of ClockOutBranchEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cabangId = null,Object? namaCabang = null,Object? alamat = null,}) {
  return _then(_ClockOutBranchEntity(
cabangId: null == cabangId ? _self.cabangId : cabangId // ignore: cast_nullable_to_non_nullable
as String,namaCabang: null == namaCabang ? _self.namaCabang : namaCabang // ignore: cast_nullable_to_non_nullable
as String,alamat: null == alamat ? _self.alamat : alamat // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ClockOutSubmissionEntity {

 ClockOutEntity get clockOut; String get message;
/// Create a copy of ClockOutSubmissionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClockOutSubmissionEntityCopyWith<ClockOutSubmissionEntity> get copyWith => _$ClockOutSubmissionEntityCopyWithImpl<ClockOutSubmissionEntity>(this as ClockOutSubmissionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClockOutSubmissionEntity&&(identical(other.clockOut, clockOut) || other.clockOut == clockOut)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,clockOut,message);

@override
String toString() {
  return 'ClockOutSubmissionEntity(clockOut: $clockOut, message: $message)';
}


}

/// @nodoc
abstract mixin class $ClockOutSubmissionEntityCopyWith<$Res>  {
  factory $ClockOutSubmissionEntityCopyWith(ClockOutSubmissionEntity value, $Res Function(ClockOutSubmissionEntity) _then) = _$ClockOutSubmissionEntityCopyWithImpl;
@useResult
$Res call({
 ClockOutEntity clockOut, String message
});


$ClockOutEntityCopyWith<$Res> get clockOut;

}
/// @nodoc
class _$ClockOutSubmissionEntityCopyWithImpl<$Res>
    implements $ClockOutSubmissionEntityCopyWith<$Res> {
  _$ClockOutSubmissionEntityCopyWithImpl(this._self, this._then);

  final ClockOutSubmissionEntity _self;
  final $Res Function(ClockOutSubmissionEntity) _then;

/// Create a copy of ClockOutSubmissionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clockOut = null,Object? message = null,}) {
  return _then(_self.copyWith(
clockOut: null == clockOut ? _self.clockOut : clockOut // ignore: cast_nullable_to_non_nullable
as ClockOutEntity,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of ClockOutSubmissionEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClockOutEntityCopyWith<$Res> get clockOut {
  
  return $ClockOutEntityCopyWith<$Res>(_self.clockOut, (value) {
    return _then(_self.copyWith(clockOut: value));
  });
}
}


/// Adds pattern-matching-related methods to [ClockOutSubmissionEntity].
extension ClockOutSubmissionEntityPatterns on ClockOutSubmissionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClockOutSubmissionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClockOutSubmissionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClockOutSubmissionEntity value)  $default,){
final _that = this;
switch (_that) {
case _ClockOutSubmissionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClockOutSubmissionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ClockOutSubmissionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ClockOutEntity clockOut,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClockOutSubmissionEntity() when $default != null:
return $default(_that.clockOut,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ClockOutEntity clockOut,  String message)  $default,) {final _that = this;
switch (_that) {
case _ClockOutSubmissionEntity():
return $default(_that.clockOut,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ClockOutEntity clockOut,  String message)?  $default,) {final _that = this;
switch (_that) {
case _ClockOutSubmissionEntity() when $default != null:
return $default(_that.clockOut,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _ClockOutSubmissionEntity implements ClockOutSubmissionEntity {
  const _ClockOutSubmissionEntity({required this.clockOut, required this.message});
  

@override final  ClockOutEntity clockOut;
@override final  String message;

/// Create a copy of ClockOutSubmissionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClockOutSubmissionEntityCopyWith<_ClockOutSubmissionEntity> get copyWith => __$ClockOutSubmissionEntityCopyWithImpl<_ClockOutSubmissionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClockOutSubmissionEntity&&(identical(other.clockOut, clockOut) || other.clockOut == clockOut)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,clockOut,message);

@override
String toString() {
  return 'ClockOutSubmissionEntity(clockOut: $clockOut, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ClockOutSubmissionEntityCopyWith<$Res> implements $ClockOutSubmissionEntityCopyWith<$Res> {
  factory _$ClockOutSubmissionEntityCopyWith(_ClockOutSubmissionEntity value, $Res Function(_ClockOutSubmissionEntity) _then) = __$ClockOutSubmissionEntityCopyWithImpl;
@override @useResult
$Res call({
 ClockOutEntity clockOut, String message
});


@override $ClockOutEntityCopyWith<$Res> get clockOut;

}
/// @nodoc
class __$ClockOutSubmissionEntityCopyWithImpl<$Res>
    implements _$ClockOutSubmissionEntityCopyWith<$Res> {
  __$ClockOutSubmissionEntityCopyWithImpl(this._self, this._then);

  final _ClockOutSubmissionEntity _self;
  final $Res Function(_ClockOutSubmissionEntity) _then;

/// Create a copy of ClockOutSubmissionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clockOut = null,Object? message = null,}) {
  return _then(_ClockOutSubmissionEntity(
clockOut: null == clockOut ? _self.clockOut : clockOut // ignore: cast_nullable_to_non_nullable
as ClockOutEntity,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of ClockOutSubmissionEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClockOutEntityCopyWith<$Res> get clockOut {
  
  return $ClockOutEntityCopyWith<$Res>(_self.clockOut, (value) {
    return _then(_self.copyWith(clockOut: value));
  });
}
}

// dart format on
