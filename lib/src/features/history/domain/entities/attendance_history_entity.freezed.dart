// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_history_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AttendanceHistoryListEntity {

 List<AttendanceHistoryEntity> get attendanceHistory;
/// Create a copy of AttendanceHistoryListEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceHistoryListEntityCopyWith<AttendanceHistoryListEntity> get copyWith => _$AttendanceHistoryListEntityCopyWithImpl<AttendanceHistoryListEntity>(this as AttendanceHistoryListEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceHistoryListEntity&&const DeepCollectionEquality().equals(other.attendanceHistory, attendanceHistory));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(attendanceHistory));

@override
String toString() {
  return 'AttendanceHistoryListEntity(attendanceHistory: $attendanceHistory)';
}


}

/// @nodoc
abstract mixin class $AttendanceHistoryListEntityCopyWith<$Res>  {
  factory $AttendanceHistoryListEntityCopyWith(AttendanceHistoryListEntity value, $Res Function(AttendanceHistoryListEntity) _then) = _$AttendanceHistoryListEntityCopyWithImpl;
@useResult
$Res call({
 List<AttendanceHistoryEntity> attendanceHistory
});




}
/// @nodoc
class _$AttendanceHistoryListEntityCopyWithImpl<$Res>
    implements $AttendanceHistoryListEntityCopyWith<$Res> {
  _$AttendanceHistoryListEntityCopyWithImpl(this._self, this._then);

  final AttendanceHistoryListEntity _self;
  final $Res Function(AttendanceHistoryListEntity) _then;

/// Create a copy of AttendanceHistoryListEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? attendanceHistory = null,}) {
  return _then(_self.copyWith(
attendanceHistory: null == attendanceHistory ? _self.attendanceHistory : attendanceHistory // ignore: cast_nullable_to_non_nullable
as List<AttendanceHistoryEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceHistoryListEntity].
extension AttendanceHistoryListEntityPatterns on AttendanceHistoryListEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceHistoryListEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceHistoryListEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceHistoryListEntity value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceHistoryListEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceHistoryListEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceHistoryListEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AttendanceHistoryEntity> attendanceHistory)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceHistoryListEntity() when $default != null:
return $default(_that.attendanceHistory);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AttendanceHistoryEntity> attendanceHistory)  $default,) {final _that = this;
switch (_that) {
case _AttendanceHistoryListEntity():
return $default(_that.attendanceHistory);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AttendanceHistoryEntity> attendanceHistory)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceHistoryListEntity() when $default != null:
return $default(_that.attendanceHistory);case _:
  return null;

}
}

}

/// @nodoc


class _AttendanceHistoryListEntity implements AttendanceHistoryListEntity {
  const _AttendanceHistoryListEntity({required final  List<AttendanceHistoryEntity> attendanceHistory}): _attendanceHistory = attendanceHistory;
  

 final  List<AttendanceHistoryEntity> _attendanceHistory;
@override List<AttendanceHistoryEntity> get attendanceHistory {
  if (_attendanceHistory is EqualUnmodifiableListView) return _attendanceHistory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attendanceHistory);
}


/// Create a copy of AttendanceHistoryListEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceHistoryListEntityCopyWith<_AttendanceHistoryListEntity> get copyWith => __$AttendanceHistoryListEntityCopyWithImpl<_AttendanceHistoryListEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceHistoryListEntity&&const DeepCollectionEquality().equals(other._attendanceHistory, _attendanceHistory));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_attendanceHistory));

@override
String toString() {
  return 'AttendanceHistoryListEntity(attendanceHistory: $attendanceHistory)';
}


}

/// @nodoc
abstract mixin class _$AttendanceHistoryListEntityCopyWith<$Res> implements $AttendanceHistoryListEntityCopyWith<$Res> {
  factory _$AttendanceHistoryListEntityCopyWith(_AttendanceHistoryListEntity value, $Res Function(_AttendanceHistoryListEntity) _then) = __$AttendanceHistoryListEntityCopyWithImpl;
@override @useResult
$Res call({
 List<AttendanceHistoryEntity> attendanceHistory
});




}
/// @nodoc
class __$AttendanceHistoryListEntityCopyWithImpl<$Res>
    implements _$AttendanceHistoryListEntityCopyWith<$Res> {
  __$AttendanceHistoryListEntityCopyWithImpl(this._self, this._then);

  final _AttendanceHistoryListEntity _self;
  final $Res Function(_AttendanceHistoryListEntity) _then;

/// Create a copy of AttendanceHistoryListEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? attendanceHistory = null,}) {
  return _then(_AttendanceHistoryListEntity(
attendanceHistory: null == attendanceHistory ? _self._attendanceHistory : attendanceHistory // ignore: cast_nullable_to_non_nullable
as List<AttendanceHistoryEntity>,
  ));
}


}

/// @nodoc
mixin _$AttendanceHistoryEntity {

 String get tanggal; String? get jamMasuk; String? get statusMasuk; String? get jamPulang; String? get statusPulang; String get statusAbsensi;
/// Create a copy of AttendanceHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceHistoryEntityCopyWith<AttendanceHistoryEntity> get copyWith => _$AttendanceHistoryEntityCopyWithImpl<AttendanceHistoryEntity>(this as AttendanceHistoryEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceHistoryEntity&&(identical(other.tanggal, tanggal) || other.tanggal == tanggal)&&(identical(other.jamMasuk, jamMasuk) || other.jamMasuk == jamMasuk)&&(identical(other.statusMasuk, statusMasuk) || other.statusMasuk == statusMasuk)&&(identical(other.jamPulang, jamPulang) || other.jamPulang == jamPulang)&&(identical(other.statusPulang, statusPulang) || other.statusPulang == statusPulang)&&(identical(other.statusAbsensi, statusAbsensi) || other.statusAbsensi == statusAbsensi));
}


@override
int get hashCode => Object.hash(runtimeType,tanggal,jamMasuk,statusMasuk,jamPulang,statusPulang,statusAbsensi);

@override
String toString() {
  return 'AttendanceHistoryEntity(tanggal: $tanggal, jamMasuk: $jamMasuk, statusMasuk: $statusMasuk, jamPulang: $jamPulang, statusPulang: $statusPulang, statusAbsensi: $statusAbsensi)';
}


}

/// @nodoc
abstract mixin class $AttendanceHistoryEntityCopyWith<$Res>  {
  factory $AttendanceHistoryEntityCopyWith(AttendanceHistoryEntity value, $Res Function(AttendanceHistoryEntity) _then) = _$AttendanceHistoryEntityCopyWithImpl;
@useResult
$Res call({
 String tanggal, String? jamMasuk, String? statusMasuk, String? jamPulang, String? statusPulang, String statusAbsensi
});




}
/// @nodoc
class _$AttendanceHistoryEntityCopyWithImpl<$Res>
    implements $AttendanceHistoryEntityCopyWith<$Res> {
  _$AttendanceHistoryEntityCopyWithImpl(this._self, this._then);

  final AttendanceHistoryEntity _self;
  final $Res Function(AttendanceHistoryEntity) _then;

/// Create a copy of AttendanceHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tanggal = null,Object? jamMasuk = freezed,Object? statusMasuk = freezed,Object? jamPulang = freezed,Object? statusPulang = freezed,Object? statusAbsensi = null,}) {
  return _then(_self.copyWith(
tanggal: null == tanggal ? _self.tanggal : tanggal // ignore: cast_nullable_to_non_nullable
as String,jamMasuk: freezed == jamMasuk ? _self.jamMasuk : jamMasuk // ignore: cast_nullable_to_non_nullable
as String?,statusMasuk: freezed == statusMasuk ? _self.statusMasuk : statusMasuk // ignore: cast_nullable_to_non_nullable
as String?,jamPulang: freezed == jamPulang ? _self.jamPulang : jamPulang // ignore: cast_nullable_to_non_nullable
as String?,statusPulang: freezed == statusPulang ? _self.statusPulang : statusPulang // ignore: cast_nullable_to_non_nullable
as String?,statusAbsensi: null == statusAbsensi ? _self.statusAbsensi : statusAbsensi // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceHistoryEntity].
extension AttendanceHistoryEntityPatterns on AttendanceHistoryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceHistoryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceHistoryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceHistoryEntity value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceHistoryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceHistoryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceHistoryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String tanggal,  String? jamMasuk,  String? statusMasuk,  String? jamPulang,  String? statusPulang,  String statusAbsensi)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceHistoryEntity() when $default != null:
return $default(_that.tanggal,_that.jamMasuk,_that.statusMasuk,_that.jamPulang,_that.statusPulang,_that.statusAbsensi);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String tanggal,  String? jamMasuk,  String? statusMasuk,  String? jamPulang,  String? statusPulang,  String statusAbsensi)  $default,) {final _that = this;
switch (_that) {
case _AttendanceHistoryEntity():
return $default(_that.tanggal,_that.jamMasuk,_that.statusMasuk,_that.jamPulang,_that.statusPulang,_that.statusAbsensi);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String tanggal,  String? jamMasuk,  String? statusMasuk,  String? jamPulang,  String? statusPulang,  String statusAbsensi)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceHistoryEntity() when $default != null:
return $default(_that.tanggal,_that.jamMasuk,_that.statusMasuk,_that.jamPulang,_that.statusPulang,_that.statusAbsensi);case _:
  return null;

}
}

}

/// @nodoc


class _AttendanceHistoryEntity implements AttendanceHistoryEntity {
  const _AttendanceHistoryEntity({required this.tanggal, this.jamMasuk, this.statusMasuk, this.jamPulang, this.statusPulang, required this.statusAbsensi});
  

@override final  String tanggal;
@override final  String? jamMasuk;
@override final  String? statusMasuk;
@override final  String? jamPulang;
@override final  String? statusPulang;
@override final  String statusAbsensi;

/// Create a copy of AttendanceHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceHistoryEntityCopyWith<_AttendanceHistoryEntity> get copyWith => __$AttendanceHistoryEntityCopyWithImpl<_AttendanceHistoryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceHistoryEntity&&(identical(other.tanggal, tanggal) || other.tanggal == tanggal)&&(identical(other.jamMasuk, jamMasuk) || other.jamMasuk == jamMasuk)&&(identical(other.statusMasuk, statusMasuk) || other.statusMasuk == statusMasuk)&&(identical(other.jamPulang, jamPulang) || other.jamPulang == jamPulang)&&(identical(other.statusPulang, statusPulang) || other.statusPulang == statusPulang)&&(identical(other.statusAbsensi, statusAbsensi) || other.statusAbsensi == statusAbsensi));
}


@override
int get hashCode => Object.hash(runtimeType,tanggal,jamMasuk,statusMasuk,jamPulang,statusPulang,statusAbsensi);

@override
String toString() {
  return 'AttendanceHistoryEntity(tanggal: $tanggal, jamMasuk: $jamMasuk, statusMasuk: $statusMasuk, jamPulang: $jamPulang, statusPulang: $statusPulang, statusAbsensi: $statusAbsensi)';
}


}

/// @nodoc
abstract mixin class _$AttendanceHistoryEntityCopyWith<$Res> implements $AttendanceHistoryEntityCopyWith<$Res> {
  factory _$AttendanceHistoryEntityCopyWith(_AttendanceHistoryEntity value, $Res Function(_AttendanceHistoryEntity) _then) = __$AttendanceHistoryEntityCopyWithImpl;
@override @useResult
$Res call({
 String tanggal, String? jamMasuk, String? statusMasuk, String? jamPulang, String? statusPulang, String statusAbsensi
});




}
/// @nodoc
class __$AttendanceHistoryEntityCopyWithImpl<$Res>
    implements _$AttendanceHistoryEntityCopyWith<$Res> {
  __$AttendanceHistoryEntityCopyWithImpl(this._self, this._then);

  final _AttendanceHistoryEntity _self;
  final $Res Function(_AttendanceHistoryEntity) _then;

/// Create a copy of AttendanceHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tanggal = null,Object? jamMasuk = freezed,Object? statusMasuk = freezed,Object? jamPulang = freezed,Object? statusPulang = freezed,Object? statusAbsensi = null,}) {
  return _then(_AttendanceHistoryEntity(
tanggal: null == tanggal ? _self.tanggal : tanggal // ignore: cast_nullable_to_non_nullable
as String,jamMasuk: freezed == jamMasuk ? _self.jamMasuk : jamMasuk // ignore: cast_nullable_to_non_nullable
as String?,statusMasuk: freezed == statusMasuk ? _self.statusMasuk : statusMasuk // ignore: cast_nullable_to_non_nullable
as String?,jamPulang: freezed == jamPulang ? _self.jamPulang : jamPulang // ignore: cast_nullable_to_non_nullable
as String?,statusPulang: freezed == statusPulang ? _self.statusPulang : statusPulang // ignore: cast_nullable_to_non_nullable
as String?,statusAbsensi: null == statusAbsensi ? _self.statusAbsensi : statusAbsensi // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
