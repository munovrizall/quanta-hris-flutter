// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_permission_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitPermissionParams {

 String get jenisIzin; String get tanggalMulai; String get tanggalSelesai; String get keterangan; String? get dokumenPendukungPath;
/// Create a copy of SubmitPermissionParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitPermissionParamsCopyWith<SubmitPermissionParams> get copyWith => _$SubmitPermissionParamsCopyWithImpl<SubmitPermissionParams>(this as SubmitPermissionParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitPermissionParams&&(identical(other.jenisIzin, jenisIzin) || other.jenisIzin == jenisIzin)&&(identical(other.tanggalMulai, tanggalMulai) || other.tanggalMulai == tanggalMulai)&&(identical(other.tanggalSelesai, tanggalSelesai) || other.tanggalSelesai == tanggalSelesai)&&(identical(other.keterangan, keterangan) || other.keterangan == keterangan)&&(identical(other.dokumenPendukungPath, dokumenPendukungPath) || other.dokumenPendukungPath == dokumenPendukungPath));
}


@override
int get hashCode => Object.hash(runtimeType,jenisIzin,tanggalMulai,tanggalSelesai,keterangan,dokumenPendukungPath);

@override
String toString() {
  return 'SubmitPermissionParams(jenisIzin: $jenisIzin, tanggalMulai: $tanggalMulai, tanggalSelesai: $tanggalSelesai, keterangan: $keterangan, dokumenPendukungPath: $dokumenPendukungPath)';
}


}

/// @nodoc
abstract mixin class $SubmitPermissionParamsCopyWith<$Res>  {
  factory $SubmitPermissionParamsCopyWith(SubmitPermissionParams value, $Res Function(SubmitPermissionParams) _then) = _$SubmitPermissionParamsCopyWithImpl;
@useResult
$Res call({
 String jenisIzin, String tanggalMulai, String tanggalSelesai, String keterangan, String? dokumenPendukungPath
});




}
/// @nodoc
class _$SubmitPermissionParamsCopyWithImpl<$Res>
    implements $SubmitPermissionParamsCopyWith<$Res> {
  _$SubmitPermissionParamsCopyWithImpl(this._self, this._then);

  final SubmitPermissionParams _self;
  final $Res Function(SubmitPermissionParams) _then;

/// Create a copy of SubmitPermissionParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? jenisIzin = null,Object? tanggalMulai = null,Object? tanggalSelesai = null,Object? keterangan = null,Object? dokumenPendukungPath = freezed,}) {
  return _then(_self.copyWith(
jenisIzin: null == jenisIzin ? _self.jenisIzin : jenisIzin // ignore: cast_nullable_to_non_nullable
as String,tanggalMulai: null == tanggalMulai ? _self.tanggalMulai : tanggalMulai // ignore: cast_nullable_to_non_nullable
as String,tanggalSelesai: null == tanggalSelesai ? _self.tanggalSelesai : tanggalSelesai // ignore: cast_nullable_to_non_nullable
as String,keterangan: null == keterangan ? _self.keterangan : keterangan // ignore: cast_nullable_to_non_nullable
as String,dokumenPendukungPath: freezed == dokumenPendukungPath ? _self.dokumenPendukungPath : dokumenPendukungPath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitPermissionParams].
extension SubmitPermissionParamsPatterns on SubmitPermissionParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitPermissionParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitPermissionParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitPermissionParams value)  $default,){
final _that = this;
switch (_that) {
case _SubmitPermissionParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitPermissionParams value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitPermissionParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String jenisIzin,  String tanggalMulai,  String tanggalSelesai,  String keterangan,  String? dokumenPendukungPath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitPermissionParams() when $default != null:
return $default(_that.jenisIzin,_that.tanggalMulai,_that.tanggalSelesai,_that.keterangan,_that.dokumenPendukungPath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String jenisIzin,  String tanggalMulai,  String tanggalSelesai,  String keterangan,  String? dokumenPendukungPath)  $default,) {final _that = this;
switch (_that) {
case _SubmitPermissionParams():
return $default(_that.jenisIzin,_that.tanggalMulai,_that.tanggalSelesai,_that.keterangan,_that.dokumenPendukungPath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String jenisIzin,  String tanggalMulai,  String tanggalSelesai,  String keterangan,  String? dokumenPendukungPath)?  $default,) {final _that = this;
switch (_that) {
case _SubmitPermissionParams() when $default != null:
return $default(_that.jenisIzin,_that.tanggalMulai,_that.tanggalSelesai,_that.keterangan,_that.dokumenPendukungPath);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitPermissionParams implements SubmitPermissionParams {
  const _SubmitPermissionParams({required this.jenisIzin, required this.tanggalMulai, required this.tanggalSelesai, required this.keterangan, this.dokumenPendukungPath});
  

@override final  String jenisIzin;
@override final  String tanggalMulai;
@override final  String tanggalSelesai;
@override final  String keterangan;
@override final  String? dokumenPendukungPath;

/// Create a copy of SubmitPermissionParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitPermissionParamsCopyWith<_SubmitPermissionParams> get copyWith => __$SubmitPermissionParamsCopyWithImpl<_SubmitPermissionParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitPermissionParams&&(identical(other.jenisIzin, jenisIzin) || other.jenisIzin == jenisIzin)&&(identical(other.tanggalMulai, tanggalMulai) || other.tanggalMulai == tanggalMulai)&&(identical(other.tanggalSelesai, tanggalSelesai) || other.tanggalSelesai == tanggalSelesai)&&(identical(other.keterangan, keterangan) || other.keterangan == keterangan)&&(identical(other.dokumenPendukungPath, dokumenPendukungPath) || other.dokumenPendukungPath == dokumenPendukungPath));
}


@override
int get hashCode => Object.hash(runtimeType,jenisIzin,tanggalMulai,tanggalSelesai,keterangan,dokumenPendukungPath);

@override
String toString() {
  return 'SubmitPermissionParams(jenisIzin: $jenisIzin, tanggalMulai: $tanggalMulai, tanggalSelesai: $tanggalSelesai, keterangan: $keterangan, dokumenPendukungPath: $dokumenPendukungPath)';
}


}

/// @nodoc
abstract mixin class _$SubmitPermissionParamsCopyWith<$Res> implements $SubmitPermissionParamsCopyWith<$Res> {
  factory _$SubmitPermissionParamsCopyWith(_SubmitPermissionParams value, $Res Function(_SubmitPermissionParams) _then) = __$SubmitPermissionParamsCopyWithImpl;
@override @useResult
$Res call({
 String jenisIzin, String tanggalMulai, String tanggalSelesai, String keterangan, String? dokumenPendukungPath
});




}
/// @nodoc
class __$SubmitPermissionParamsCopyWithImpl<$Res>
    implements _$SubmitPermissionParamsCopyWith<$Res> {
  __$SubmitPermissionParamsCopyWithImpl(this._self, this._then);

  final _SubmitPermissionParams _self;
  final $Res Function(_SubmitPermissionParams) _then;

/// Create a copy of SubmitPermissionParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? jenisIzin = null,Object? tanggalMulai = null,Object? tanggalSelesai = null,Object? keterangan = null,Object? dokumenPendukungPath = freezed,}) {
  return _then(_SubmitPermissionParams(
jenisIzin: null == jenisIzin ? _self.jenisIzin : jenisIzin // ignore: cast_nullable_to_non_nullable
as String,tanggalMulai: null == tanggalMulai ? _self.tanggalMulai : tanggalMulai // ignore: cast_nullable_to_non_nullable
as String,tanggalSelesai: null == tanggalSelesai ? _self.tanggalSelesai : tanggalSelesai // ignore: cast_nullable_to_non_nullable
as String,keterangan: null == keterangan ? _self.keterangan : keterangan // ignore: cast_nullable_to_non_nullable
as String,dokumenPendukungPath: freezed == dokumenPendukungPath ? _self.dokumenPendukungPath : dokumenPendukungPath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
