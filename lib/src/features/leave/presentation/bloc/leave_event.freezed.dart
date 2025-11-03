// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LeaveEvent {

 String get jenisCuti; String get tanggalMulai; String get tanggalSelesai; String get keterangan; String? get dokumenPendukungPath;
/// Create a copy of LeaveEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaveEventCopyWith<LeaveEvent> get copyWith => _$LeaveEventCopyWithImpl<LeaveEvent>(this as LeaveEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaveEvent&&(identical(other.jenisCuti, jenisCuti) || other.jenisCuti == jenisCuti)&&(identical(other.tanggalMulai, tanggalMulai) || other.tanggalMulai == tanggalMulai)&&(identical(other.tanggalSelesai, tanggalSelesai) || other.tanggalSelesai == tanggalSelesai)&&(identical(other.keterangan, keterangan) || other.keterangan == keterangan)&&(identical(other.dokumenPendukungPath, dokumenPendukungPath) || other.dokumenPendukungPath == dokumenPendukungPath));
}


@override
int get hashCode => Object.hash(runtimeType,jenisCuti,tanggalMulai,tanggalSelesai,keterangan,dokumenPendukungPath);

@override
String toString() {
  return 'LeaveEvent(jenisCuti: $jenisCuti, tanggalMulai: $tanggalMulai, tanggalSelesai: $tanggalSelesai, keterangan: $keterangan, dokumenPendukungPath: $dokumenPendukungPath)';
}


}

/// @nodoc
abstract mixin class $LeaveEventCopyWith<$Res>  {
  factory $LeaveEventCopyWith(LeaveEvent value, $Res Function(LeaveEvent) _then) = _$LeaveEventCopyWithImpl;
@useResult
$Res call({
 String jenisCuti, String tanggalMulai, String tanggalSelesai, String keterangan, String? dokumenPendukungPath
});




}
/// @nodoc
class _$LeaveEventCopyWithImpl<$Res>
    implements $LeaveEventCopyWith<$Res> {
  _$LeaveEventCopyWithImpl(this._self, this._then);

  final LeaveEvent _self;
  final $Res Function(LeaveEvent) _then;

/// Create a copy of LeaveEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? jenisCuti = null,Object? tanggalMulai = null,Object? tanggalSelesai = null,Object? keterangan = null,Object? dokumenPendukungPath = freezed,}) {
  return _then(_self.copyWith(
jenisCuti: null == jenisCuti ? _self.jenisCuti : jenisCuti // ignore: cast_nullable_to_non_nullable
as String,tanggalMulai: null == tanggalMulai ? _self.tanggalMulai : tanggalMulai // ignore: cast_nullable_to_non_nullable
as String,tanggalSelesai: null == tanggalSelesai ? _self.tanggalSelesai : tanggalSelesai // ignore: cast_nullable_to_non_nullable
as String,keterangan: null == keterangan ? _self.keterangan : keterangan // ignore: cast_nullable_to_non_nullable
as String,dokumenPendukungPath: freezed == dokumenPendukungPath ? _self.dokumenPendukungPath : dokumenPendukungPath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LeaveEvent].
extension LeaveEventPatterns on LeaveEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SubmitLeave value)?  submitLeave,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitLeave() when submitLeave != null:
return submitLeave(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SubmitLeave value)  submitLeave,}){
final _that = this;
switch (_that) {
case _SubmitLeave():
return submitLeave(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SubmitLeave value)?  submitLeave,}){
final _that = this;
switch (_that) {
case _SubmitLeave() when submitLeave != null:
return submitLeave(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String jenisCuti,  String tanggalMulai,  String tanggalSelesai,  String keterangan,  String? dokumenPendukungPath)?  submitLeave,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitLeave() when submitLeave != null:
return submitLeave(_that.jenisCuti,_that.tanggalMulai,_that.tanggalSelesai,_that.keterangan,_that.dokumenPendukungPath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String jenisCuti,  String tanggalMulai,  String tanggalSelesai,  String keterangan,  String? dokumenPendukungPath)  submitLeave,}) {final _that = this;
switch (_that) {
case _SubmitLeave():
return submitLeave(_that.jenisCuti,_that.tanggalMulai,_that.tanggalSelesai,_that.keterangan,_that.dokumenPendukungPath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String jenisCuti,  String tanggalMulai,  String tanggalSelesai,  String keterangan,  String? dokumenPendukungPath)?  submitLeave,}) {final _that = this;
switch (_that) {
case _SubmitLeave() when submitLeave != null:
return submitLeave(_that.jenisCuti,_that.tanggalMulai,_that.tanggalSelesai,_that.keterangan,_that.dokumenPendukungPath);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitLeave implements LeaveEvent {
  const _SubmitLeave({required this.jenisCuti, required this.tanggalMulai, required this.tanggalSelesai, required this.keterangan, this.dokumenPendukungPath});
  

@override final  String jenisCuti;
@override final  String tanggalMulai;
@override final  String tanggalSelesai;
@override final  String keterangan;
@override final  String? dokumenPendukungPath;

/// Create a copy of LeaveEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitLeaveCopyWith<_SubmitLeave> get copyWith => __$SubmitLeaveCopyWithImpl<_SubmitLeave>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitLeave&&(identical(other.jenisCuti, jenisCuti) || other.jenisCuti == jenisCuti)&&(identical(other.tanggalMulai, tanggalMulai) || other.tanggalMulai == tanggalMulai)&&(identical(other.tanggalSelesai, tanggalSelesai) || other.tanggalSelesai == tanggalSelesai)&&(identical(other.keterangan, keterangan) || other.keterangan == keterangan)&&(identical(other.dokumenPendukungPath, dokumenPendukungPath) || other.dokumenPendukungPath == dokumenPendukungPath));
}


@override
int get hashCode => Object.hash(runtimeType,jenisCuti,tanggalMulai,tanggalSelesai,keterangan,dokumenPendukungPath);

@override
String toString() {
  return 'LeaveEvent.submitLeave(jenisCuti: $jenisCuti, tanggalMulai: $tanggalMulai, tanggalSelesai: $tanggalSelesai, keterangan: $keterangan, dokumenPendukungPath: $dokumenPendukungPath)';
}


}

/// @nodoc
abstract mixin class _$SubmitLeaveCopyWith<$Res> implements $LeaveEventCopyWith<$Res> {
  factory _$SubmitLeaveCopyWith(_SubmitLeave value, $Res Function(_SubmitLeave) _then) = __$SubmitLeaveCopyWithImpl;
@override @useResult
$Res call({
 String jenisCuti, String tanggalMulai, String tanggalSelesai, String keterangan, String? dokumenPendukungPath
});




}
/// @nodoc
class __$SubmitLeaveCopyWithImpl<$Res>
    implements _$SubmitLeaveCopyWith<$Res> {
  __$SubmitLeaveCopyWithImpl(this._self, this._then);

  final _SubmitLeave _self;
  final $Res Function(_SubmitLeave) _then;

/// Create a copy of LeaveEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? jenisCuti = null,Object? tanggalMulai = null,Object? tanggalSelesai = null,Object? keterangan = null,Object? dokumenPendukungPath = freezed,}) {
  return _then(_SubmitLeave(
jenisCuti: null == jenisCuti ? _self.jenisCuti : jenisCuti // ignore: cast_nullable_to_non_nullable
as String,tanggalMulai: null == tanggalMulai ? _self.tanggalMulai : tanggalMulai // ignore: cast_nullable_to_non_nullable
as String,tanggalSelesai: null == tanggalSelesai ? _self.tanggalSelesai : tanggalSelesai // ignore: cast_nullable_to_non_nullable
as String,keterangan: null == keterangan ? _self.keterangan : keterangan // ignore: cast_nullable_to_non_nullable
as String,dokumenPendukungPath: freezed == dokumenPendukungPath ? _self.dokumenPendukungPath : dokumenPendukungPath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
