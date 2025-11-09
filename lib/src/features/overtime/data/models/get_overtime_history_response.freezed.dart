// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_overtime_history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OvertimeHistoryResponse {

 String get tanggal; String? get jamMasuk; String? get statusMasuk; String? get jamPulang; String? get statusPulang; String get statusAbsensi; bool get eligibleLembur; String? get durasiLemburTerhitung; String get jamPulangPerusahaan; OvertimeSubmissionResponse? get lemburPengajuan;
/// Create a copy of OvertimeHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OvertimeHistoryResponseCopyWith<OvertimeHistoryResponse> get copyWith => _$OvertimeHistoryResponseCopyWithImpl<OvertimeHistoryResponse>(this as OvertimeHistoryResponse, _$identity);

  /// Serializes this OvertimeHistoryResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OvertimeHistoryResponse&&(identical(other.tanggal, tanggal) || other.tanggal == tanggal)&&(identical(other.jamMasuk, jamMasuk) || other.jamMasuk == jamMasuk)&&(identical(other.statusMasuk, statusMasuk) || other.statusMasuk == statusMasuk)&&(identical(other.jamPulang, jamPulang) || other.jamPulang == jamPulang)&&(identical(other.statusPulang, statusPulang) || other.statusPulang == statusPulang)&&(identical(other.statusAbsensi, statusAbsensi) || other.statusAbsensi == statusAbsensi)&&(identical(other.eligibleLembur, eligibleLembur) || other.eligibleLembur == eligibleLembur)&&(identical(other.durasiLemburTerhitung, durasiLemburTerhitung) || other.durasiLemburTerhitung == durasiLemburTerhitung)&&(identical(other.jamPulangPerusahaan, jamPulangPerusahaan) || other.jamPulangPerusahaan == jamPulangPerusahaan)&&(identical(other.lemburPengajuan, lemburPengajuan) || other.lemburPengajuan == lemburPengajuan));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tanggal,jamMasuk,statusMasuk,jamPulang,statusPulang,statusAbsensi,eligibleLembur,durasiLemburTerhitung,jamPulangPerusahaan,lemburPengajuan);

@override
String toString() {
  return 'OvertimeHistoryResponse(tanggal: $tanggal, jamMasuk: $jamMasuk, statusMasuk: $statusMasuk, jamPulang: $jamPulang, statusPulang: $statusPulang, statusAbsensi: $statusAbsensi, eligibleLembur: $eligibleLembur, durasiLemburTerhitung: $durasiLemburTerhitung, jamPulangPerusahaan: $jamPulangPerusahaan, lemburPengajuan: $lemburPengajuan)';
}


}

/// @nodoc
abstract mixin class $OvertimeHistoryResponseCopyWith<$Res>  {
  factory $OvertimeHistoryResponseCopyWith(OvertimeHistoryResponse value, $Res Function(OvertimeHistoryResponse) _then) = _$OvertimeHistoryResponseCopyWithImpl;
@useResult
$Res call({
 String tanggal, String? jamMasuk, String? statusMasuk, String? jamPulang, String? statusPulang, String statusAbsensi, bool eligibleLembur, String? durasiLemburTerhitung, String jamPulangPerusahaan, OvertimeSubmissionResponse? lemburPengajuan
});


$OvertimeSubmissionResponseCopyWith<$Res>? get lemburPengajuan;

}
/// @nodoc
class _$OvertimeHistoryResponseCopyWithImpl<$Res>
    implements $OvertimeHistoryResponseCopyWith<$Res> {
  _$OvertimeHistoryResponseCopyWithImpl(this._self, this._then);

  final OvertimeHistoryResponse _self;
  final $Res Function(OvertimeHistoryResponse) _then;

/// Create a copy of OvertimeHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tanggal = null,Object? jamMasuk = freezed,Object? statusMasuk = freezed,Object? jamPulang = freezed,Object? statusPulang = freezed,Object? statusAbsensi = null,Object? eligibleLembur = null,Object? durasiLemburTerhitung = freezed,Object? jamPulangPerusahaan = null,Object? lemburPengajuan = freezed,}) {
  return _then(_self.copyWith(
tanggal: null == tanggal ? _self.tanggal : tanggal // ignore: cast_nullable_to_non_nullable
as String,jamMasuk: freezed == jamMasuk ? _self.jamMasuk : jamMasuk // ignore: cast_nullable_to_non_nullable
as String?,statusMasuk: freezed == statusMasuk ? _self.statusMasuk : statusMasuk // ignore: cast_nullable_to_non_nullable
as String?,jamPulang: freezed == jamPulang ? _self.jamPulang : jamPulang // ignore: cast_nullable_to_non_nullable
as String?,statusPulang: freezed == statusPulang ? _self.statusPulang : statusPulang // ignore: cast_nullable_to_non_nullable
as String?,statusAbsensi: null == statusAbsensi ? _self.statusAbsensi : statusAbsensi // ignore: cast_nullable_to_non_nullable
as String,eligibleLembur: null == eligibleLembur ? _self.eligibleLembur : eligibleLembur // ignore: cast_nullable_to_non_nullable
as bool,durasiLemburTerhitung: freezed == durasiLemburTerhitung ? _self.durasiLemburTerhitung : durasiLemburTerhitung // ignore: cast_nullable_to_non_nullable
as String?,jamPulangPerusahaan: null == jamPulangPerusahaan ? _self.jamPulangPerusahaan : jamPulangPerusahaan // ignore: cast_nullable_to_non_nullable
as String,lemburPengajuan: freezed == lemburPengajuan ? _self.lemburPengajuan : lemburPengajuan // ignore: cast_nullable_to_non_nullable
as OvertimeSubmissionResponse?,
  ));
}
/// Create a copy of OvertimeHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OvertimeSubmissionResponseCopyWith<$Res>? get lemburPengajuan {
    if (_self.lemburPengajuan == null) {
    return null;
  }

  return $OvertimeSubmissionResponseCopyWith<$Res>(_self.lemburPengajuan!, (value) {
    return _then(_self.copyWith(lemburPengajuan: value));
  });
}
}


/// Adds pattern-matching-related methods to [OvertimeHistoryResponse].
extension OvertimeHistoryResponsePatterns on OvertimeHistoryResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OvertimeHistoryResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OvertimeHistoryResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OvertimeHistoryResponse value)  $default,){
final _that = this;
switch (_that) {
case _OvertimeHistoryResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OvertimeHistoryResponse value)?  $default,){
final _that = this;
switch (_that) {
case _OvertimeHistoryResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String tanggal,  String? jamMasuk,  String? statusMasuk,  String? jamPulang,  String? statusPulang,  String statusAbsensi,  bool eligibleLembur,  String? durasiLemburTerhitung,  String jamPulangPerusahaan,  OvertimeSubmissionResponse? lemburPengajuan)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OvertimeHistoryResponse() when $default != null:
return $default(_that.tanggal,_that.jamMasuk,_that.statusMasuk,_that.jamPulang,_that.statusPulang,_that.statusAbsensi,_that.eligibleLembur,_that.durasiLemburTerhitung,_that.jamPulangPerusahaan,_that.lemburPengajuan);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String tanggal,  String? jamMasuk,  String? statusMasuk,  String? jamPulang,  String? statusPulang,  String statusAbsensi,  bool eligibleLembur,  String? durasiLemburTerhitung,  String jamPulangPerusahaan,  OvertimeSubmissionResponse? lemburPengajuan)  $default,) {final _that = this;
switch (_that) {
case _OvertimeHistoryResponse():
return $default(_that.tanggal,_that.jamMasuk,_that.statusMasuk,_that.jamPulang,_that.statusPulang,_that.statusAbsensi,_that.eligibleLembur,_that.durasiLemburTerhitung,_that.jamPulangPerusahaan,_that.lemburPengajuan);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String tanggal,  String? jamMasuk,  String? statusMasuk,  String? jamPulang,  String? statusPulang,  String statusAbsensi,  bool eligibleLembur,  String? durasiLemburTerhitung,  String jamPulangPerusahaan,  OvertimeSubmissionResponse? lemburPengajuan)?  $default,) {final _that = this;
switch (_that) {
case _OvertimeHistoryResponse() when $default != null:
return $default(_that.tanggal,_that.jamMasuk,_that.statusMasuk,_that.jamPulang,_that.statusPulang,_that.statusAbsensi,_that.eligibleLembur,_that.durasiLemburTerhitung,_that.jamPulangPerusahaan,_that.lemburPengajuan);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _OvertimeHistoryResponse implements OvertimeHistoryResponse {
  const _OvertimeHistoryResponse({required this.tanggal, this.jamMasuk, this.statusMasuk, this.jamPulang, this.statusPulang, required this.statusAbsensi, required this.eligibleLembur, this.durasiLemburTerhitung, required this.jamPulangPerusahaan, this.lemburPengajuan});
  factory _OvertimeHistoryResponse.fromJson(Map<String, dynamic> json) => _$OvertimeHistoryResponseFromJson(json);

@override final  String tanggal;
@override final  String? jamMasuk;
@override final  String? statusMasuk;
@override final  String? jamPulang;
@override final  String? statusPulang;
@override final  String statusAbsensi;
@override final  bool eligibleLembur;
@override final  String? durasiLemburTerhitung;
@override final  String jamPulangPerusahaan;
@override final  OvertimeSubmissionResponse? lemburPengajuan;

/// Create a copy of OvertimeHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OvertimeHistoryResponseCopyWith<_OvertimeHistoryResponse> get copyWith => __$OvertimeHistoryResponseCopyWithImpl<_OvertimeHistoryResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OvertimeHistoryResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OvertimeHistoryResponse&&(identical(other.tanggal, tanggal) || other.tanggal == tanggal)&&(identical(other.jamMasuk, jamMasuk) || other.jamMasuk == jamMasuk)&&(identical(other.statusMasuk, statusMasuk) || other.statusMasuk == statusMasuk)&&(identical(other.jamPulang, jamPulang) || other.jamPulang == jamPulang)&&(identical(other.statusPulang, statusPulang) || other.statusPulang == statusPulang)&&(identical(other.statusAbsensi, statusAbsensi) || other.statusAbsensi == statusAbsensi)&&(identical(other.eligibleLembur, eligibleLembur) || other.eligibleLembur == eligibleLembur)&&(identical(other.durasiLemburTerhitung, durasiLemburTerhitung) || other.durasiLemburTerhitung == durasiLemburTerhitung)&&(identical(other.jamPulangPerusahaan, jamPulangPerusahaan) || other.jamPulangPerusahaan == jamPulangPerusahaan)&&(identical(other.lemburPengajuan, lemburPengajuan) || other.lemburPengajuan == lemburPengajuan));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tanggal,jamMasuk,statusMasuk,jamPulang,statusPulang,statusAbsensi,eligibleLembur,durasiLemburTerhitung,jamPulangPerusahaan,lemburPengajuan);

@override
String toString() {
  return 'OvertimeHistoryResponse(tanggal: $tanggal, jamMasuk: $jamMasuk, statusMasuk: $statusMasuk, jamPulang: $jamPulang, statusPulang: $statusPulang, statusAbsensi: $statusAbsensi, eligibleLembur: $eligibleLembur, durasiLemburTerhitung: $durasiLemburTerhitung, jamPulangPerusahaan: $jamPulangPerusahaan, lemburPengajuan: $lemburPengajuan)';
}


}

/// @nodoc
abstract mixin class _$OvertimeHistoryResponseCopyWith<$Res> implements $OvertimeHistoryResponseCopyWith<$Res> {
  factory _$OvertimeHistoryResponseCopyWith(_OvertimeHistoryResponse value, $Res Function(_OvertimeHistoryResponse) _then) = __$OvertimeHistoryResponseCopyWithImpl;
@override @useResult
$Res call({
 String tanggal, String? jamMasuk, String? statusMasuk, String? jamPulang, String? statusPulang, String statusAbsensi, bool eligibleLembur, String? durasiLemburTerhitung, String jamPulangPerusahaan, OvertimeSubmissionResponse? lemburPengajuan
});


@override $OvertimeSubmissionResponseCopyWith<$Res>? get lemburPengajuan;

}
/// @nodoc
class __$OvertimeHistoryResponseCopyWithImpl<$Res>
    implements _$OvertimeHistoryResponseCopyWith<$Res> {
  __$OvertimeHistoryResponseCopyWithImpl(this._self, this._then);

  final _OvertimeHistoryResponse _self;
  final $Res Function(_OvertimeHistoryResponse) _then;

/// Create a copy of OvertimeHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tanggal = null,Object? jamMasuk = freezed,Object? statusMasuk = freezed,Object? jamPulang = freezed,Object? statusPulang = freezed,Object? statusAbsensi = null,Object? eligibleLembur = null,Object? durasiLemburTerhitung = freezed,Object? jamPulangPerusahaan = null,Object? lemburPengajuan = freezed,}) {
  return _then(_OvertimeHistoryResponse(
tanggal: null == tanggal ? _self.tanggal : tanggal // ignore: cast_nullable_to_non_nullable
as String,jamMasuk: freezed == jamMasuk ? _self.jamMasuk : jamMasuk // ignore: cast_nullable_to_non_nullable
as String?,statusMasuk: freezed == statusMasuk ? _self.statusMasuk : statusMasuk // ignore: cast_nullable_to_non_nullable
as String?,jamPulang: freezed == jamPulang ? _self.jamPulang : jamPulang // ignore: cast_nullable_to_non_nullable
as String?,statusPulang: freezed == statusPulang ? _self.statusPulang : statusPulang // ignore: cast_nullable_to_non_nullable
as String?,statusAbsensi: null == statusAbsensi ? _self.statusAbsensi : statusAbsensi // ignore: cast_nullable_to_non_nullable
as String,eligibleLembur: null == eligibleLembur ? _self.eligibleLembur : eligibleLembur // ignore: cast_nullable_to_non_nullable
as bool,durasiLemburTerhitung: freezed == durasiLemburTerhitung ? _self.durasiLemburTerhitung : durasiLemburTerhitung // ignore: cast_nullable_to_non_nullable
as String?,jamPulangPerusahaan: null == jamPulangPerusahaan ? _self.jamPulangPerusahaan : jamPulangPerusahaan // ignore: cast_nullable_to_non_nullable
as String,lemburPengajuan: freezed == lemburPengajuan ? _self.lemburPengajuan : lemburPengajuan // ignore: cast_nullable_to_non_nullable
as OvertimeSubmissionResponse?,
  ));
}

/// Create a copy of OvertimeHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OvertimeSubmissionResponseCopyWith<$Res>? get lemburPengajuan {
    if (_self.lemburPengajuan == null) {
    return null;
  }

  return $OvertimeSubmissionResponseCopyWith<$Res>(_self.lemburPengajuan!, (value) {
    return _then(_self.copyWith(lemburPengajuan: value));
  });
}
}


/// @nodoc
mixin _$OvertimeSubmissionResponse {

 String get lemburId; String get statusLembur; String get durasiLembur; int get upahLembur; String? get processedAt;
/// Create a copy of OvertimeSubmissionResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OvertimeSubmissionResponseCopyWith<OvertimeSubmissionResponse> get copyWith => _$OvertimeSubmissionResponseCopyWithImpl<OvertimeSubmissionResponse>(this as OvertimeSubmissionResponse, _$identity);

  /// Serializes this OvertimeSubmissionResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OvertimeSubmissionResponse&&(identical(other.lemburId, lemburId) || other.lemburId == lemburId)&&(identical(other.statusLembur, statusLembur) || other.statusLembur == statusLembur)&&(identical(other.durasiLembur, durasiLembur) || other.durasiLembur == durasiLembur)&&(identical(other.upahLembur, upahLembur) || other.upahLembur == upahLembur)&&(identical(other.processedAt, processedAt) || other.processedAt == processedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lemburId,statusLembur,durasiLembur,upahLembur,processedAt);

@override
String toString() {
  return 'OvertimeSubmissionResponse(lemburId: $lemburId, statusLembur: $statusLembur, durasiLembur: $durasiLembur, upahLembur: $upahLembur, processedAt: $processedAt)';
}


}

/// @nodoc
abstract mixin class $OvertimeSubmissionResponseCopyWith<$Res>  {
  factory $OvertimeSubmissionResponseCopyWith(OvertimeSubmissionResponse value, $Res Function(OvertimeSubmissionResponse) _then) = _$OvertimeSubmissionResponseCopyWithImpl;
@useResult
$Res call({
 String lemburId, String statusLembur, String durasiLembur, int upahLembur, String? processedAt
});




}
/// @nodoc
class _$OvertimeSubmissionResponseCopyWithImpl<$Res>
    implements $OvertimeSubmissionResponseCopyWith<$Res> {
  _$OvertimeSubmissionResponseCopyWithImpl(this._self, this._then);

  final OvertimeSubmissionResponse _self;
  final $Res Function(OvertimeSubmissionResponse) _then;

/// Create a copy of OvertimeSubmissionResponse
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


/// Adds pattern-matching-related methods to [OvertimeSubmissionResponse].
extension OvertimeSubmissionResponsePatterns on OvertimeSubmissionResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OvertimeSubmissionResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OvertimeSubmissionResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OvertimeSubmissionResponse value)  $default,){
final _that = this;
switch (_that) {
case _OvertimeSubmissionResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OvertimeSubmissionResponse value)?  $default,){
final _that = this;
switch (_that) {
case _OvertimeSubmissionResponse() when $default != null:
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
case _OvertimeSubmissionResponse() when $default != null:
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
case _OvertimeSubmissionResponse():
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
case _OvertimeSubmissionResponse() when $default != null:
return $default(_that.lemburId,_that.statusLembur,_that.durasiLembur,_that.upahLembur,_that.processedAt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _OvertimeSubmissionResponse implements OvertimeSubmissionResponse {
  const _OvertimeSubmissionResponse({required this.lemburId, required this.statusLembur, required this.durasiLembur, required this.upahLembur, this.processedAt});
  factory _OvertimeSubmissionResponse.fromJson(Map<String, dynamic> json) => _$OvertimeSubmissionResponseFromJson(json);

@override final  String lemburId;
@override final  String statusLembur;
@override final  String durasiLembur;
@override final  int upahLembur;
@override final  String? processedAt;

/// Create a copy of OvertimeSubmissionResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OvertimeSubmissionResponseCopyWith<_OvertimeSubmissionResponse> get copyWith => __$OvertimeSubmissionResponseCopyWithImpl<_OvertimeSubmissionResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OvertimeSubmissionResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OvertimeSubmissionResponse&&(identical(other.lemburId, lemburId) || other.lemburId == lemburId)&&(identical(other.statusLembur, statusLembur) || other.statusLembur == statusLembur)&&(identical(other.durasiLembur, durasiLembur) || other.durasiLembur == durasiLembur)&&(identical(other.upahLembur, upahLembur) || other.upahLembur == upahLembur)&&(identical(other.processedAt, processedAt) || other.processedAt == processedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lemburId,statusLembur,durasiLembur,upahLembur,processedAt);

@override
String toString() {
  return 'OvertimeSubmissionResponse(lemburId: $lemburId, statusLembur: $statusLembur, durasiLembur: $durasiLembur, upahLembur: $upahLembur, processedAt: $processedAt)';
}


}

/// @nodoc
abstract mixin class _$OvertimeSubmissionResponseCopyWith<$Res> implements $OvertimeSubmissionResponseCopyWith<$Res> {
  factory _$OvertimeSubmissionResponseCopyWith(_OvertimeSubmissionResponse value, $Res Function(_OvertimeSubmissionResponse) _then) = __$OvertimeSubmissionResponseCopyWithImpl;
@override @useResult
$Res call({
 String lemburId, String statusLembur, String durasiLembur, int upahLembur, String? processedAt
});




}
/// @nodoc
class __$OvertimeSubmissionResponseCopyWithImpl<$Res>
    implements _$OvertimeSubmissionResponseCopyWith<$Res> {
  __$OvertimeSubmissionResponseCopyWithImpl(this._self, this._then);

  final _OvertimeSubmissionResponse _self;
  final $Res Function(_OvertimeSubmissionResponse) _then;

/// Create a copy of OvertimeSubmissionResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lemburId = null,Object? statusLembur = null,Object? durasiLembur = null,Object? upahLembur = null,Object? processedAt = freezed,}) {
  return _then(_OvertimeSubmissionResponse(
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
