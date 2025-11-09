// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overtime_history_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OvertimeHistoryEntity {

 String get tanggal; String? get absensiId; String? get jamMasuk; String? get statusMasuk; String? get jamPulang; String? get statusPulang; String get statusAbsensi; bool get eligibleLembur; String? get durasiLemburTerhitung; String get jamPulangPerusahaan; OvertimeSubmissionEntity? get lemburPengajuan;
/// Create a copy of OvertimeHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OvertimeHistoryEntityCopyWith<OvertimeHistoryEntity> get copyWith => _$OvertimeHistoryEntityCopyWithImpl<OvertimeHistoryEntity>(this as OvertimeHistoryEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OvertimeHistoryEntity&&(identical(other.tanggal, tanggal) || other.tanggal == tanggal)&&(identical(other.absensiId, absensiId) || other.absensiId == absensiId)&&(identical(other.jamMasuk, jamMasuk) || other.jamMasuk == jamMasuk)&&(identical(other.statusMasuk, statusMasuk) || other.statusMasuk == statusMasuk)&&(identical(other.jamPulang, jamPulang) || other.jamPulang == jamPulang)&&(identical(other.statusPulang, statusPulang) || other.statusPulang == statusPulang)&&(identical(other.statusAbsensi, statusAbsensi) || other.statusAbsensi == statusAbsensi)&&(identical(other.eligibleLembur, eligibleLembur) || other.eligibleLembur == eligibleLembur)&&(identical(other.durasiLemburTerhitung, durasiLemburTerhitung) || other.durasiLemburTerhitung == durasiLemburTerhitung)&&(identical(other.jamPulangPerusahaan, jamPulangPerusahaan) || other.jamPulangPerusahaan == jamPulangPerusahaan)&&(identical(other.lemburPengajuan, lemburPengajuan) || other.lemburPengajuan == lemburPengajuan));
}


@override
int get hashCode => Object.hash(runtimeType,tanggal,absensiId,jamMasuk,statusMasuk,jamPulang,statusPulang,statusAbsensi,eligibleLembur,durasiLemburTerhitung,jamPulangPerusahaan,lemburPengajuan);

@override
String toString() {
  return 'OvertimeHistoryEntity(tanggal: $tanggal, absensiId: $absensiId, jamMasuk: $jamMasuk, statusMasuk: $statusMasuk, jamPulang: $jamPulang, statusPulang: $statusPulang, statusAbsensi: $statusAbsensi, eligibleLembur: $eligibleLembur, durasiLemburTerhitung: $durasiLemburTerhitung, jamPulangPerusahaan: $jamPulangPerusahaan, lemburPengajuan: $lemburPengajuan)';
}


}

/// @nodoc
abstract mixin class $OvertimeHistoryEntityCopyWith<$Res>  {
  factory $OvertimeHistoryEntityCopyWith(OvertimeHistoryEntity value, $Res Function(OvertimeHistoryEntity) _then) = _$OvertimeHistoryEntityCopyWithImpl;
@useResult
$Res call({
 String tanggal, String? absensiId, String? jamMasuk, String? statusMasuk, String? jamPulang, String? statusPulang, String statusAbsensi, bool eligibleLembur, String? durasiLemburTerhitung, String jamPulangPerusahaan, OvertimeSubmissionEntity? lemburPengajuan
});


$OvertimeSubmissionEntityCopyWith<$Res>? get lemburPengajuan;

}
/// @nodoc
class _$OvertimeHistoryEntityCopyWithImpl<$Res>
    implements $OvertimeHistoryEntityCopyWith<$Res> {
  _$OvertimeHistoryEntityCopyWithImpl(this._self, this._then);

  final OvertimeHistoryEntity _self;
  final $Res Function(OvertimeHistoryEntity) _then;

/// Create a copy of OvertimeHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tanggal = null,Object? absensiId = freezed,Object? jamMasuk = freezed,Object? statusMasuk = freezed,Object? jamPulang = freezed,Object? statusPulang = freezed,Object? statusAbsensi = null,Object? eligibleLembur = null,Object? durasiLemburTerhitung = freezed,Object? jamPulangPerusahaan = null,Object? lemburPengajuan = freezed,}) {
  return _then(_self.copyWith(
tanggal: null == tanggal ? _self.tanggal : tanggal // ignore: cast_nullable_to_non_nullable
as String,absensiId: freezed == absensiId ? _self.absensiId : absensiId // ignore: cast_nullable_to_non_nullable
as String?,jamMasuk: freezed == jamMasuk ? _self.jamMasuk : jamMasuk // ignore: cast_nullable_to_non_nullable
as String?,statusMasuk: freezed == statusMasuk ? _self.statusMasuk : statusMasuk // ignore: cast_nullable_to_non_nullable
as String?,jamPulang: freezed == jamPulang ? _self.jamPulang : jamPulang // ignore: cast_nullable_to_non_nullable
as String?,statusPulang: freezed == statusPulang ? _self.statusPulang : statusPulang // ignore: cast_nullable_to_non_nullable
as String?,statusAbsensi: null == statusAbsensi ? _self.statusAbsensi : statusAbsensi // ignore: cast_nullable_to_non_nullable
as String,eligibleLembur: null == eligibleLembur ? _self.eligibleLembur : eligibleLembur // ignore: cast_nullable_to_non_nullable
as bool,durasiLemburTerhitung: freezed == durasiLemburTerhitung ? _self.durasiLemburTerhitung : durasiLemburTerhitung // ignore: cast_nullable_to_non_nullable
as String?,jamPulangPerusahaan: null == jamPulangPerusahaan ? _self.jamPulangPerusahaan : jamPulangPerusahaan // ignore: cast_nullable_to_non_nullable
as String,lemburPengajuan: freezed == lemburPengajuan ? _self.lemburPengajuan : lemburPengajuan // ignore: cast_nullable_to_non_nullable
as OvertimeSubmissionEntity?,
  ));
}
/// Create a copy of OvertimeHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OvertimeSubmissionEntityCopyWith<$Res>? get lemburPengajuan {
    if (_self.lemburPengajuan == null) {
    return null;
  }

  return $OvertimeSubmissionEntityCopyWith<$Res>(_self.lemburPengajuan!, (value) {
    return _then(_self.copyWith(lemburPengajuan: value));
  });
}
}


/// Adds pattern-matching-related methods to [OvertimeHistoryEntity].
extension OvertimeHistoryEntityPatterns on OvertimeHistoryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OvertimeHistoryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OvertimeHistoryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OvertimeHistoryEntity value)  $default,){
final _that = this;
switch (_that) {
case _OvertimeHistoryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OvertimeHistoryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _OvertimeHistoryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String tanggal,  String? absensiId,  String? jamMasuk,  String? statusMasuk,  String? jamPulang,  String? statusPulang,  String statusAbsensi,  bool eligibleLembur,  String? durasiLemburTerhitung,  String jamPulangPerusahaan,  OvertimeSubmissionEntity? lemburPengajuan)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OvertimeHistoryEntity() when $default != null:
return $default(_that.tanggal,_that.absensiId,_that.jamMasuk,_that.statusMasuk,_that.jamPulang,_that.statusPulang,_that.statusAbsensi,_that.eligibleLembur,_that.durasiLemburTerhitung,_that.jamPulangPerusahaan,_that.lemburPengajuan);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String tanggal,  String? absensiId,  String? jamMasuk,  String? statusMasuk,  String? jamPulang,  String? statusPulang,  String statusAbsensi,  bool eligibleLembur,  String? durasiLemburTerhitung,  String jamPulangPerusahaan,  OvertimeSubmissionEntity? lemburPengajuan)  $default,) {final _that = this;
switch (_that) {
case _OvertimeHistoryEntity():
return $default(_that.tanggal,_that.absensiId,_that.jamMasuk,_that.statusMasuk,_that.jamPulang,_that.statusPulang,_that.statusAbsensi,_that.eligibleLembur,_that.durasiLemburTerhitung,_that.jamPulangPerusahaan,_that.lemburPengajuan);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String tanggal,  String? absensiId,  String? jamMasuk,  String? statusMasuk,  String? jamPulang,  String? statusPulang,  String statusAbsensi,  bool eligibleLembur,  String? durasiLemburTerhitung,  String jamPulangPerusahaan,  OvertimeSubmissionEntity? lemburPengajuan)?  $default,) {final _that = this;
switch (_that) {
case _OvertimeHistoryEntity() when $default != null:
return $default(_that.tanggal,_that.absensiId,_that.jamMasuk,_that.statusMasuk,_that.jamPulang,_that.statusPulang,_that.statusAbsensi,_that.eligibleLembur,_that.durasiLemburTerhitung,_that.jamPulangPerusahaan,_that.lemburPengajuan);case _:
  return null;

}
}

}

/// @nodoc


class _OvertimeHistoryEntity implements OvertimeHistoryEntity {
  const _OvertimeHistoryEntity({required this.tanggal, this.absensiId, this.jamMasuk, this.statusMasuk, this.jamPulang, this.statusPulang, required this.statusAbsensi, required this.eligibleLembur, this.durasiLemburTerhitung, required this.jamPulangPerusahaan, this.lemburPengajuan});
  

@override final  String tanggal;
@override final  String? absensiId;
@override final  String? jamMasuk;
@override final  String? statusMasuk;
@override final  String? jamPulang;
@override final  String? statusPulang;
@override final  String statusAbsensi;
@override final  bool eligibleLembur;
@override final  String? durasiLemburTerhitung;
@override final  String jamPulangPerusahaan;
@override final  OvertimeSubmissionEntity? lemburPengajuan;

/// Create a copy of OvertimeHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OvertimeHistoryEntityCopyWith<_OvertimeHistoryEntity> get copyWith => __$OvertimeHistoryEntityCopyWithImpl<_OvertimeHistoryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OvertimeHistoryEntity&&(identical(other.tanggal, tanggal) || other.tanggal == tanggal)&&(identical(other.absensiId, absensiId) || other.absensiId == absensiId)&&(identical(other.jamMasuk, jamMasuk) || other.jamMasuk == jamMasuk)&&(identical(other.statusMasuk, statusMasuk) || other.statusMasuk == statusMasuk)&&(identical(other.jamPulang, jamPulang) || other.jamPulang == jamPulang)&&(identical(other.statusPulang, statusPulang) || other.statusPulang == statusPulang)&&(identical(other.statusAbsensi, statusAbsensi) || other.statusAbsensi == statusAbsensi)&&(identical(other.eligibleLembur, eligibleLembur) || other.eligibleLembur == eligibleLembur)&&(identical(other.durasiLemburTerhitung, durasiLemburTerhitung) || other.durasiLemburTerhitung == durasiLemburTerhitung)&&(identical(other.jamPulangPerusahaan, jamPulangPerusahaan) || other.jamPulangPerusahaan == jamPulangPerusahaan)&&(identical(other.lemburPengajuan, lemburPengajuan) || other.lemburPengajuan == lemburPengajuan));
}


@override
int get hashCode => Object.hash(runtimeType,tanggal,absensiId,jamMasuk,statusMasuk,jamPulang,statusPulang,statusAbsensi,eligibleLembur,durasiLemburTerhitung,jamPulangPerusahaan,lemburPengajuan);

@override
String toString() {
  return 'OvertimeHistoryEntity(tanggal: $tanggal, absensiId: $absensiId, jamMasuk: $jamMasuk, statusMasuk: $statusMasuk, jamPulang: $jamPulang, statusPulang: $statusPulang, statusAbsensi: $statusAbsensi, eligibleLembur: $eligibleLembur, durasiLemburTerhitung: $durasiLemburTerhitung, jamPulangPerusahaan: $jamPulangPerusahaan, lemburPengajuan: $lemburPengajuan)';
}


}

/// @nodoc
abstract mixin class _$OvertimeHistoryEntityCopyWith<$Res> implements $OvertimeHistoryEntityCopyWith<$Res> {
  factory _$OvertimeHistoryEntityCopyWith(_OvertimeHistoryEntity value, $Res Function(_OvertimeHistoryEntity) _then) = __$OvertimeHistoryEntityCopyWithImpl;
@override @useResult
$Res call({
 String tanggal, String? absensiId, String? jamMasuk, String? statusMasuk, String? jamPulang, String? statusPulang, String statusAbsensi, bool eligibleLembur, String? durasiLemburTerhitung, String jamPulangPerusahaan, OvertimeSubmissionEntity? lemburPengajuan
});


@override $OvertimeSubmissionEntityCopyWith<$Res>? get lemburPengajuan;

}
/// @nodoc
class __$OvertimeHistoryEntityCopyWithImpl<$Res>
    implements _$OvertimeHistoryEntityCopyWith<$Res> {
  __$OvertimeHistoryEntityCopyWithImpl(this._self, this._then);

  final _OvertimeHistoryEntity _self;
  final $Res Function(_OvertimeHistoryEntity) _then;

/// Create a copy of OvertimeHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tanggal = null,Object? absensiId = freezed,Object? jamMasuk = freezed,Object? statusMasuk = freezed,Object? jamPulang = freezed,Object? statusPulang = freezed,Object? statusAbsensi = null,Object? eligibleLembur = null,Object? durasiLemburTerhitung = freezed,Object? jamPulangPerusahaan = null,Object? lemburPengajuan = freezed,}) {
  return _then(_OvertimeHistoryEntity(
tanggal: null == tanggal ? _self.tanggal : tanggal // ignore: cast_nullable_to_non_nullable
as String,absensiId: freezed == absensiId ? _self.absensiId : absensiId // ignore: cast_nullable_to_non_nullable
as String?,jamMasuk: freezed == jamMasuk ? _self.jamMasuk : jamMasuk // ignore: cast_nullable_to_non_nullable
as String?,statusMasuk: freezed == statusMasuk ? _self.statusMasuk : statusMasuk // ignore: cast_nullable_to_non_nullable
as String?,jamPulang: freezed == jamPulang ? _self.jamPulang : jamPulang // ignore: cast_nullable_to_non_nullable
as String?,statusPulang: freezed == statusPulang ? _self.statusPulang : statusPulang // ignore: cast_nullable_to_non_nullable
as String?,statusAbsensi: null == statusAbsensi ? _self.statusAbsensi : statusAbsensi // ignore: cast_nullable_to_non_nullable
as String,eligibleLembur: null == eligibleLembur ? _self.eligibleLembur : eligibleLembur // ignore: cast_nullable_to_non_nullable
as bool,durasiLemburTerhitung: freezed == durasiLemburTerhitung ? _self.durasiLemburTerhitung : durasiLemburTerhitung // ignore: cast_nullable_to_non_nullable
as String?,jamPulangPerusahaan: null == jamPulangPerusahaan ? _self.jamPulangPerusahaan : jamPulangPerusahaan // ignore: cast_nullable_to_non_nullable
as String,lemburPengajuan: freezed == lemburPengajuan ? _self.lemburPengajuan : lemburPengajuan // ignore: cast_nullable_to_non_nullable
as OvertimeSubmissionEntity?,
  ));
}

/// Create a copy of OvertimeHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OvertimeSubmissionEntityCopyWith<$Res>? get lemburPengajuan {
    if (_self.lemburPengajuan == null) {
    return null;
  }

  return $OvertimeSubmissionEntityCopyWith<$Res>(_self.lemburPengajuan!, (value) {
    return _then(_self.copyWith(lemburPengajuan: value));
  });
}
}

/// @nodoc
mixin _$OvertimeSubmissionEntity {

 String get lemburId; String get statusLembur; String get durasiLembur; int get upahLembur; String? get processedAt;
/// Create a copy of OvertimeSubmissionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OvertimeSubmissionEntityCopyWith<OvertimeSubmissionEntity> get copyWith => _$OvertimeSubmissionEntityCopyWithImpl<OvertimeSubmissionEntity>(this as OvertimeSubmissionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OvertimeSubmissionEntity&&(identical(other.lemburId, lemburId) || other.lemburId == lemburId)&&(identical(other.statusLembur, statusLembur) || other.statusLembur == statusLembur)&&(identical(other.durasiLembur, durasiLembur) || other.durasiLembur == durasiLembur)&&(identical(other.upahLembur, upahLembur) || other.upahLembur == upahLembur)&&(identical(other.processedAt, processedAt) || other.processedAt == processedAt));
}


@override
int get hashCode => Object.hash(runtimeType,lemburId,statusLembur,durasiLembur,upahLembur,processedAt);

@override
String toString() {
  return 'OvertimeSubmissionEntity(lemburId: $lemburId, statusLembur: $statusLembur, durasiLembur: $durasiLembur, upahLembur: $upahLembur, processedAt: $processedAt)';
}


}

/// @nodoc
abstract mixin class $OvertimeSubmissionEntityCopyWith<$Res>  {
  factory $OvertimeSubmissionEntityCopyWith(OvertimeSubmissionEntity value, $Res Function(OvertimeSubmissionEntity) _then) = _$OvertimeSubmissionEntityCopyWithImpl;
@useResult
$Res call({
 String lemburId, String statusLembur, String durasiLembur, int upahLembur, String? processedAt
});




}
/// @nodoc
class _$OvertimeSubmissionEntityCopyWithImpl<$Res>
    implements $OvertimeSubmissionEntityCopyWith<$Res> {
  _$OvertimeSubmissionEntityCopyWithImpl(this._self, this._then);

  final OvertimeSubmissionEntity _self;
  final $Res Function(OvertimeSubmissionEntity) _then;

/// Create a copy of OvertimeSubmissionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lemburId = null,Object? statusLembur = null,Object? durasiLembur = null,Object? upahLembur = null,Object? processedAt = freezed,}) {
  return _then(_self.copyWith(
lemburId: null == lemburId ? _self.lemburId : lemburId // ignore: cast_nullable_to_non_nullable
as String,statusLembur: null == statusLembur ? _self.statusLembur : statusLembur // ignore: cast_nullable_to_non_nullable
as String,durasiLembur: null == durasiLembur ? _self.durasiLembur : durasiLembur // ignore: cast_nullable_to_non_nullable
as String,upahLembur: null == upahLembur ? _self.upahLembur : upahLembur // ignore: cast_nullable_to_non_nullable
as int,processedAt: freezed == processedAt ? _self.processedAt : processedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OvertimeSubmissionEntity].
extension OvertimeSubmissionEntityPatterns on OvertimeSubmissionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OvertimeSubmissionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OvertimeSubmissionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OvertimeSubmissionEntity value)  $default,){
final _that = this;
switch (_that) {
case _OvertimeSubmissionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OvertimeSubmissionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _OvertimeSubmissionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String lemburId,  String statusLembur,  String durasiLembur,  int upahLembur,  String? processedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OvertimeSubmissionEntity() when $default != null:
return $default(_that.lemburId,_that.statusLembur,_that.durasiLembur,_that.upahLembur,_that.processedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String lemburId,  String statusLembur,  String durasiLembur,  int upahLembur,  String? processedAt)  $default,) {final _that = this;
switch (_that) {
case _OvertimeSubmissionEntity():
return $default(_that.lemburId,_that.statusLembur,_that.durasiLembur,_that.upahLembur,_that.processedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String lemburId,  String statusLembur,  String durasiLembur,  int upahLembur,  String? processedAt)?  $default,) {final _that = this;
switch (_that) {
case _OvertimeSubmissionEntity() when $default != null:
return $default(_that.lemburId,_that.statusLembur,_that.durasiLembur,_that.upahLembur,_that.processedAt);case _:
  return null;

}
}

}

/// @nodoc


class _OvertimeSubmissionEntity implements OvertimeSubmissionEntity {
  const _OvertimeSubmissionEntity({required this.lemburId, required this.statusLembur, required this.durasiLembur, required this.upahLembur, this.processedAt});
  

@override final  String lemburId;
@override final  String statusLembur;
@override final  String durasiLembur;
@override final  int upahLembur;
@override final  String? processedAt;

/// Create a copy of OvertimeSubmissionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OvertimeSubmissionEntityCopyWith<_OvertimeSubmissionEntity> get copyWith => __$OvertimeSubmissionEntityCopyWithImpl<_OvertimeSubmissionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OvertimeSubmissionEntity&&(identical(other.lemburId, lemburId) || other.lemburId == lemburId)&&(identical(other.statusLembur, statusLembur) || other.statusLembur == statusLembur)&&(identical(other.durasiLembur, durasiLembur) || other.durasiLembur == durasiLembur)&&(identical(other.upahLembur, upahLembur) || other.upahLembur == upahLembur)&&(identical(other.processedAt, processedAt) || other.processedAt == processedAt));
}


@override
int get hashCode => Object.hash(runtimeType,lemburId,statusLembur,durasiLembur,upahLembur,processedAt);

@override
String toString() {
  return 'OvertimeSubmissionEntity(lemburId: $lemburId, statusLembur: $statusLembur, durasiLembur: $durasiLembur, upahLembur: $upahLembur, processedAt: $processedAt)';
}


}

/// @nodoc
abstract mixin class _$OvertimeSubmissionEntityCopyWith<$Res> implements $OvertimeSubmissionEntityCopyWith<$Res> {
  factory _$OvertimeSubmissionEntityCopyWith(_OvertimeSubmissionEntity value, $Res Function(_OvertimeSubmissionEntity) _then) = __$OvertimeSubmissionEntityCopyWithImpl;
@override @useResult
$Res call({
 String lemburId, String statusLembur, String durasiLembur, int upahLembur, String? processedAt
});




}
/// @nodoc
class __$OvertimeSubmissionEntityCopyWithImpl<$Res>
    implements _$OvertimeSubmissionEntityCopyWith<$Res> {
  __$OvertimeSubmissionEntityCopyWithImpl(this._self, this._then);

  final _OvertimeSubmissionEntity _self;
  final $Res Function(_OvertimeSubmissionEntity) _then;

/// Create a copy of OvertimeSubmissionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lemburId = null,Object? statusLembur = null,Object? durasiLembur = null,Object? upahLembur = null,Object? processedAt = freezed,}) {
  return _then(_OvertimeSubmissionEntity(
lemburId: null == lemburId ? _self.lemburId : lemburId // ignore: cast_nullable_to_non_nullable
as String,statusLembur: null == statusLembur ? _self.statusLembur : statusLembur // ignore: cast_nullable_to_non_nullable
as String,durasiLembur: null == durasiLembur ? _self.durasiLembur : durasiLembur // ignore: cast_nullable_to_non_nullable
as String,upahLembur: null == upahLembur ? _self.upahLembur : upahLembur // ignore: cast_nullable_to_non_nullable
as int,processedAt: freezed == processedAt ? _self.processedAt : processedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
