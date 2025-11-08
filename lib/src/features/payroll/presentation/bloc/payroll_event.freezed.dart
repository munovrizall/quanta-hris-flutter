// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payroll_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PayrollEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PayrollEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PayrollEvent()';
}


}

/// @nodoc
class $PayrollEventCopyWith<$Res>  {
$PayrollEventCopyWith(PayrollEvent _, $Res Function(PayrollEvent) __);
}


/// Adds pattern-matching-related methods to [PayrollEvent].
extension PayrollEventPatterns on PayrollEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchSlipGaji value)?  fetchSlipGaji,TResult Function( _FetchSlipGajiDetail value)?  fetchSlipGajiDetail,TResult Function( _DownloadSlipGaji value)?  downloadSlipGaji,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchSlipGaji() when fetchSlipGaji != null:
return fetchSlipGaji(_that);case _FetchSlipGajiDetail() when fetchSlipGajiDetail != null:
return fetchSlipGajiDetail(_that);case _DownloadSlipGaji() when downloadSlipGaji != null:
return downloadSlipGaji(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchSlipGaji value)  fetchSlipGaji,required TResult Function( _FetchSlipGajiDetail value)  fetchSlipGajiDetail,required TResult Function( _DownloadSlipGaji value)  downloadSlipGaji,}){
final _that = this;
switch (_that) {
case _FetchSlipGaji():
return fetchSlipGaji(_that);case _FetchSlipGajiDetail():
return fetchSlipGajiDetail(_that);case _DownloadSlipGaji():
return downloadSlipGaji(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchSlipGaji value)?  fetchSlipGaji,TResult? Function( _FetchSlipGajiDetail value)?  fetchSlipGajiDetail,TResult? Function( _DownloadSlipGaji value)?  downloadSlipGaji,}){
final _that = this;
switch (_that) {
case _FetchSlipGaji() when fetchSlipGaji != null:
return fetchSlipGaji(_that);case _FetchSlipGajiDetail() when fetchSlipGajiDetail != null:
return fetchSlipGajiDetail(_that);case _DownloadSlipGaji() when downloadSlipGaji != null:
return downloadSlipGaji(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchSlipGaji,TResult Function( int tahun,  int bulan)?  fetchSlipGajiDetail,TResult Function( int tahun,  int bulan)?  downloadSlipGaji,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchSlipGaji() when fetchSlipGaji != null:
return fetchSlipGaji();case _FetchSlipGajiDetail() when fetchSlipGajiDetail != null:
return fetchSlipGajiDetail(_that.tahun,_that.bulan);case _DownloadSlipGaji() when downloadSlipGaji != null:
return downloadSlipGaji(_that.tahun,_that.bulan);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchSlipGaji,required TResult Function( int tahun,  int bulan)  fetchSlipGajiDetail,required TResult Function( int tahun,  int bulan)  downloadSlipGaji,}) {final _that = this;
switch (_that) {
case _FetchSlipGaji():
return fetchSlipGaji();case _FetchSlipGajiDetail():
return fetchSlipGajiDetail(_that.tahun,_that.bulan);case _DownloadSlipGaji():
return downloadSlipGaji(_that.tahun,_that.bulan);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchSlipGaji,TResult? Function( int tahun,  int bulan)?  fetchSlipGajiDetail,TResult? Function( int tahun,  int bulan)?  downloadSlipGaji,}) {final _that = this;
switch (_that) {
case _FetchSlipGaji() when fetchSlipGaji != null:
return fetchSlipGaji();case _FetchSlipGajiDetail() when fetchSlipGajiDetail != null:
return fetchSlipGajiDetail(_that.tahun,_that.bulan);case _DownloadSlipGaji() when downloadSlipGaji != null:
return downloadSlipGaji(_that.tahun,_that.bulan);case _:
  return null;

}
}

}

/// @nodoc


class _FetchSlipGaji implements PayrollEvent {
  const _FetchSlipGaji();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchSlipGaji);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PayrollEvent.fetchSlipGaji()';
}


}




/// @nodoc


class _FetchSlipGajiDetail implements PayrollEvent {
  const _FetchSlipGajiDetail({required this.tahun, required this.bulan});
  

 final  int tahun;
 final  int bulan;

/// Create a copy of PayrollEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchSlipGajiDetailCopyWith<_FetchSlipGajiDetail> get copyWith => __$FetchSlipGajiDetailCopyWithImpl<_FetchSlipGajiDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchSlipGajiDetail&&(identical(other.tahun, tahun) || other.tahun == tahun)&&(identical(other.bulan, bulan) || other.bulan == bulan));
}


@override
int get hashCode => Object.hash(runtimeType,tahun,bulan);

@override
String toString() {
  return 'PayrollEvent.fetchSlipGajiDetail(tahun: $tahun, bulan: $bulan)';
}


}

/// @nodoc
abstract mixin class _$FetchSlipGajiDetailCopyWith<$Res> implements $PayrollEventCopyWith<$Res> {
  factory _$FetchSlipGajiDetailCopyWith(_FetchSlipGajiDetail value, $Res Function(_FetchSlipGajiDetail) _then) = __$FetchSlipGajiDetailCopyWithImpl;
@useResult
$Res call({
 int tahun, int bulan
});




}
/// @nodoc
class __$FetchSlipGajiDetailCopyWithImpl<$Res>
    implements _$FetchSlipGajiDetailCopyWith<$Res> {
  __$FetchSlipGajiDetailCopyWithImpl(this._self, this._then);

  final _FetchSlipGajiDetail _self;
  final $Res Function(_FetchSlipGajiDetail) _then;

/// Create a copy of PayrollEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tahun = null,Object? bulan = null,}) {
  return _then(_FetchSlipGajiDetail(
tahun: null == tahun ? _self.tahun : tahun // ignore: cast_nullable_to_non_nullable
as int,bulan: null == bulan ? _self.bulan : bulan // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _DownloadSlipGaji implements PayrollEvent {
  const _DownloadSlipGaji({required this.tahun, required this.bulan});
  

 final  int tahun;
 final  int bulan;

/// Create a copy of PayrollEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DownloadSlipGajiCopyWith<_DownloadSlipGaji> get copyWith => __$DownloadSlipGajiCopyWithImpl<_DownloadSlipGaji>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloadSlipGaji&&(identical(other.tahun, tahun) || other.tahun == tahun)&&(identical(other.bulan, bulan) || other.bulan == bulan));
}


@override
int get hashCode => Object.hash(runtimeType,tahun,bulan);

@override
String toString() {
  return 'PayrollEvent.downloadSlipGaji(tahun: $tahun, bulan: $bulan)';
}


}

/// @nodoc
abstract mixin class _$DownloadSlipGajiCopyWith<$Res> implements $PayrollEventCopyWith<$Res> {
  factory _$DownloadSlipGajiCopyWith(_DownloadSlipGaji value, $Res Function(_DownloadSlipGaji) _then) = __$DownloadSlipGajiCopyWithImpl;
@useResult
$Res call({
 int tahun, int bulan
});




}
/// @nodoc
class __$DownloadSlipGajiCopyWithImpl<$Res>
    implements _$DownloadSlipGajiCopyWith<$Res> {
  __$DownloadSlipGajiCopyWithImpl(this._self, this._then);

  final _DownloadSlipGaji _self;
  final $Res Function(_DownloadSlipGaji) _then;

/// Create a copy of PayrollEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tahun = null,Object? bulan = null,}) {
  return _then(_DownloadSlipGaji(
tahun: null == tahun ? _self.tahun : tahun // ignore: cast_nullable_to_non_nullable
as int,bulan: null == bulan ? _self.bulan : bulan // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
