// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slip_gaji_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SlipGajiEntity {

 String get penggajianId; int get periodeBulan; int get periodeTahun; String get periodeLabel; int get gajiBersih; bool get sudahDitransfer;
/// Create a copy of SlipGajiEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SlipGajiEntityCopyWith<SlipGajiEntity> get copyWith => _$SlipGajiEntityCopyWithImpl<SlipGajiEntity>(this as SlipGajiEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SlipGajiEntity&&(identical(other.penggajianId, penggajianId) || other.penggajianId == penggajianId)&&(identical(other.periodeBulan, periodeBulan) || other.periodeBulan == periodeBulan)&&(identical(other.periodeTahun, periodeTahun) || other.periodeTahun == periodeTahun)&&(identical(other.periodeLabel, periodeLabel) || other.periodeLabel == periodeLabel)&&(identical(other.gajiBersih, gajiBersih) || other.gajiBersih == gajiBersih)&&(identical(other.sudahDitransfer, sudahDitransfer) || other.sudahDitransfer == sudahDitransfer));
}


@override
int get hashCode => Object.hash(runtimeType,penggajianId,periodeBulan,periodeTahun,periodeLabel,gajiBersih,sudahDitransfer);

@override
String toString() {
  return 'SlipGajiEntity(penggajianId: $penggajianId, periodeBulan: $periodeBulan, periodeTahun: $periodeTahun, periodeLabel: $periodeLabel, gajiBersih: $gajiBersih, sudahDitransfer: $sudahDitransfer)';
}


}

/// @nodoc
abstract mixin class $SlipGajiEntityCopyWith<$Res>  {
  factory $SlipGajiEntityCopyWith(SlipGajiEntity value, $Res Function(SlipGajiEntity) _then) = _$SlipGajiEntityCopyWithImpl;
@useResult
$Res call({
 String penggajianId, int periodeBulan, int periodeTahun, String periodeLabel, int gajiBersih, bool sudahDitransfer
});




}
/// @nodoc
class _$SlipGajiEntityCopyWithImpl<$Res>
    implements $SlipGajiEntityCopyWith<$Res> {
  _$SlipGajiEntityCopyWithImpl(this._self, this._then);

  final SlipGajiEntity _self;
  final $Res Function(SlipGajiEntity) _then;

/// Create a copy of SlipGajiEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? penggajianId = null,Object? periodeBulan = null,Object? periodeTahun = null,Object? periodeLabel = null,Object? gajiBersih = null,Object? sudahDitransfer = null,}) {
  return _then(_self.copyWith(
penggajianId: null == penggajianId ? _self.penggajianId : penggajianId // ignore: cast_nullable_to_non_nullable
as String,periodeBulan: null == periodeBulan ? _self.periodeBulan : periodeBulan // ignore: cast_nullable_to_non_nullable
as int,periodeTahun: null == periodeTahun ? _self.periodeTahun : periodeTahun // ignore: cast_nullable_to_non_nullable
as int,periodeLabel: null == periodeLabel ? _self.periodeLabel : periodeLabel // ignore: cast_nullable_to_non_nullable
as String,gajiBersih: null == gajiBersih ? _self.gajiBersih : gajiBersih // ignore: cast_nullable_to_non_nullable
as int,sudahDitransfer: null == sudahDitransfer ? _self.sudahDitransfer : sudahDitransfer // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SlipGajiEntity].
extension SlipGajiEntityPatterns on SlipGajiEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SlipGajiEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SlipGajiEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SlipGajiEntity value)  $default,){
final _that = this;
switch (_that) {
case _SlipGajiEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SlipGajiEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SlipGajiEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String penggajianId,  int periodeBulan,  int periodeTahun,  String periodeLabel,  int gajiBersih,  bool sudahDitransfer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SlipGajiEntity() when $default != null:
return $default(_that.penggajianId,_that.periodeBulan,_that.periodeTahun,_that.periodeLabel,_that.gajiBersih,_that.sudahDitransfer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String penggajianId,  int periodeBulan,  int periodeTahun,  String periodeLabel,  int gajiBersih,  bool sudahDitransfer)  $default,) {final _that = this;
switch (_that) {
case _SlipGajiEntity():
return $default(_that.penggajianId,_that.periodeBulan,_that.periodeTahun,_that.periodeLabel,_that.gajiBersih,_that.sudahDitransfer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String penggajianId,  int periodeBulan,  int periodeTahun,  String periodeLabel,  int gajiBersih,  bool sudahDitransfer)?  $default,) {final _that = this;
switch (_that) {
case _SlipGajiEntity() when $default != null:
return $default(_that.penggajianId,_that.periodeBulan,_that.periodeTahun,_that.periodeLabel,_that.gajiBersih,_that.sudahDitransfer);case _:
  return null;

}
}

}

/// @nodoc


class _SlipGajiEntity implements SlipGajiEntity {
  const _SlipGajiEntity({required this.penggajianId, required this.periodeBulan, required this.periodeTahun, required this.periodeLabel, required this.gajiBersih, required this.sudahDitransfer});
  

@override final  String penggajianId;
@override final  int periodeBulan;
@override final  int periodeTahun;
@override final  String periodeLabel;
@override final  int gajiBersih;
@override final  bool sudahDitransfer;

/// Create a copy of SlipGajiEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SlipGajiEntityCopyWith<_SlipGajiEntity> get copyWith => __$SlipGajiEntityCopyWithImpl<_SlipGajiEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SlipGajiEntity&&(identical(other.penggajianId, penggajianId) || other.penggajianId == penggajianId)&&(identical(other.periodeBulan, periodeBulan) || other.periodeBulan == periodeBulan)&&(identical(other.periodeTahun, periodeTahun) || other.periodeTahun == periodeTahun)&&(identical(other.periodeLabel, periodeLabel) || other.periodeLabel == periodeLabel)&&(identical(other.gajiBersih, gajiBersih) || other.gajiBersih == gajiBersih)&&(identical(other.sudahDitransfer, sudahDitransfer) || other.sudahDitransfer == sudahDitransfer));
}


@override
int get hashCode => Object.hash(runtimeType,penggajianId,periodeBulan,periodeTahun,periodeLabel,gajiBersih,sudahDitransfer);

@override
String toString() {
  return 'SlipGajiEntity(penggajianId: $penggajianId, periodeBulan: $periodeBulan, periodeTahun: $periodeTahun, periodeLabel: $periodeLabel, gajiBersih: $gajiBersih, sudahDitransfer: $sudahDitransfer)';
}


}

/// @nodoc
abstract mixin class _$SlipGajiEntityCopyWith<$Res> implements $SlipGajiEntityCopyWith<$Res> {
  factory _$SlipGajiEntityCopyWith(_SlipGajiEntity value, $Res Function(_SlipGajiEntity) _then) = __$SlipGajiEntityCopyWithImpl;
@override @useResult
$Res call({
 String penggajianId, int periodeBulan, int periodeTahun, String periodeLabel, int gajiBersih, bool sudahDitransfer
});




}
/// @nodoc
class __$SlipGajiEntityCopyWithImpl<$Res>
    implements _$SlipGajiEntityCopyWith<$Res> {
  __$SlipGajiEntityCopyWithImpl(this._self, this._then);

  final _SlipGajiEntity _self;
  final $Res Function(_SlipGajiEntity) _then;

/// Create a copy of SlipGajiEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? penggajianId = null,Object? periodeBulan = null,Object? periodeTahun = null,Object? periodeLabel = null,Object? gajiBersih = null,Object? sudahDitransfer = null,}) {
  return _then(_SlipGajiEntity(
penggajianId: null == penggajianId ? _self.penggajianId : penggajianId // ignore: cast_nullable_to_non_nullable
as String,periodeBulan: null == periodeBulan ? _self.periodeBulan : periodeBulan // ignore: cast_nullable_to_non_nullable
as int,periodeTahun: null == periodeTahun ? _self.periodeTahun : periodeTahun // ignore: cast_nullable_to_non_nullable
as int,periodeLabel: null == periodeLabel ? _self.periodeLabel : periodeLabel // ignore: cast_nullable_to_non_nullable
as String,gajiBersih: null == gajiBersih ? _self.gajiBersih : gajiBersih // ignore: cast_nullable_to_non_nullable
as int,sudahDitransfer: null == sudahDitransfer ? _self.sudahDitransfer : sudahDitransfer // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
