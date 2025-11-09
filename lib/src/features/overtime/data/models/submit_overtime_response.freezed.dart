// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_overtime_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubmitOvertimeResponse {

 String get lemburId; String get karyawanId; String get absensiId; String get tanggalLembur; String get durasiLembur; String get deskripsiPekerjaan; String get statusLembur; String? get dokumenPendukung; String get createdAt;
/// Create a copy of SubmitOvertimeResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitOvertimeResponseCopyWith<SubmitOvertimeResponse> get copyWith => _$SubmitOvertimeResponseCopyWithImpl<SubmitOvertimeResponse>(this as SubmitOvertimeResponse, _$identity);

  /// Serializes this SubmitOvertimeResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitOvertimeResponse&&(identical(other.lemburId, lemburId) || other.lemburId == lemburId)&&(identical(other.karyawanId, karyawanId) || other.karyawanId == karyawanId)&&(identical(other.absensiId, absensiId) || other.absensiId == absensiId)&&(identical(other.tanggalLembur, tanggalLembur) || other.tanggalLembur == tanggalLembur)&&(identical(other.durasiLembur, durasiLembur) || other.durasiLembur == durasiLembur)&&(identical(other.deskripsiPekerjaan, deskripsiPekerjaan) || other.deskripsiPekerjaan == deskripsiPekerjaan)&&(identical(other.statusLembur, statusLembur) || other.statusLembur == statusLembur)&&(identical(other.dokumenPendukung, dokumenPendukung) || other.dokumenPendukung == dokumenPendukung)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lemburId,karyawanId,absensiId,tanggalLembur,durasiLembur,deskripsiPekerjaan,statusLembur,dokumenPendukung,createdAt);

@override
String toString() {
  return 'SubmitOvertimeResponse(lemburId: $lemburId, karyawanId: $karyawanId, absensiId: $absensiId, tanggalLembur: $tanggalLembur, durasiLembur: $durasiLembur, deskripsiPekerjaan: $deskripsiPekerjaan, statusLembur: $statusLembur, dokumenPendukung: $dokumenPendukung, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $SubmitOvertimeResponseCopyWith<$Res>  {
  factory $SubmitOvertimeResponseCopyWith(SubmitOvertimeResponse value, $Res Function(SubmitOvertimeResponse) _then) = _$SubmitOvertimeResponseCopyWithImpl;
@useResult
$Res call({
 String lemburId, String karyawanId, String absensiId, String tanggalLembur, String durasiLembur, String deskripsiPekerjaan, String statusLembur, String? dokumenPendukung, String createdAt
});




}
/// @nodoc
class _$SubmitOvertimeResponseCopyWithImpl<$Res>
    implements $SubmitOvertimeResponseCopyWith<$Res> {
  _$SubmitOvertimeResponseCopyWithImpl(this._self, this._then);

  final SubmitOvertimeResponse _self;
  final $Res Function(SubmitOvertimeResponse) _then;

/// Create a copy of SubmitOvertimeResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lemburId = null,Object? karyawanId = null,Object? absensiId = null,Object? tanggalLembur = null,Object? durasiLembur = null,Object? deskripsiPekerjaan = null,Object? statusLembur = null,Object? dokumenPendukung = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
lemburId: null == lemburId ? _self.lemburId : lemburId // ignore: cast_nullable_to_non_nullable
as String,karyawanId: null == karyawanId ? _self.karyawanId : karyawanId // ignore: cast_nullable_to_non_nullable
as String,absensiId: null == absensiId ? _self.absensiId : absensiId // ignore: cast_nullable_to_non_nullable
as String,tanggalLembur: null == tanggalLembur ? _self.tanggalLembur : tanggalLembur // ignore: cast_nullable_to_non_nullable
as String,durasiLembur: null == durasiLembur ? _self.durasiLembur : durasiLembur // ignore: cast_nullable_to_non_nullable
as String,deskripsiPekerjaan: null == deskripsiPekerjaan ? _self.deskripsiPekerjaan : deskripsiPekerjaan // ignore: cast_nullable_to_non_nullable
as String,statusLembur: null == statusLembur ? _self.statusLembur : statusLembur // ignore: cast_nullable_to_non_nullable
as String,dokumenPendukung: freezed == dokumenPendukung ? _self.dokumenPendukung : dokumenPendukung // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitOvertimeResponse].
extension SubmitOvertimeResponsePatterns on SubmitOvertimeResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitOvertimeResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitOvertimeResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitOvertimeResponse value)  $default,){
final _that = this;
switch (_that) {
case _SubmitOvertimeResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitOvertimeResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitOvertimeResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String lemburId,  String karyawanId,  String absensiId,  String tanggalLembur,  String durasiLembur,  String deskripsiPekerjaan,  String statusLembur,  String? dokumenPendukung,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitOvertimeResponse() when $default != null:
return $default(_that.lemburId,_that.karyawanId,_that.absensiId,_that.tanggalLembur,_that.durasiLembur,_that.deskripsiPekerjaan,_that.statusLembur,_that.dokumenPendukung,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String lemburId,  String karyawanId,  String absensiId,  String tanggalLembur,  String durasiLembur,  String deskripsiPekerjaan,  String statusLembur,  String? dokumenPendukung,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _SubmitOvertimeResponse():
return $default(_that.lemburId,_that.karyawanId,_that.absensiId,_that.tanggalLembur,_that.durasiLembur,_that.deskripsiPekerjaan,_that.statusLembur,_that.dokumenPendukung,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String lemburId,  String karyawanId,  String absensiId,  String tanggalLembur,  String durasiLembur,  String deskripsiPekerjaan,  String statusLembur,  String? dokumenPendukung,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _SubmitOvertimeResponse() when $default != null:
return $default(_that.lemburId,_that.karyawanId,_that.absensiId,_that.tanggalLembur,_that.durasiLembur,_that.deskripsiPekerjaan,_that.statusLembur,_that.dokumenPendukung,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _SubmitOvertimeResponse implements SubmitOvertimeResponse {
  const _SubmitOvertimeResponse({required this.lemburId, required this.karyawanId, required this.absensiId, required this.tanggalLembur, required this.durasiLembur, required this.deskripsiPekerjaan, required this.statusLembur, this.dokumenPendukung, required this.createdAt});
  factory _SubmitOvertimeResponse.fromJson(Map<String, dynamic> json) => _$SubmitOvertimeResponseFromJson(json);

@override final  String lemburId;
@override final  String karyawanId;
@override final  String absensiId;
@override final  String tanggalLembur;
@override final  String durasiLembur;
@override final  String deskripsiPekerjaan;
@override final  String statusLembur;
@override final  String? dokumenPendukung;
@override final  String createdAt;

/// Create a copy of SubmitOvertimeResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitOvertimeResponseCopyWith<_SubmitOvertimeResponse> get copyWith => __$SubmitOvertimeResponseCopyWithImpl<_SubmitOvertimeResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubmitOvertimeResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitOvertimeResponse&&(identical(other.lemburId, lemburId) || other.lemburId == lemburId)&&(identical(other.karyawanId, karyawanId) || other.karyawanId == karyawanId)&&(identical(other.absensiId, absensiId) || other.absensiId == absensiId)&&(identical(other.tanggalLembur, tanggalLembur) || other.tanggalLembur == tanggalLembur)&&(identical(other.durasiLembur, durasiLembur) || other.durasiLembur == durasiLembur)&&(identical(other.deskripsiPekerjaan, deskripsiPekerjaan) || other.deskripsiPekerjaan == deskripsiPekerjaan)&&(identical(other.statusLembur, statusLembur) || other.statusLembur == statusLembur)&&(identical(other.dokumenPendukung, dokumenPendukung) || other.dokumenPendukung == dokumenPendukung)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lemburId,karyawanId,absensiId,tanggalLembur,durasiLembur,deskripsiPekerjaan,statusLembur,dokumenPendukung,createdAt);

@override
String toString() {
  return 'SubmitOvertimeResponse(lemburId: $lemburId, karyawanId: $karyawanId, absensiId: $absensiId, tanggalLembur: $tanggalLembur, durasiLembur: $durasiLembur, deskripsiPekerjaan: $deskripsiPekerjaan, statusLembur: $statusLembur, dokumenPendukung: $dokumenPendukung, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$SubmitOvertimeResponseCopyWith<$Res> implements $SubmitOvertimeResponseCopyWith<$Res> {
  factory _$SubmitOvertimeResponseCopyWith(_SubmitOvertimeResponse value, $Res Function(_SubmitOvertimeResponse) _then) = __$SubmitOvertimeResponseCopyWithImpl;
@override @useResult
$Res call({
 String lemburId, String karyawanId, String absensiId, String tanggalLembur, String durasiLembur, String deskripsiPekerjaan, String statusLembur, String? dokumenPendukung, String createdAt
});




}
/// @nodoc
class __$SubmitOvertimeResponseCopyWithImpl<$Res>
    implements _$SubmitOvertimeResponseCopyWith<$Res> {
  __$SubmitOvertimeResponseCopyWithImpl(this._self, this._then);

  final _SubmitOvertimeResponse _self;
  final $Res Function(_SubmitOvertimeResponse) _then;

/// Create a copy of SubmitOvertimeResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lemburId = null,Object? karyawanId = null,Object? absensiId = null,Object? tanggalLembur = null,Object? durasiLembur = null,Object? deskripsiPekerjaan = null,Object? statusLembur = null,Object? dokumenPendukung = freezed,Object? createdAt = null,}) {
  return _then(_SubmitOvertimeResponse(
lemburId: null == lemburId ? _self.lemburId : lemburId // ignore: cast_nullable_to_non_nullable
as String,karyawanId: null == karyawanId ? _self.karyawanId : karyawanId // ignore: cast_nullable_to_non_nullable
as String,absensiId: null == absensiId ? _self.absensiId : absensiId // ignore: cast_nullable_to_non_nullable
as String,tanggalLembur: null == tanggalLembur ? _self.tanggalLembur : tanggalLembur // ignore: cast_nullable_to_non_nullable
as String,durasiLembur: null == durasiLembur ? _self.durasiLembur : durasiLembur // ignore: cast_nullable_to_non_nullable
as String,deskripsiPekerjaan: null == deskripsiPekerjaan ? _self.deskripsiPekerjaan : deskripsiPekerjaan // ignore: cast_nullable_to_non_nullable
as String,statusLembur: null == statusLembur ? _self.statusLembur : statusLembur // ignore: cast_nullable_to_non_nullable
as String,dokumenPendukung: freezed == dokumenPendukung ? _self.dokumenPendukung : dokumenPendukung // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
