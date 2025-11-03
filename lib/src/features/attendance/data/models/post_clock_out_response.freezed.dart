// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_clock_out_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostClockOutResponse {

 String get absensiId; String get karyawanId; String get tanggal; String get waktuMasuk; String get statusMasuk; String get statusAbsensi; String get durasiTelat; String get fotoMasuk; ClockInBranchResponse get cabang; String get distanceFromBranch;
/// Create a copy of PostClockOutResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostClockOutResponseCopyWith<PostClockOutResponse> get copyWith => _$PostClockOutResponseCopyWithImpl<PostClockOutResponse>(this as PostClockOutResponse, _$identity);

  /// Serializes this PostClockOutResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostClockOutResponse&&(identical(other.absensiId, absensiId) || other.absensiId == absensiId)&&(identical(other.karyawanId, karyawanId) || other.karyawanId == karyawanId)&&(identical(other.tanggal, tanggal) || other.tanggal == tanggal)&&(identical(other.waktuMasuk, waktuMasuk) || other.waktuMasuk == waktuMasuk)&&(identical(other.statusMasuk, statusMasuk) || other.statusMasuk == statusMasuk)&&(identical(other.statusAbsensi, statusAbsensi) || other.statusAbsensi == statusAbsensi)&&(identical(other.durasiTelat, durasiTelat) || other.durasiTelat == durasiTelat)&&(identical(other.fotoMasuk, fotoMasuk) || other.fotoMasuk == fotoMasuk)&&(identical(other.cabang, cabang) || other.cabang == cabang)&&(identical(other.distanceFromBranch, distanceFromBranch) || other.distanceFromBranch == distanceFromBranch));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,absensiId,karyawanId,tanggal,waktuMasuk,statusMasuk,statusAbsensi,durasiTelat,fotoMasuk,cabang,distanceFromBranch);

@override
String toString() {
  return 'PostClockOutResponse(absensiId: $absensiId, karyawanId: $karyawanId, tanggal: $tanggal, waktuMasuk: $waktuMasuk, statusMasuk: $statusMasuk, statusAbsensi: $statusAbsensi, durasiTelat: $durasiTelat, fotoMasuk: $fotoMasuk, cabang: $cabang, distanceFromBranch: $distanceFromBranch)';
}


}

/// @nodoc
abstract mixin class $PostClockOutResponseCopyWith<$Res>  {
  factory $PostClockOutResponseCopyWith(PostClockOutResponse value, $Res Function(PostClockOutResponse) _then) = _$PostClockOutResponseCopyWithImpl;
@useResult
$Res call({
 String absensiId, String karyawanId, String tanggal, String waktuMasuk, String statusMasuk, String statusAbsensi, String durasiTelat, String fotoMasuk, ClockInBranchResponse cabang, String distanceFromBranch
});


$ClockInBranchResponseCopyWith<$Res> get cabang;

}
/// @nodoc
class _$PostClockOutResponseCopyWithImpl<$Res>
    implements $PostClockOutResponseCopyWith<$Res> {
  _$PostClockOutResponseCopyWithImpl(this._self, this._then);

  final PostClockOutResponse _self;
  final $Res Function(PostClockOutResponse) _then;

/// Create a copy of PostClockOutResponse
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
as ClockInBranchResponse,distanceFromBranch: null == distanceFromBranch ? _self.distanceFromBranch : distanceFromBranch // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of PostClockOutResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClockInBranchResponseCopyWith<$Res> get cabang {
  
  return $ClockInBranchResponseCopyWith<$Res>(_self.cabang, (value) {
    return _then(_self.copyWith(cabang: value));
  });
}
}


/// Adds pattern-matching-related methods to [PostClockOutResponse].
extension PostClockOutResponsePatterns on PostClockOutResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostClockOutResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostClockOutResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostClockOutResponse value)  $default,){
final _that = this;
switch (_that) {
case _PostClockOutResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostClockOutResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PostClockOutResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String absensiId,  String karyawanId,  String tanggal,  String waktuMasuk,  String statusMasuk,  String statusAbsensi,  String durasiTelat,  String fotoMasuk,  ClockInBranchResponse cabang,  String distanceFromBranch)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostClockOutResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String absensiId,  String karyawanId,  String tanggal,  String waktuMasuk,  String statusMasuk,  String statusAbsensi,  String durasiTelat,  String fotoMasuk,  ClockInBranchResponse cabang,  String distanceFromBranch)  $default,) {final _that = this;
switch (_that) {
case _PostClockOutResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String absensiId,  String karyawanId,  String tanggal,  String waktuMasuk,  String statusMasuk,  String statusAbsensi,  String durasiTelat,  String fotoMasuk,  ClockInBranchResponse cabang,  String distanceFromBranch)?  $default,) {final _that = this;
switch (_that) {
case _PostClockOutResponse() when $default != null:
return $default(_that.absensiId,_that.karyawanId,_that.tanggal,_that.waktuMasuk,_that.statusMasuk,_that.statusAbsensi,_that.durasiTelat,_that.fotoMasuk,_that.cabang,_that.distanceFromBranch);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _PostClockOutResponse implements PostClockOutResponse {
  const _PostClockOutResponse({required this.absensiId, required this.karyawanId, required this.tanggal, required this.waktuMasuk, required this.statusMasuk, required this.statusAbsensi, required this.durasiTelat, required this.fotoMasuk, required this.cabang, required this.distanceFromBranch});
  factory _PostClockOutResponse.fromJson(Map<String, dynamic> json) => _$PostClockOutResponseFromJson(json);

@override final  String absensiId;
@override final  String karyawanId;
@override final  String tanggal;
@override final  String waktuMasuk;
@override final  String statusMasuk;
@override final  String statusAbsensi;
@override final  String durasiTelat;
@override final  String fotoMasuk;
@override final  ClockInBranchResponse cabang;
@override final  String distanceFromBranch;

/// Create a copy of PostClockOutResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostClockOutResponseCopyWith<_PostClockOutResponse> get copyWith => __$PostClockOutResponseCopyWithImpl<_PostClockOutResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostClockOutResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostClockOutResponse&&(identical(other.absensiId, absensiId) || other.absensiId == absensiId)&&(identical(other.karyawanId, karyawanId) || other.karyawanId == karyawanId)&&(identical(other.tanggal, tanggal) || other.tanggal == tanggal)&&(identical(other.waktuMasuk, waktuMasuk) || other.waktuMasuk == waktuMasuk)&&(identical(other.statusMasuk, statusMasuk) || other.statusMasuk == statusMasuk)&&(identical(other.statusAbsensi, statusAbsensi) || other.statusAbsensi == statusAbsensi)&&(identical(other.durasiTelat, durasiTelat) || other.durasiTelat == durasiTelat)&&(identical(other.fotoMasuk, fotoMasuk) || other.fotoMasuk == fotoMasuk)&&(identical(other.cabang, cabang) || other.cabang == cabang)&&(identical(other.distanceFromBranch, distanceFromBranch) || other.distanceFromBranch == distanceFromBranch));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,absensiId,karyawanId,tanggal,waktuMasuk,statusMasuk,statusAbsensi,durasiTelat,fotoMasuk,cabang,distanceFromBranch);

@override
String toString() {
  return 'PostClockOutResponse(absensiId: $absensiId, karyawanId: $karyawanId, tanggal: $tanggal, waktuMasuk: $waktuMasuk, statusMasuk: $statusMasuk, statusAbsensi: $statusAbsensi, durasiTelat: $durasiTelat, fotoMasuk: $fotoMasuk, cabang: $cabang, distanceFromBranch: $distanceFromBranch)';
}


}

/// @nodoc
abstract mixin class _$PostClockOutResponseCopyWith<$Res> implements $PostClockOutResponseCopyWith<$Res> {
  factory _$PostClockOutResponseCopyWith(_PostClockOutResponse value, $Res Function(_PostClockOutResponse) _then) = __$PostClockOutResponseCopyWithImpl;
@override @useResult
$Res call({
 String absensiId, String karyawanId, String tanggal, String waktuMasuk, String statusMasuk, String statusAbsensi, String durasiTelat, String fotoMasuk, ClockInBranchResponse cabang, String distanceFromBranch
});


@override $ClockInBranchResponseCopyWith<$Res> get cabang;

}
/// @nodoc
class __$PostClockOutResponseCopyWithImpl<$Res>
    implements _$PostClockOutResponseCopyWith<$Res> {
  __$PostClockOutResponseCopyWithImpl(this._self, this._then);

  final _PostClockOutResponse _self;
  final $Res Function(_PostClockOutResponse) _then;

/// Create a copy of PostClockOutResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? absensiId = null,Object? karyawanId = null,Object? tanggal = null,Object? waktuMasuk = null,Object? statusMasuk = null,Object? statusAbsensi = null,Object? durasiTelat = null,Object? fotoMasuk = null,Object? cabang = null,Object? distanceFromBranch = null,}) {
  return _then(_PostClockOutResponse(
absensiId: null == absensiId ? _self.absensiId : absensiId // ignore: cast_nullable_to_non_nullable
as String,karyawanId: null == karyawanId ? _self.karyawanId : karyawanId // ignore: cast_nullable_to_non_nullable
as String,tanggal: null == tanggal ? _self.tanggal : tanggal // ignore: cast_nullable_to_non_nullable
as String,waktuMasuk: null == waktuMasuk ? _self.waktuMasuk : waktuMasuk // ignore: cast_nullable_to_non_nullable
as String,statusMasuk: null == statusMasuk ? _self.statusMasuk : statusMasuk // ignore: cast_nullable_to_non_nullable
as String,statusAbsensi: null == statusAbsensi ? _self.statusAbsensi : statusAbsensi // ignore: cast_nullable_to_non_nullable
as String,durasiTelat: null == durasiTelat ? _self.durasiTelat : durasiTelat // ignore: cast_nullable_to_non_nullable
as String,fotoMasuk: null == fotoMasuk ? _self.fotoMasuk : fotoMasuk // ignore: cast_nullable_to_non_nullable
as String,cabang: null == cabang ? _self.cabang : cabang // ignore: cast_nullable_to_non_nullable
as ClockInBranchResponse,distanceFromBranch: null == distanceFromBranch ? _self.distanceFromBranch : distanceFromBranch // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of PostClockOutResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClockInBranchResponseCopyWith<$Res> get cabang {
  
  return $ClockInBranchResponseCopyWith<$Res>(_self.cabang, (value) {
    return _then(_self.copyWith(cabang: value));
  });
}
}


/// @nodoc
mixin _$ClockInBranchResponse {

 String get cabangId; String get namaCabang; String get alamat;
/// Create a copy of ClockInBranchResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClockInBranchResponseCopyWith<ClockInBranchResponse> get copyWith => _$ClockInBranchResponseCopyWithImpl<ClockInBranchResponse>(this as ClockInBranchResponse, _$identity);

  /// Serializes this ClockInBranchResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClockInBranchResponse&&(identical(other.cabangId, cabangId) || other.cabangId == cabangId)&&(identical(other.namaCabang, namaCabang) || other.namaCabang == namaCabang)&&(identical(other.alamat, alamat) || other.alamat == alamat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cabangId,namaCabang,alamat);

@override
String toString() {
  return 'ClockInBranchResponse(cabangId: $cabangId, namaCabang: $namaCabang, alamat: $alamat)';
}


}

/// @nodoc
abstract mixin class $ClockInBranchResponseCopyWith<$Res>  {
  factory $ClockInBranchResponseCopyWith(ClockInBranchResponse value, $Res Function(ClockInBranchResponse) _then) = _$ClockInBranchResponseCopyWithImpl;
@useResult
$Res call({
 String cabangId, String namaCabang, String alamat
});




}
/// @nodoc
class _$ClockInBranchResponseCopyWithImpl<$Res>
    implements $ClockInBranchResponseCopyWith<$Res> {
  _$ClockInBranchResponseCopyWithImpl(this._self, this._then);

  final ClockInBranchResponse _self;
  final $Res Function(ClockInBranchResponse) _then;

/// Create a copy of ClockInBranchResponse
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


/// Adds pattern-matching-related methods to [ClockInBranchResponse].
extension ClockInBranchResponsePatterns on ClockInBranchResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClockInBranchResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClockInBranchResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClockInBranchResponse value)  $default,){
final _that = this;
switch (_that) {
case _ClockInBranchResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClockInBranchResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ClockInBranchResponse() when $default != null:
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
case _ClockInBranchResponse() when $default != null:
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
case _ClockInBranchResponse():
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
case _ClockInBranchResponse() when $default != null:
return $default(_that.cabangId,_that.namaCabang,_that.alamat);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ClockInBranchResponse implements ClockInBranchResponse {
  const _ClockInBranchResponse({required this.cabangId, required this.namaCabang, required this.alamat});
  factory _ClockInBranchResponse.fromJson(Map<String, dynamic> json) => _$ClockInBranchResponseFromJson(json);

@override final  String cabangId;
@override final  String namaCabang;
@override final  String alamat;

/// Create a copy of ClockInBranchResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClockInBranchResponseCopyWith<_ClockInBranchResponse> get copyWith => __$ClockInBranchResponseCopyWithImpl<_ClockInBranchResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClockInBranchResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClockInBranchResponse&&(identical(other.cabangId, cabangId) || other.cabangId == cabangId)&&(identical(other.namaCabang, namaCabang) || other.namaCabang == namaCabang)&&(identical(other.alamat, alamat) || other.alamat == alamat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cabangId,namaCabang,alamat);

@override
String toString() {
  return 'ClockInBranchResponse(cabangId: $cabangId, namaCabang: $namaCabang, alamat: $alamat)';
}


}

/// @nodoc
abstract mixin class _$ClockInBranchResponseCopyWith<$Res> implements $ClockInBranchResponseCopyWith<$Res> {
  factory _$ClockInBranchResponseCopyWith(_ClockInBranchResponse value, $Res Function(_ClockInBranchResponse) _then) = __$ClockInBranchResponseCopyWithImpl;
@override @useResult
$Res call({
 String cabangId, String namaCabang, String alamat
});




}
/// @nodoc
class __$ClockInBranchResponseCopyWithImpl<$Res>
    implements _$ClockInBranchResponseCopyWith<$Res> {
  __$ClockInBranchResponseCopyWithImpl(this._self, this._then);

  final _ClockInBranchResponse _self;
  final $Res Function(_ClockInBranchResponse) _then;

/// Create a copy of ClockInBranchResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cabangId = null,Object? namaCabang = null,Object? alamat = null,}) {
  return _then(_ClockInBranchResponse(
cabangId: null == cabangId ? _self.cabangId : cabangId // ignore: cast_nullable_to_non_nullable
as String,namaCabang: null == namaCabang ? _self.namaCabang : namaCabang // ignore: cast_nullable_to_non_nullable
as String,alamat: null == alamat ? _self.alamat : alamat // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
