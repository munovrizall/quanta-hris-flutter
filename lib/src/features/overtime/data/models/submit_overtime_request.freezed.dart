// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_overtime_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubmitOvertimeRequest {

@JsonKey(name: 'absensi_id') String get absensiId;@JsonKey(name: 'deskripsi_pekerjaan') String get deskripsiPekerjaan;@JsonKey(ignore: true) File? get dokumenPendukung;
/// Create a copy of SubmitOvertimeRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitOvertimeRequestCopyWith<SubmitOvertimeRequest> get copyWith => _$SubmitOvertimeRequestCopyWithImpl<SubmitOvertimeRequest>(this as SubmitOvertimeRequest, _$identity);

  /// Serializes this SubmitOvertimeRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitOvertimeRequest&&(identical(other.absensiId, absensiId) || other.absensiId == absensiId)&&(identical(other.deskripsiPekerjaan, deskripsiPekerjaan) || other.deskripsiPekerjaan == deskripsiPekerjaan)&&(identical(other.dokumenPendukung, dokumenPendukung) || other.dokumenPendukung == dokumenPendukung));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,absensiId,deskripsiPekerjaan,dokumenPendukung);

@override
String toString() {
  return 'SubmitOvertimeRequest(absensiId: $absensiId, deskripsiPekerjaan: $deskripsiPekerjaan, dokumenPendukung: $dokumenPendukung)';
}


}

/// @nodoc
abstract mixin class $SubmitOvertimeRequestCopyWith<$Res>  {
  factory $SubmitOvertimeRequestCopyWith(SubmitOvertimeRequest value, $Res Function(SubmitOvertimeRequest) _then) = _$SubmitOvertimeRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'absensi_id') String absensiId,@JsonKey(name: 'deskripsi_pekerjaan') String deskripsiPekerjaan,@JsonKey(ignore: true) File? dokumenPendukung
});




}
/// @nodoc
class _$SubmitOvertimeRequestCopyWithImpl<$Res>
    implements $SubmitOvertimeRequestCopyWith<$Res> {
  _$SubmitOvertimeRequestCopyWithImpl(this._self, this._then);

  final SubmitOvertimeRequest _self;
  final $Res Function(SubmitOvertimeRequest) _then;

/// Create a copy of SubmitOvertimeRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? absensiId = null,Object? deskripsiPekerjaan = null,Object? dokumenPendukung = freezed,}) {
  return _then(_self.copyWith(
absensiId: null == absensiId ? _self.absensiId : absensiId // ignore: cast_nullable_to_non_nullable
as String,deskripsiPekerjaan: null == deskripsiPekerjaan ? _self.deskripsiPekerjaan : deskripsiPekerjaan // ignore: cast_nullable_to_non_nullable
as String,dokumenPendukung: freezed == dokumenPendukung ? _self.dokumenPendukung : dokumenPendukung // ignore: cast_nullable_to_non_nullable
as File?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitOvertimeRequest].
extension SubmitOvertimeRequestPatterns on SubmitOvertimeRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitOvertimeRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitOvertimeRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitOvertimeRequest value)  $default,){
final _that = this;
switch (_that) {
case _SubmitOvertimeRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitOvertimeRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitOvertimeRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'absensi_id')  String absensiId, @JsonKey(name: 'deskripsi_pekerjaan')  String deskripsiPekerjaan, @JsonKey(ignore: true)  File? dokumenPendukung)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitOvertimeRequest() when $default != null:
return $default(_that.absensiId,_that.deskripsiPekerjaan,_that.dokumenPendukung);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'absensi_id')  String absensiId, @JsonKey(name: 'deskripsi_pekerjaan')  String deskripsiPekerjaan, @JsonKey(ignore: true)  File? dokumenPendukung)  $default,) {final _that = this;
switch (_that) {
case _SubmitOvertimeRequest():
return $default(_that.absensiId,_that.deskripsiPekerjaan,_that.dokumenPendukung);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'absensi_id')  String absensiId, @JsonKey(name: 'deskripsi_pekerjaan')  String deskripsiPekerjaan, @JsonKey(ignore: true)  File? dokumenPendukung)?  $default,) {final _that = this;
switch (_that) {
case _SubmitOvertimeRequest() when $default != null:
return $default(_that.absensiId,_that.deskripsiPekerjaan,_that.dokumenPendukung);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubmitOvertimeRequest extends SubmitOvertimeRequest {
  const _SubmitOvertimeRequest({@JsonKey(name: 'absensi_id') required this.absensiId, @JsonKey(name: 'deskripsi_pekerjaan') required this.deskripsiPekerjaan, @JsonKey(ignore: true) this.dokumenPendukung}): super._();
  factory _SubmitOvertimeRequest.fromJson(Map<String, dynamic> json) => _$SubmitOvertimeRequestFromJson(json);

@override@JsonKey(name: 'absensi_id') final  String absensiId;
@override@JsonKey(name: 'deskripsi_pekerjaan') final  String deskripsiPekerjaan;
@override@JsonKey(ignore: true) final  File? dokumenPendukung;

/// Create a copy of SubmitOvertimeRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitOvertimeRequestCopyWith<_SubmitOvertimeRequest> get copyWith => __$SubmitOvertimeRequestCopyWithImpl<_SubmitOvertimeRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubmitOvertimeRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitOvertimeRequest&&(identical(other.absensiId, absensiId) || other.absensiId == absensiId)&&(identical(other.deskripsiPekerjaan, deskripsiPekerjaan) || other.deskripsiPekerjaan == deskripsiPekerjaan)&&(identical(other.dokumenPendukung, dokumenPendukung) || other.dokumenPendukung == dokumenPendukung));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,absensiId,deskripsiPekerjaan,dokumenPendukung);

@override
String toString() {
  return 'SubmitOvertimeRequest(absensiId: $absensiId, deskripsiPekerjaan: $deskripsiPekerjaan, dokumenPendukung: $dokumenPendukung)';
}


}

/// @nodoc
abstract mixin class _$SubmitOvertimeRequestCopyWith<$Res> implements $SubmitOvertimeRequestCopyWith<$Res> {
  factory _$SubmitOvertimeRequestCopyWith(_SubmitOvertimeRequest value, $Res Function(_SubmitOvertimeRequest) _then) = __$SubmitOvertimeRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'absensi_id') String absensiId,@JsonKey(name: 'deskripsi_pekerjaan') String deskripsiPekerjaan,@JsonKey(ignore: true) File? dokumenPendukung
});




}
/// @nodoc
class __$SubmitOvertimeRequestCopyWithImpl<$Res>
    implements _$SubmitOvertimeRequestCopyWith<$Res> {
  __$SubmitOvertimeRequestCopyWithImpl(this._self, this._then);

  final _SubmitOvertimeRequest _self;
  final $Res Function(_SubmitOvertimeRequest) _then;

/// Create a copy of SubmitOvertimeRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? absensiId = null,Object? deskripsiPekerjaan = null,Object? dokumenPendukung = freezed,}) {
  return _then(_SubmitOvertimeRequest(
absensiId: null == absensiId ? _self.absensiId : absensiId // ignore: cast_nullable_to_non_nullable
as String,deskripsiPekerjaan: null == deskripsiPekerjaan ? _self.deskripsiPekerjaan : deskripsiPekerjaan // ignore: cast_nullable_to_non_nullable
as String,dokumenPendukung: freezed == dokumenPendukung ? _self.dokumenPendukung : dokumenPendukung // ignore: cast_nullable_to_non_nullable
as File?,
  ));
}


}

// dart format on
