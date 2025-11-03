// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_leave_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubmitLeaveRequest {

@JsonKey(name: 'jenis_cuti') String get jenisCuti;@JsonKey(name: 'tanggal_mulai') String get tanggalMulai;@JsonKey(name: 'tanggal_selesai') String get tanggalSelesai; String get keterangan;@JsonKey(ignore: true) File? get dokumenPendukung;
/// Create a copy of SubmitLeaveRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitLeaveRequestCopyWith<SubmitLeaveRequest> get copyWith => _$SubmitLeaveRequestCopyWithImpl<SubmitLeaveRequest>(this as SubmitLeaveRequest, _$identity);

  /// Serializes this SubmitLeaveRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitLeaveRequest&&(identical(other.jenisCuti, jenisCuti) || other.jenisCuti == jenisCuti)&&(identical(other.tanggalMulai, tanggalMulai) || other.tanggalMulai == tanggalMulai)&&(identical(other.tanggalSelesai, tanggalSelesai) || other.tanggalSelesai == tanggalSelesai)&&(identical(other.keterangan, keterangan) || other.keterangan == keterangan)&&(identical(other.dokumenPendukung, dokumenPendukung) || other.dokumenPendukung == dokumenPendukung));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,jenisCuti,tanggalMulai,tanggalSelesai,keterangan,dokumenPendukung);

@override
String toString() {
  return 'SubmitLeaveRequest(jenisCuti: $jenisCuti, tanggalMulai: $tanggalMulai, tanggalSelesai: $tanggalSelesai, keterangan: $keterangan, dokumenPendukung: $dokumenPendukung)';
}


}

/// @nodoc
abstract mixin class $SubmitLeaveRequestCopyWith<$Res>  {
  factory $SubmitLeaveRequestCopyWith(SubmitLeaveRequest value, $Res Function(SubmitLeaveRequest) _then) = _$SubmitLeaveRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'jenis_cuti') String jenisCuti,@JsonKey(name: 'tanggal_mulai') String tanggalMulai,@JsonKey(name: 'tanggal_selesai') String tanggalSelesai, String keterangan,@JsonKey(ignore: true) File? dokumenPendukung
});




}
/// @nodoc
class _$SubmitLeaveRequestCopyWithImpl<$Res>
    implements $SubmitLeaveRequestCopyWith<$Res> {
  _$SubmitLeaveRequestCopyWithImpl(this._self, this._then);

  final SubmitLeaveRequest _self;
  final $Res Function(SubmitLeaveRequest) _then;

/// Create a copy of SubmitLeaveRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? jenisCuti = null,Object? tanggalMulai = null,Object? tanggalSelesai = null,Object? keterangan = null,Object? dokumenPendukung = freezed,}) {
  return _then(_self.copyWith(
jenisCuti: null == jenisCuti ? _self.jenisCuti : jenisCuti // ignore: cast_nullable_to_non_nullable
as String,tanggalMulai: null == tanggalMulai ? _self.tanggalMulai : tanggalMulai // ignore: cast_nullable_to_non_nullable
as String,tanggalSelesai: null == tanggalSelesai ? _self.tanggalSelesai : tanggalSelesai // ignore: cast_nullable_to_non_nullable
as String,keterangan: null == keterangan ? _self.keterangan : keterangan // ignore: cast_nullable_to_non_nullable
as String,dokumenPendukung: freezed == dokumenPendukung ? _self.dokumenPendukung : dokumenPendukung // ignore: cast_nullable_to_non_nullable
as File?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitLeaveRequest].
extension SubmitLeaveRequestPatterns on SubmitLeaveRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitLeaveRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitLeaveRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitLeaveRequest value)  $default,){
final _that = this;
switch (_that) {
case _SubmitLeaveRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitLeaveRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitLeaveRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'jenis_cuti')  String jenisCuti, @JsonKey(name: 'tanggal_mulai')  String tanggalMulai, @JsonKey(name: 'tanggal_selesai')  String tanggalSelesai,  String keterangan, @JsonKey(ignore: true)  File? dokumenPendukung)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitLeaveRequest() when $default != null:
return $default(_that.jenisCuti,_that.tanggalMulai,_that.tanggalSelesai,_that.keterangan,_that.dokumenPendukung);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'jenis_cuti')  String jenisCuti, @JsonKey(name: 'tanggal_mulai')  String tanggalMulai, @JsonKey(name: 'tanggal_selesai')  String tanggalSelesai,  String keterangan, @JsonKey(ignore: true)  File? dokumenPendukung)  $default,) {final _that = this;
switch (_that) {
case _SubmitLeaveRequest():
return $default(_that.jenisCuti,_that.tanggalMulai,_that.tanggalSelesai,_that.keterangan,_that.dokumenPendukung);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'jenis_cuti')  String jenisCuti, @JsonKey(name: 'tanggal_mulai')  String tanggalMulai, @JsonKey(name: 'tanggal_selesai')  String tanggalSelesai,  String keterangan, @JsonKey(ignore: true)  File? dokumenPendukung)?  $default,) {final _that = this;
switch (_that) {
case _SubmitLeaveRequest() when $default != null:
return $default(_that.jenisCuti,_that.tanggalMulai,_that.tanggalSelesai,_that.keterangan,_that.dokumenPendukung);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubmitLeaveRequest extends SubmitLeaveRequest {
  const _SubmitLeaveRequest({@JsonKey(name: 'jenis_cuti') required this.jenisCuti, @JsonKey(name: 'tanggal_mulai') required this.tanggalMulai, @JsonKey(name: 'tanggal_selesai') required this.tanggalSelesai, required this.keterangan, @JsonKey(ignore: true) this.dokumenPendukung}): super._();
  factory _SubmitLeaveRequest.fromJson(Map<String, dynamic> json) => _$SubmitLeaveRequestFromJson(json);

@override@JsonKey(name: 'jenis_cuti') final  String jenisCuti;
@override@JsonKey(name: 'tanggal_mulai') final  String tanggalMulai;
@override@JsonKey(name: 'tanggal_selesai') final  String tanggalSelesai;
@override final  String keterangan;
@override@JsonKey(ignore: true) final  File? dokumenPendukung;

/// Create a copy of SubmitLeaveRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitLeaveRequestCopyWith<_SubmitLeaveRequest> get copyWith => __$SubmitLeaveRequestCopyWithImpl<_SubmitLeaveRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubmitLeaveRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitLeaveRequest&&(identical(other.jenisCuti, jenisCuti) || other.jenisCuti == jenisCuti)&&(identical(other.tanggalMulai, tanggalMulai) || other.tanggalMulai == tanggalMulai)&&(identical(other.tanggalSelesai, tanggalSelesai) || other.tanggalSelesai == tanggalSelesai)&&(identical(other.keterangan, keterangan) || other.keterangan == keterangan)&&(identical(other.dokumenPendukung, dokumenPendukung) || other.dokumenPendukung == dokumenPendukung));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,jenisCuti,tanggalMulai,tanggalSelesai,keterangan,dokumenPendukung);

@override
String toString() {
  return 'SubmitLeaveRequest(jenisCuti: $jenisCuti, tanggalMulai: $tanggalMulai, tanggalSelesai: $tanggalSelesai, keterangan: $keterangan, dokumenPendukung: $dokumenPendukung)';
}


}

/// @nodoc
abstract mixin class _$SubmitLeaveRequestCopyWith<$Res> implements $SubmitLeaveRequestCopyWith<$Res> {
  factory _$SubmitLeaveRequestCopyWith(_SubmitLeaveRequest value, $Res Function(_SubmitLeaveRequest) _then) = __$SubmitLeaveRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'jenis_cuti') String jenisCuti,@JsonKey(name: 'tanggal_mulai') String tanggalMulai,@JsonKey(name: 'tanggal_selesai') String tanggalSelesai, String keterangan,@JsonKey(ignore: true) File? dokumenPendukung
});




}
/// @nodoc
class __$SubmitLeaveRequestCopyWithImpl<$Res>
    implements _$SubmitLeaveRequestCopyWith<$Res> {
  __$SubmitLeaveRequestCopyWithImpl(this._self, this._then);

  final _SubmitLeaveRequest _self;
  final $Res Function(_SubmitLeaveRequest) _then;

/// Create a copy of SubmitLeaveRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? jenisCuti = null,Object? tanggalMulai = null,Object? tanggalSelesai = null,Object? keterangan = null,Object? dokumenPendukung = freezed,}) {
  return _then(_SubmitLeaveRequest(
jenisCuti: null == jenisCuti ? _self.jenisCuti : jenisCuti // ignore: cast_nullable_to_non_nullable
as String,tanggalMulai: null == tanggalMulai ? _self.tanggalMulai : tanggalMulai // ignore: cast_nullable_to_non_nullable
as String,tanggalSelesai: null == tanggalSelesai ? _self.tanggalSelesai : tanggalSelesai // ignore: cast_nullable_to_non_nullable
as String,keterangan: null == keterangan ? _self.keterangan : keterangan // ignore: cast_nullable_to_non_nullable
as String,dokumenPendukung: freezed == dokumenPendukung ? _self.dokumenPendukung : dokumenPendukung // ignore: cast_nullable_to_non_nullable
as File?,
  ));
}


}

// dart format on
