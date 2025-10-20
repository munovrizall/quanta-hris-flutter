// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'today_leaves_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TodayLeavesEntity {

 int get total; List<LeavePermitEntity> get leavesData;
/// Create a copy of TodayLeavesEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodayLeavesEntityCopyWith<TodayLeavesEntity> get copyWith => _$TodayLeavesEntityCopyWithImpl<TodayLeavesEntity>(this as TodayLeavesEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodayLeavesEntity&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other.leavesData, leavesData));
}


@override
int get hashCode => Object.hash(runtimeType,total,const DeepCollectionEquality().hash(leavesData));

@override
String toString() {
  return 'TodayLeavesEntity(total: $total, leavesData: $leavesData)';
}


}

/// @nodoc
abstract mixin class $TodayLeavesEntityCopyWith<$Res>  {
  factory $TodayLeavesEntityCopyWith(TodayLeavesEntity value, $Res Function(TodayLeavesEntity) _then) = _$TodayLeavesEntityCopyWithImpl;
@useResult
$Res call({
 int total, List<LeavePermitEntity> leavesData
});




}
/// @nodoc
class _$TodayLeavesEntityCopyWithImpl<$Res>
    implements $TodayLeavesEntityCopyWith<$Res> {
  _$TodayLeavesEntityCopyWithImpl(this._self, this._then);

  final TodayLeavesEntity _self;
  final $Res Function(TodayLeavesEntity) _then;

/// Create a copy of TodayLeavesEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? leavesData = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,leavesData: null == leavesData ? _self.leavesData : leavesData // ignore: cast_nullable_to_non_nullable
as List<LeavePermitEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [TodayLeavesEntity].
extension TodayLeavesEntityPatterns on TodayLeavesEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TodayLeavesEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TodayLeavesEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TodayLeavesEntity value)  $default,){
final _that = this;
switch (_that) {
case _TodayLeavesEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TodayLeavesEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TodayLeavesEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  List<LeavePermitEntity> leavesData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TodayLeavesEntity() when $default != null:
return $default(_that.total,_that.leavesData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  List<LeavePermitEntity> leavesData)  $default,) {final _that = this;
switch (_that) {
case _TodayLeavesEntity():
return $default(_that.total,_that.leavesData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  List<LeavePermitEntity> leavesData)?  $default,) {final _that = this;
switch (_that) {
case _TodayLeavesEntity() when $default != null:
return $default(_that.total,_that.leavesData);case _:
  return null;

}
}

}

/// @nodoc


class _TodayLeavesEntity implements TodayLeavesEntity {
  const _TodayLeavesEntity({required this.total, required final  List<LeavePermitEntity> leavesData}): _leavesData = leavesData;
  

@override final  int total;
 final  List<LeavePermitEntity> _leavesData;
@override List<LeavePermitEntity> get leavesData {
  if (_leavesData is EqualUnmodifiableListView) return _leavesData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_leavesData);
}


/// Create a copy of TodayLeavesEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TodayLeavesEntityCopyWith<_TodayLeavesEntity> get copyWith => __$TodayLeavesEntityCopyWithImpl<_TodayLeavesEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TodayLeavesEntity&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other._leavesData, _leavesData));
}


@override
int get hashCode => Object.hash(runtimeType,total,const DeepCollectionEquality().hash(_leavesData));

@override
String toString() {
  return 'TodayLeavesEntity(total: $total, leavesData: $leavesData)';
}


}

/// @nodoc
abstract mixin class _$TodayLeavesEntityCopyWith<$Res> implements $TodayLeavesEntityCopyWith<$Res> {
  factory _$TodayLeavesEntityCopyWith(_TodayLeavesEntity value, $Res Function(_TodayLeavesEntity) _then) = __$TodayLeavesEntityCopyWithImpl;
@override @useResult
$Res call({
 int total, List<LeavePermitEntity> leavesData
});




}
/// @nodoc
class __$TodayLeavesEntityCopyWithImpl<$Res>
    implements _$TodayLeavesEntityCopyWith<$Res> {
  __$TodayLeavesEntityCopyWithImpl(this._self, this._then);

  final _TodayLeavesEntity _self;
  final $Res Function(_TodayLeavesEntity) _then;

/// Create a copy of TodayLeavesEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? leavesData = null,}) {
  return _then(_TodayLeavesEntity(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,leavesData: null == leavesData ? _self._leavesData : leavesData // ignore: cast_nullable_to_non_nullable
as List<LeavePermitEntity>,
  ));
}


}

/// @nodoc
mixin _$LeavePermitEntity {

 String get nama; String get tipe; String get alasan; String get jenis; String get tanggalMulai; String get tanggalSelesai;
/// Create a copy of LeavePermitEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeavePermitEntityCopyWith<LeavePermitEntity> get copyWith => _$LeavePermitEntityCopyWithImpl<LeavePermitEntity>(this as LeavePermitEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeavePermitEntity&&(identical(other.nama, nama) || other.nama == nama)&&(identical(other.tipe, tipe) || other.tipe == tipe)&&(identical(other.alasan, alasan) || other.alasan == alasan)&&(identical(other.jenis, jenis) || other.jenis == jenis)&&(identical(other.tanggalMulai, tanggalMulai) || other.tanggalMulai == tanggalMulai)&&(identical(other.tanggalSelesai, tanggalSelesai) || other.tanggalSelesai == tanggalSelesai));
}


@override
int get hashCode => Object.hash(runtimeType,nama,tipe,alasan,jenis,tanggalMulai,tanggalSelesai);

@override
String toString() {
  return 'LeavePermitEntity(nama: $nama, tipe: $tipe, alasan: $alasan, jenis: $jenis, tanggalMulai: $tanggalMulai, tanggalSelesai: $tanggalSelesai)';
}


}

/// @nodoc
abstract mixin class $LeavePermitEntityCopyWith<$Res>  {
  factory $LeavePermitEntityCopyWith(LeavePermitEntity value, $Res Function(LeavePermitEntity) _then) = _$LeavePermitEntityCopyWithImpl;
@useResult
$Res call({
 String nama, String tipe, String alasan, String jenis, String tanggalMulai, String tanggalSelesai
});




}
/// @nodoc
class _$LeavePermitEntityCopyWithImpl<$Res>
    implements $LeavePermitEntityCopyWith<$Res> {
  _$LeavePermitEntityCopyWithImpl(this._self, this._then);

  final LeavePermitEntity _self;
  final $Res Function(LeavePermitEntity) _then;

/// Create a copy of LeavePermitEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nama = null,Object? tipe = null,Object? alasan = null,Object? jenis = null,Object? tanggalMulai = null,Object? tanggalSelesai = null,}) {
  return _then(_self.copyWith(
nama: null == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String,tipe: null == tipe ? _self.tipe : tipe // ignore: cast_nullable_to_non_nullable
as String,alasan: null == alasan ? _self.alasan : alasan // ignore: cast_nullable_to_non_nullable
as String,jenis: null == jenis ? _self.jenis : jenis // ignore: cast_nullable_to_non_nullable
as String,tanggalMulai: null == tanggalMulai ? _self.tanggalMulai : tanggalMulai // ignore: cast_nullable_to_non_nullable
as String,tanggalSelesai: null == tanggalSelesai ? _self.tanggalSelesai : tanggalSelesai // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LeavePermitEntity].
extension LeavePermitEntityPatterns on LeavePermitEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeavePermitEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeavePermitEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeavePermitEntity value)  $default,){
final _that = this;
switch (_that) {
case _LeavePermitEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeavePermitEntity value)?  $default,){
final _that = this;
switch (_that) {
case _LeavePermitEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String nama,  String tipe,  String alasan,  String jenis,  String tanggalMulai,  String tanggalSelesai)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeavePermitEntity() when $default != null:
return $default(_that.nama,_that.tipe,_that.alasan,_that.jenis,_that.tanggalMulai,_that.tanggalSelesai);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String nama,  String tipe,  String alasan,  String jenis,  String tanggalMulai,  String tanggalSelesai)  $default,) {final _that = this;
switch (_that) {
case _LeavePermitEntity():
return $default(_that.nama,_that.tipe,_that.alasan,_that.jenis,_that.tanggalMulai,_that.tanggalSelesai);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String nama,  String tipe,  String alasan,  String jenis,  String tanggalMulai,  String tanggalSelesai)?  $default,) {final _that = this;
switch (_that) {
case _LeavePermitEntity() when $default != null:
return $default(_that.nama,_that.tipe,_that.alasan,_that.jenis,_that.tanggalMulai,_that.tanggalSelesai);case _:
  return null;

}
}

}

/// @nodoc


class _LeavePermitEntity implements LeavePermitEntity {
  const _LeavePermitEntity({required this.nama, required this.tipe, required this.alasan, required this.jenis, required this.tanggalMulai, required this.tanggalSelesai});
  

@override final  String nama;
@override final  String tipe;
@override final  String alasan;
@override final  String jenis;
@override final  String tanggalMulai;
@override final  String tanggalSelesai;

/// Create a copy of LeavePermitEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeavePermitEntityCopyWith<_LeavePermitEntity> get copyWith => __$LeavePermitEntityCopyWithImpl<_LeavePermitEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeavePermitEntity&&(identical(other.nama, nama) || other.nama == nama)&&(identical(other.tipe, tipe) || other.tipe == tipe)&&(identical(other.alasan, alasan) || other.alasan == alasan)&&(identical(other.jenis, jenis) || other.jenis == jenis)&&(identical(other.tanggalMulai, tanggalMulai) || other.tanggalMulai == tanggalMulai)&&(identical(other.tanggalSelesai, tanggalSelesai) || other.tanggalSelesai == tanggalSelesai));
}


@override
int get hashCode => Object.hash(runtimeType,nama,tipe,alasan,jenis,tanggalMulai,tanggalSelesai);

@override
String toString() {
  return 'LeavePermitEntity(nama: $nama, tipe: $tipe, alasan: $alasan, jenis: $jenis, tanggalMulai: $tanggalMulai, tanggalSelesai: $tanggalSelesai)';
}


}

/// @nodoc
abstract mixin class _$LeavePermitEntityCopyWith<$Res> implements $LeavePermitEntityCopyWith<$Res> {
  factory _$LeavePermitEntityCopyWith(_LeavePermitEntity value, $Res Function(_LeavePermitEntity) _then) = __$LeavePermitEntityCopyWithImpl;
@override @useResult
$Res call({
 String nama, String tipe, String alasan, String jenis, String tanggalMulai, String tanggalSelesai
});




}
/// @nodoc
class __$LeavePermitEntityCopyWithImpl<$Res>
    implements _$LeavePermitEntityCopyWith<$Res> {
  __$LeavePermitEntityCopyWithImpl(this._self, this._then);

  final _LeavePermitEntity _self;
  final $Res Function(_LeavePermitEntity) _then;

/// Create a copy of LeavePermitEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nama = null,Object? tipe = null,Object? alasan = null,Object? jenis = null,Object? tanggalMulai = null,Object? tanggalSelesai = null,}) {
  return _then(_LeavePermitEntity(
nama: null == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String,tipe: null == tipe ? _self.tipe : tipe // ignore: cast_nullable_to_non_nullable
as String,alasan: null == alasan ? _self.alasan : alasan // ignore: cast_nullable_to_non_nullable
as String,jenis: null == jenis ? _self.jenis : jenis // ignore: cast_nullable_to_non_nullable
as String,tanggalMulai: null == tanggalMulai ? _self.tanggalMulai : tanggalMulai // ignore: cast_nullable_to_non_nullable
as String,tanggalSelesai: null == tanggalSelesai ? _self.tanggalSelesai : tanggalSelesai // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
