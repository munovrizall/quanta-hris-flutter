// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_overtime_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitOvertimeParams {

 String get absensiId; String get deskripsiPekerjaan; String? get dokumenPendukungPath;
/// Create a copy of SubmitOvertimeParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitOvertimeParamsCopyWith<SubmitOvertimeParams> get copyWith => _$SubmitOvertimeParamsCopyWithImpl<SubmitOvertimeParams>(this as SubmitOvertimeParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitOvertimeParams&&(identical(other.absensiId, absensiId) || other.absensiId == absensiId)&&(identical(other.deskripsiPekerjaan, deskripsiPekerjaan) || other.deskripsiPekerjaan == deskripsiPekerjaan)&&(identical(other.dokumenPendukungPath, dokumenPendukungPath) || other.dokumenPendukungPath == dokumenPendukungPath));
}


@override
int get hashCode => Object.hash(runtimeType,absensiId,deskripsiPekerjaan,dokumenPendukungPath);

@override
String toString() {
  return 'SubmitOvertimeParams(absensiId: $absensiId, deskripsiPekerjaan: $deskripsiPekerjaan, dokumenPendukungPath: $dokumenPendukungPath)';
}


}

/// @nodoc
abstract mixin class $SubmitOvertimeParamsCopyWith<$Res>  {
  factory $SubmitOvertimeParamsCopyWith(SubmitOvertimeParams value, $Res Function(SubmitOvertimeParams) _then) = _$SubmitOvertimeParamsCopyWithImpl;
@useResult
$Res call({
 String absensiId, String deskripsiPekerjaan, String? dokumenPendukungPath
});




}
/// @nodoc
class _$SubmitOvertimeParamsCopyWithImpl<$Res>
    implements $SubmitOvertimeParamsCopyWith<$Res> {
  _$SubmitOvertimeParamsCopyWithImpl(this._self, this._then);

  final SubmitOvertimeParams _self;
  final $Res Function(SubmitOvertimeParams) _then;

/// Create a copy of SubmitOvertimeParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? absensiId = null,Object? deskripsiPekerjaan = null,Object? dokumenPendukungPath = freezed,}) {
  return _then(_self.copyWith(
absensiId: null == absensiId ? _self.absensiId : absensiId // ignore: cast_nullable_to_non_nullable
as String,deskripsiPekerjaan: null == deskripsiPekerjaan ? _self.deskripsiPekerjaan : deskripsiPekerjaan // ignore: cast_nullable_to_non_nullable
as String,dokumenPendukungPath: freezed == dokumenPendukungPath ? _self.dokumenPendukungPath : dokumenPendukungPath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitOvertimeParams].
extension SubmitOvertimeParamsPatterns on SubmitOvertimeParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitOvertimeParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitOvertimeParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitOvertimeParams value)  $default,){
final _that = this;
switch (_that) {
case _SubmitOvertimeParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitOvertimeParams value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitOvertimeParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String absensiId,  String deskripsiPekerjaan,  String? dokumenPendukungPath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitOvertimeParams() when $default != null:
return $default(_that.absensiId,_that.deskripsiPekerjaan,_that.dokumenPendukungPath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String absensiId,  String deskripsiPekerjaan,  String? dokumenPendukungPath)  $default,) {final _that = this;
switch (_that) {
case _SubmitOvertimeParams():
return $default(_that.absensiId,_that.deskripsiPekerjaan,_that.dokumenPendukungPath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String absensiId,  String deskripsiPekerjaan,  String? dokumenPendukungPath)?  $default,) {final _that = this;
switch (_that) {
case _SubmitOvertimeParams() when $default != null:
return $default(_that.absensiId,_that.deskripsiPekerjaan,_that.dokumenPendukungPath);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitOvertimeParams implements SubmitOvertimeParams {
  const _SubmitOvertimeParams({required this.absensiId, required this.deskripsiPekerjaan, this.dokumenPendukungPath});
  

@override final  String absensiId;
@override final  String deskripsiPekerjaan;
@override final  String? dokumenPendukungPath;

/// Create a copy of SubmitOvertimeParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitOvertimeParamsCopyWith<_SubmitOvertimeParams> get copyWith => __$SubmitOvertimeParamsCopyWithImpl<_SubmitOvertimeParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitOvertimeParams&&(identical(other.absensiId, absensiId) || other.absensiId == absensiId)&&(identical(other.deskripsiPekerjaan, deskripsiPekerjaan) || other.deskripsiPekerjaan == deskripsiPekerjaan)&&(identical(other.dokumenPendukungPath, dokumenPendukungPath) || other.dokumenPendukungPath == dokumenPendukungPath));
}


@override
int get hashCode => Object.hash(runtimeType,absensiId,deskripsiPekerjaan,dokumenPendukungPath);

@override
String toString() {
  return 'SubmitOvertimeParams(absensiId: $absensiId, deskripsiPekerjaan: $deskripsiPekerjaan, dokumenPendukungPath: $dokumenPendukungPath)';
}


}

/// @nodoc
abstract mixin class _$SubmitOvertimeParamsCopyWith<$Res> implements $SubmitOvertimeParamsCopyWith<$Res> {
  factory _$SubmitOvertimeParamsCopyWith(_SubmitOvertimeParams value, $Res Function(_SubmitOvertimeParams) _then) = __$SubmitOvertimeParamsCopyWithImpl;
@override @useResult
$Res call({
 String absensiId, String deskripsiPekerjaan, String? dokumenPendukungPath
});




}
/// @nodoc
class __$SubmitOvertimeParamsCopyWithImpl<$Res>
    implements _$SubmitOvertimeParamsCopyWith<$Res> {
  __$SubmitOvertimeParamsCopyWithImpl(this._self, this._then);

  final _SubmitOvertimeParams _self;
  final $Res Function(_SubmitOvertimeParams) _then;

/// Create a copy of SubmitOvertimeParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? absensiId = null,Object? deskripsiPekerjaan = null,Object? dokumenPendukungPath = freezed,}) {
  return _then(_SubmitOvertimeParams(
absensiId: null == absensiId ? _self.absensiId : absensiId // ignore: cast_nullable_to_non_nullable
as String,deskripsiPekerjaan: null == deskripsiPekerjaan ? _self.deskripsiPekerjaan : deskripsiPekerjaan // ignore: cast_nullable_to_non_nullable
as String,dokumenPendukungPath: freezed == dokumenPendukungPath ? _self.dokumenPendukungPath : dokumenPendukungPath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
