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

 String? get absensiId; String? get karyawanId; String? get tanggal; String? get waktuPulang; String? get statusPulang; String? get statusAbsensi; String? get durasiPulangCepat; String? get fotoPulang; ClockOutBranchResponse? get cabang; String? get distanceFromBranch; bool? get isEligibleLembur;
/// Create a copy of PostClockOutResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostClockOutResponseCopyWith<PostClockOutResponse> get copyWith => _$PostClockOutResponseCopyWithImpl<PostClockOutResponse>(this as PostClockOutResponse, _$identity);

  /// Serializes this PostClockOutResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostClockOutResponse&&(identical(other.absensiId, absensiId) || other.absensiId == absensiId)&&(identical(other.karyawanId, karyawanId) || other.karyawanId == karyawanId)&&(identical(other.tanggal, tanggal) || other.tanggal == tanggal)&&(identical(other.waktuPulang, waktuPulang) || other.waktuPulang == waktuPulang)&&(identical(other.statusPulang, statusPulang) || other.statusPulang == statusPulang)&&(identical(other.statusAbsensi, statusAbsensi) || other.statusAbsensi == statusAbsensi)&&(identical(other.durasiPulangCepat, durasiPulangCepat) || other.durasiPulangCepat == durasiPulangCepat)&&(identical(other.fotoPulang, fotoPulang) || other.fotoPulang == fotoPulang)&&(identical(other.cabang, cabang) || other.cabang == cabang)&&(identical(other.distanceFromBranch, distanceFromBranch) || other.distanceFromBranch == distanceFromBranch)&&(identical(other.isEligibleLembur, isEligibleLembur) || other.isEligibleLembur == isEligibleLembur));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,absensiId,karyawanId,tanggal,waktuPulang,statusPulang,statusAbsensi,durasiPulangCepat,fotoPulang,cabang,distanceFromBranch,isEligibleLembur);

@override
String toString() {
  return 'PostClockOutResponse(absensiId: $absensiId, karyawanId: $karyawanId, tanggal: $tanggal, waktuPulang: $waktuPulang, statusPulang: $statusPulang, statusAbsensi: $statusAbsensi, durasiPulangCepat: $durasiPulangCepat, fotoPulang: $fotoPulang, cabang: $cabang, distanceFromBranch: $distanceFromBranch, isEligibleLembur: $isEligibleLembur)';
}


}

/// @nodoc
abstract mixin class $PostClockOutResponseCopyWith<$Res>  {
  factory $PostClockOutResponseCopyWith(PostClockOutResponse value, $Res Function(PostClockOutResponse) _then) = _$PostClockOutResponseCopyWithImpl;
@useResult
$Res call({
 String? absensiId, String? karyawanId, String? tanggal, String? waktuPulang, String? statusPulang, String? statusAbsensi, String? durasiPulangCepat, String? fotoPulang, ClockOutBranchResponse? cabang, String? distanceFromBranch, bool? isEligibleLembur
});


$ClockOutBranchResponseCopyWith<$Res>? get cabang;

}
/// @nodoc
class _$PostClockOutResponseCopyWithImpl<$Res>
    implements $PostClockOutResponseCopyWith<$Res> {
  _$PostClockOutResponseCopyWithImpl(this._self, this._then);

  final PostClockOutResponse _self;
  final $Res Function(PostClockOutResponse) _then;

/// Create a copy of PostClockOutResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? absensiId = freezed,Object? karyawanId = freezed,Object? tanggal = freezed,Object? waktuPulang = freezed,Object? statusPulang = freezed,Object? statusAbsensi = freezed,Object? durasiPulangCepat = freezed,Object? fotoPulang = freezed,Object? cabang = freezed,Object? distanceFromBranch = freezed,Object? isEligibleLembur = freezed,}) {
  return _then(_self.copyWith(
absensiId: freezed == absensiId ? _self.absensiId : absensiId // ignore: cast_nullable_to_non_nullable
as String?,karyawanId: freezed == karyawanId ? _self.karyawanId : karyawanId // ignore: cast_nullable_to_non_nullable
as String?,tanggal: freezed == tanggal ? _self.tanggal : tanggal // ignore: cast_nullable_to_non_nullable
as String?,waktuPulang: freezed == waktuPulang ? _self.waktuPulang : waktuPulang // ignore: cast_nullable_to_non_nullable
as String?,statusPulang: freezed == statusPulang ? _self.statusPulang : statusPulang // ignore: cast_nullable_to_non_nullable
as String?,statusAbsensi: freezed == statusAbsensi ? _self.statusAbsensi : statusAbsensi // ignore: cast_nullable_to_non_nullable
as String?,durasiPulangCepat: freezed == durasiPulangCepat ? _self.durasiPulangCepat : durasiPulangCepat // ignore: cast_nullable_to_non_nullable
as String?,fotoPulang: freezed == fotoPulang ? _self.fotoPulang : fotoPulang // ignore: cast_nullable_to_non_nullable
as String?,cabang: freezed == cabang ? _self.cabang : cabang // ignore: cast_nullable_to_non_nullable
as ClockOutBranchResponse?,distanceFromBranch: freezed == distanceFromBranch ? _self.distanceFromBranch : distanceFromBranch // ignore: cast_nullable_to_non_nullable
as String?,isEligibleLembur: freezed == isEligibleLembur ? _self.isEligibleLembur : isEligibleLembur // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of PostClockOutResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClockOutBranchResponseCopyWith<$Res>? get cabang {
    if (_self.cabang == null) {
    return null;
  }

  return $ClockOutBranchResponseCopyWith<$Res>(_self.cabang!, (value) {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? absensiId,  String? karyawanId,  String? tanggal,  String? waktuPulang,  String? statusPulang,  String? statusAbsensi,  String? durasiPulangCepat,  String? fotoPulang,  ClockOutBranchResponse? cabang,  String? distanceFromBranch,  bool? isEligibleLembur)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostClockOutResponse() when $default != null:
return $default(_that.absensiId,_that.karyawanId,_that.tanggal,_that.waktuPulang,_that.statusPulang,_that.statusAbsensi,_that.durasiPulangCepat,_that.fotoPulang,_that.cabang,_that.distanceFromBranch,_that.isEligibleLembur);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? absensiId,  String? karyawanId,  String? tanggal,  String? waktuPulang,  String? statusPulang,  String? statusAbsensi,  String? durasiPulangCepat,  String? fotoPulang,  ClockOutBranchResponse? cabang,  String? distanceFromBranch,  bool? isEligibleLembur)  $default,) {final _that = this;
switch (_that) {
case _PostClockOutResponse():
return $default(_that.absensiId,_that.karyawanId,_that.tanggal,_that.waktuPulang,_that.statusPulang,_that.statusAbsensi,_that.durasiPulangCepat,_that.fotoPulang,_that.cabang,_that.distanceFromBranch,_that.isEligibleLembur);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? absensiId,  String? karyawanId,  String? tanggal,  String? waktuPulang,  String? statusPulang,  String? statusAbsensi,  String? durasiPulangCepat,  String? fotoPulang,  ClockOutBranchResponse? cabang,  String? distanceFromBranch,  bool? isEligibleLembur)?  $default,) {final _that = this;
switch (_that) {
case _PostClockOutResponse() when $default != null:
return $default(_that.absensiId,_that.karyawanId,_that.tanggal,_that.waktuPulang,_that.statusPulang,_that.statusAbsensi,_that.durasiPulangCepat,_that.fotoPulang,_that.cabang,_that.distanceFromBranch,_that.isEligibleLembur);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _PostClockOutResponse implements PostClockOutResponse {
  const _PostClockOutResponse({this.absensiId, this.karyawanId, this.tanggal, this.waktuPulang, this.statusPulang, this.statusAbsensi, this.durasiPulangCepat, this.fotoPulang, this.cabang, this.distanceFromBranch, this.isEligibleLembur});
  factory _PostClockOutResponse.fromJson(Map<String, dynamic> json) => _$PostClockOutResponseFromJson(json);

@override final  String? absensiId;
@override final  String? karyawanId;
@override final  String? tanggal;
@override final  String? waktuPulang;
@override final  String? statusPulang;
@override final  String? statusAbsensi;
@override final  String? durasiPulangCepat;
@override final  String? fotoPulang;
@override final  ClockOutBranchResponse? cabang;
@override final  String? distanceFromBranch;
@override final  bool? isEligibleLembur;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostClockOutResponse&&(identical(other.absensiId, absensiId) || other.absensiId == absensiId)&&(identical(other.karyawanId, karyawanId) || other.karyawanId == karyawanId)&&(identical(other.tanggal, tanggal) || other.tanggal == tanggal)&&(identical(other.waktuPulang, waktuPulang) || other.waktuPulang == waktuPulang)&&(identical(other.statusPulang, statusPulang) || other.statusPulang == statusPulang)&&(identical(other.statusAbsensi, statusAbsensi) || other.statusAbsensi == statusAbsensi)&&(identical(other.durasiPulangCepat, durasiPulangCepat) || other.durasiPulangCepat == durasiPulangCepat)&&(identical(other.fotoPulang, fotoPulang) || other.fotoPulang == fotoPulang)&&(identical(other.cabang, cabang) || other.cabang == cabang)&&(identical(other.distanceFromBranch, distanceFromBranch) || other.distanceFromBranch == distanceFromBranch)&&(identical(other.isEligibleLembur, isEligibleLembur) || other.isEligibleLembur == isEligibleLembur));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,absensiId,karyawanId,tanggal,waktuPulang,statusPulang,statusAbsensi,durasiPulangCepat,fotoPulang,cabang,distanceFromBranch,isEligibleLembur);

@override
String toString() {
  return 'PostClockOutResponse(absensiId: $absensiId, karyawanId: $karyawanId, tanggal: $tanggal, waktuPulang: $waktuPulang, statusPulang: $statusPulang, statusAbsensi: $statusAbsensi, durasiPulangCepat: $durasiPulangCepat, fotoPulang: $fotoPulang, cabang: $cabang, distanceFromBranch: $distanceFromBranch, isEligibleLembur: $isEligibleLembur)';
}


}

/// @nodoc
abstract mixin class _$PostClockOutResponseCopyWith<$Res> implements $PostClockOutResponseCopyWith<$Res> {
  factory _$PostClockOutResponseCopyWith(_PostClockOutResponse value, $Res Function(_PostClockOutResponse) _then) = __$PostClockOutResponseCopyWithImpl;
@override @useResult
$Res call({
 String? absensiId, String? karyawanId, String? tanggal, String? waktuPulang, String? statusPulang, String? statusAbsensi, String? durasiPulangCepat, String? fotoPulang, ClockOutBranchResponse? cabang, String? distanceFromBranch, bool? isEligibleLembur
});


@override $ClockOutBranchResponseCopyWith<$Res>? get cabang;

}
/// @nodoc
class __$PostClockOutResponseCopyWithImpl<$Res>
    implements _$PostClockOutResponseCopyWith<$Res> {
  __$PostClockOutResponseCopyWithImpl(this._self, this._then);

  final _PostClockOutResponse _self;
  final $Res Function(_PostClockOutResponse) _then;

/// Create a copy of PostClockOutResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? absensiId = freezed,Object? karyawanId = freezed,Object? tanggal = freezed,Object? waktuPulang = freezed,Object? statusPulang = freezed,Object? statusAbsensi = freezed,Object? durasiPulangCepat = freezed,Object? fotoPulang = freezed,Object? cabang = freezed,Object? distanceFromBranch = freezed,Object? isEligibleLembur = freezed,}) {
  return _then(_PostClockOutResponse(
absensiId: freezed == absensiId ? _self.absensiId : absensiId // ignore: cast_nullable_to_non_nullable
as String?,karyawanId: freezed == karyawanId ? _self.karyawanId : karyawanId // ignore: cast_nullable_to_non_nullable
as String?,tanggal: freezed == tanggal ? _self.tanggal : tanggal // ignore: cast_nullable_to_non_nullable
as String?,waktuPulang: freezed == waktuPulang ? _self.waktuPulang : waktuPulang // ignore: cast_nullable_to_non_nullable
as String?,statusPulang: freezed == statusPulang ? _self.statusPulang : statusPulang // ignore: cast_nullable_to_non_nullable
as String?,statusAbsensi: freezed == statusAbsensi ? _self.statusAbsensi : statusAbsensi // ignore: cast_nullable_to_non_nullable
as String?,durasiPulangCepat: freezed == durasiPulangCepat ? _self.durasiPulangCepat : durasiPulangCepat // ignore: cast_nullable_to_non_nullable
as String?,fotoPulang: freezed == fotoPulang ? _self.fotoPulang : fotoPulang // ignore: cast_nullable_to_non_nullable
as String?,cabang: freezed == cabang ? _self.cabang : cabang // ignore: cast_nullable_to_non_nullable
as ClockOutBranchResponse?,distanceFromBranch: freezed == distanceFromBranch ? _self.distanceFromBranch : distanceFromBranch // ignore: cast_nullable_to_non_nullable
as String?,isEligibleLembur: freezed == isEligibleLembur ? _self.isEligibleLembur : isEligibleLembur // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of PostClockOutResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClockOutBranchResponseCopyWith<$Res>? get cabang {
    if (_self.cabang == null) {
    return null;
  }

  return $ClockOutBranchResponseCopyWith<$Res>(_self.cabang!, (value) {
    return _then(_self.copyWith(cabang: value));
  });
}
}


/// @nodoc
mixin _$ClockOutBranchResponse {

 String? get cabangId; String? get namaCabang; String? get alamat;
/// Create a copy of ClockOutBranchResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClockOutBranchResponseCopyWith<ClockOutBranchResponse> get copyWith => _$ClockOutBranchResponseCopyWithImpl<ClockOutBranchResponse>(this as ClockOutBranchResponse, _$identity);

  /// Serializes this ClockOutBranchResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClockOutBranchResponse&&(identical(other.cabangId, cabangId) || other.cabangId == cabangId)&&(identical(other.namaCabang, namaCabang) || other.namaCabang == namaCabang)&&(identical(other.alamat, alamat) || other.alamat == alamat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cabangId,namaCabang,alamat);

@override
String toString() {
  return 'ClockOutBranchResponse(cabangId: $cabangId, namaCabang: $namaCabang, alamat: $alamat)';
}


}

/// @nodoc
abstract mixin class $ClockOutBranchResponseCopyWith<$Res>  {
  factory $ClockOutBranchResponseCopyWith(ClockOutBranchResponse value, $Res Function(ClockOutBranchResponse) _then) = _$ClockOutBranchResponseCopyWithImpl;
@useResult
$Res call({
 String? cabangId, String? namaCabang, String? alamat
});




}
/// @nodoc
class _$ClockOutBranchResponseCopyWithImpl<$Res>
    implements $ClockOutBranchResponseCopyWith<$Res> {
  _$ClockOutBranchResponseCopyWithImpl(this._self, this._then);

  final ClockOutBranchResponse _self;
  final $Res Function(ClockOutBranchResponse) _then;

/// Create a copy of ClockOutBranchResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cabangId = freezed,Object? namaCabang = freezed,Object? alamat = freezed,}) {
  return _then(_self.copyWith(
cabangId: freezed == cabangId ? _self.cabangId : cabangId // ignore: cast_nullable_to_non_nullable
as String?,namaCabang: freezed == namaCabang ? _self.namaCabang : namaCabang // ignore: cast_nullable_to_non_nullable
as String?,alamat: freezed == alamat ? _self.alamat : alamat // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClockOutBranchResponse].
extension ClockOutBranchResponsePatterns on ClockOutBranchResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClockOutBranchResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClockOutBranchResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClockOutBranchResponse value)  $default,){
final _that = this;
switch (_that) {
case _ClockOutBranchResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClockOutBranchResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ClockOutBranchResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? cabangId,  String? namaCabang,  String? alamat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClockOutBranchResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? cabangId,  String? namaCabang,  String? alamat)  $default,) {final _that = this;
switch (_that) {
case _ClockOutBranchResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? cabangId,  String? namaCabang,  String? alamat)?  $default,) {final _that = this;
switch (_that) {
case _ClockOutBranchResponse() when $default != null:
return $default(_that.cabangId,_that.namaCabang,_that.alamat);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ClockOutBranchResponse implements ClockOutBranchResponse {
  const _ClockOutBranchResponse({this.cabangId, this.namaCabang, this.alamat});
  factory _ClockOutBranchResponse.fromJson(Map<String, dynamic> json) => _$ClockOutBranchResponseFromJson(json);

@override final  String? cabangId;
@override final  String? namaCabang;
@override final  String? alamat;

/// Create a copy of ClockOutBranchResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClockOutBranchResponseCopyWith<_ClockOutBranchResponse> get copyWith => __$ClockOutBranchResponseCopyWithImpl<_ClockOutBranchResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClockOutBranchResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClockOutBranchResponse&&(identical(other.cabangId, cabangId) || other.cabangId == cabangId)&&(identical(other.namaCabang, namaCabang) || other.namaCabang == namaCabang)&&(identical(other.alamat, alamat) || other.alamat == alamat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cabangId,namaCabang,alamat);

@override
String toString() {
  return 'ClockOutBranchResponse(cabangId: $cabangId, namaCabang: $namaCabang, alamat: $alamat)';
}


}

/// @nodoc
abstract mixin class _$ClockOutBranchResponseCopyWith<$Res> implements $ClockOutBranchResponseCopyWith<$Res> {
  factory _$ClockOutBranchResponseCopyWith(_ClockOutBranchResponse value, $Res Function(_ClockOutBranchResponse) _then) = __$ClockOutBranchResponseCopyWithImpl;
@override @useResult
$Res call({
 String? cabangId, String? namaCabang, String? alamat
});




}
/// @nodoc
class __$ClockOutBranchResponseCopyWithImpl<$Res>
    implements _$ClockOutBranchResponseCopyWith<$Res> {
  __$ClockOutBranchResponseCopyWithImpl(this._self, this._then);

  final _ClockOutBranchResponse _self;
  final $Res Function(_ClockOutBranchResponse) _then;

/// Create a copy of ClockOutBranchResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cabangId = freezed,Object? namaCabang = freezed,Object? alamat = freezed,}) {
  return _then(_ClockOutBranchResponse(
cabangId: freezed == cabangId ? _self.cabangId : cabangId // ignore: cast_nullable_to_non_nullable
as String?,namaCabang: freezed == namaCabang ? _self.namaCabang : namaCabang // ignore: cast_nullable_to_non_nullable
as String?,alamat: freezed == alamat ? _self.alamat : alamat // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
