// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payroll_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PayrollState {

 bool get isLoadingSlipGaji; bool get isLoadingSlipGajiDetail; bool get isDownloadingSlipGaji; List<SlipGajiEntity>? get slipGaji; String? get slipGajiError; SlipGajiDetailEntity? get slipGajiDetail; String? get slipGajiDetailError; String? get downloadSlipGajiError; String? get downloadSlipGajiPath;
/// Create a copy of PayrollState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PayrollStateCopyWith<PayrollState> get copyWith => _$PayrollStateCopyWithImpl<PayrollState>(this as PayrollState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PayrollState&&(identical(other.isLoadingSlipGaji, isLoadingSlipGaji) || other.isLoadingSlipGaji == isLoadingSlipGaji)&&(identical(other.isLoadingSlipGajiDetail, isLoadingSlipGajiDetail) || other.isLoadingSlipGajiDetail == isLoadingSlipGajiDetail)&&(identical(other.isDownloadingSlipGaji, isDownloadingSlipGaji) || other.isDownloadingSlipGaji == isDownloadingSlipGaji)&&const DeepCollectionEquality().equals(other.slipGaji, slipGaji)&&(identical(other.slipGajiError, slipGajiError) || other.slipGajiError == slipGajiError)&&(identical(other.slipGajiDetail, slipGajiDetail) || other.slipGajiDetail == slipGajiDetail)&&(identical(other.slipGajiDetailError, slipGajiDetailError) || other.slipGajiDetailError == slipGajiDetailError)&&(identical(other.downloadSlipGajiError, downloadSlipGajiError) || other.downloadSlipGajiError == downloadSlipGajiError)&&(identical(other.downloadSlipGajiPath, downloadSlipGajiPath) || other.downloadSlipGajiPath == downloadSlipGajiPath));
}


@override
int get hashCode => Object.hash(runtimeType,isLoadingSlipGaji,isLoadingSlipGajiDetail,isDownloadingSlipGaji,const DeepCollectionEquality().hash(slipGaji),slipGajiError,slipGajiDetail,slipGajiDetailError,downloadSlipGajiError,downloadSlipGajiPath);

@override
String toString() {
  return 'PayrollState(isLoadingSlipGaji: $isLoadingSlipGaji, isLoadingSlipGajiDetail: $isLoadingSlipGajiDetail, isDownloadingSlipGaji: $isDownloadingSlipGaji, slipGaji: $slipGaji, slipGajiError: $slipGajiError, slipGajiDetail: $slipGajiDetail, slipGajiDetailError: $slipGajiDetailError, downloadSlipGajiError: $downloadSlipGajiError, downloadSlipGajiPath: $downloadSlipGajiPath)';
}


}

/// @nodoc
abstract mixin class $PayrollStateCopyWith<$Res>  {
  factory $PayrollStateCopyWith(PayrollState value, $Res Function(PayrollState) _then) = _$PayrollStateCopyWithImpl;
@useResult
$Res call({
 bool isLoadingSlipGaji, bool isLoadingSlipGajiDetail, bool isDownloadingSlipGaji, List<SlipGajiEntity>? slipGaji, String? slipGajiError, SlipGajiDetailEntity? slipGajiDetail, String? slipGajiDetailError, String? downloadSlipGajiError, String? downloadSlipGajiPath
});


$SlipGajiDetailEntityCopyWith<$Res>? get slipGajiDetail;

}
/// @nodoc
class _$PayrollStateCopyWithImpl<$Res>
    implements $PayrollStateCopyWith<$Res> {
  _$PayrollStateCopyWithImpl(this._self, this._then);

  final PayrollState _self;
  final $Res Function(PayrollState) _then;

/// Create a copy of PayrollState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoadingSlipGaji = null,Object? isLoadingSlipGajiDetail = null,Object? isDownloadingSlipGaji = null,Object? slipGaji = freezed,Object? slipGajiError = freezed,Object? slipGajiDetail = freezed,Object? slipGajiDetailError = freezed,Object? downloadSlipGajiError = freezed,Object? downloadSlipGajiPath = freezed,}) {
  return _then(_self.copyWith(
isLoadingSlipGaji: null == isLoadingSlipGaji ? _self.isLoadingSlipGaji : isLoadingSlipGaji // ignore: cast_nullable_to_non_nullable
as bool,isLoadingSlipGajiDetail: null == isLoadingSlipGajiDetail ? _self.isLoadingSlipGajiDetail : isLoadingSlipGajiDetail // ignore: cast_nullable_to_non_nullable
as bool,isDownloadingSlipGaji: null == isDownloadingSlipGaji ? _self.isDownloadingSlipGaji : isDownloadingSlipGaji // ignore: cast_nullable_to_non_nullable
as bool,slipGaji: freezed == slipGaji ? _self.slipGaji : slipGaji // ignore: cast_nullable_to_non_nullable
as List<SlipGajiEntity>?,slipGajiError: freezed == slipGajiError ? _self.slipGajiError : slipGajiError // ignore: cast_nullable_to_non_nullable
as String?,slipGajiDetail: freezed == slipGajiDetail ? _self.slipGajiDetail : slipGajiDetail // ignore: cast_nullable_to_non_nullable
as SlipGajiDetailEntity?,slipGajiDetailError: freezed == slipGajiDetailError ? _self.slipGajiDetailError : slipGajiDetailError // ignore: cast_nullable_to_non_nullable
as String?,downloadSlipGajiError: freezed == downloadSlipGajiError ? _self.downloadSlipGajiError : downloadSlipGajiError // ignore: cast_nullable_to_non_nullable
as String?,downloadSlipGajiPath: freezed == downloadSlipGajiPath ? _self.downloadSlipGajiPath : downloadSlipGajiPath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of PayrollState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SlipGajiDetailEntityCopyWith<$Res>? get slipGajiDetail {
    if (_self.slipGajiDetail == null) {
    return null;
  }

  return $SlipGajiDetailEntityCopyWith<$Res>(_self.slipGajiDetail!, (value) {
    return _then(_self.copyWith(slipGajiDetail: value));
  });
}
}


/// Adds pattern-matching-related methods to [PayrollState].
extension PayrollStatePatterns on PayrollState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PayrollState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PayrollState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PayrollState value)  $default,){
final _that = this;
switch (_that) {
case _PayrollState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PayrollState value)?  $default,){
final _that = this;
switch (_that) {
case _PayrollState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoadingSlipGaji,  bool isLoadingSlipGajiDetail,  bool isDownloadingSlipGaji,  List<SlipGajiEntity>? slipGaji,  String? slipGajiError,  SlipGajiDetailEntity? slipGajiDetail,  String? slipGajiDetailError,  String? downloadSlipGajiError,  String? downloadSlipGajiPath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PayrollState() when $default != null:
return $default(_that.isLoadingSlipGaji,_that.isLoadingSlipGajiDetail,_that.isDownloadingSlipGaji,_that.slipGaji,_that.slipGajiError,_that.slipGajiDetail,_that.slipGajiDetailError,_that.downloadSlipGajiError,_that.downloadSlipGajiPath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoadingSlipGaji,  bool isLoadingSlipGajiDetail,  bool isDownloadingSlipGaji,  List<SlipGajiEntity>? slipGaji,  String? slipGajiError,  SlipGajiDetailEntity? slipGajiDetail,  String? slipGajiDetailError,  String? downloadSlipGajiError,  String? downloadSlipGajiPath)  $default,) {final _that = this;
switch (_that) {
case _PayrollState():
return $default(_that.isLoadingSlipGaji,_that.isLoadingSlipGajiDetail,_that.isDownloadingSlipGaji,_that.slipGaji,_that.slipGajiError,_that.slipGajiDetail,_that.slipGajiDetailError,_that.downloadSlipGajiError,_that.downloadSlipGajiPath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoadingSlipGaji,  bool isLoadingSlipGajiDetail,  bool isDownloadingSlipGaji,  List<SlipGajiEntity>? slipGaji,  String? slipGajiError,  SlipGajiDetailEntity? slipGajiDetail,  String? slipGajiDetailError,  String? downloadSlipGajiError,  String? downloadSlipGajiPath)?  $default,) {final _that = this;
switch (_that) {
case _PayrollState() when $default != null:
return $default(_that.isLoadingSlipGaji,_that.isLoadingSlipGajiDetail,_that.isDownloadingSlipGaji,_that.slipGaji,_that.slipGajiError,_that.slipGajiDetail,_that.slipGajiDetailError,_that.downloadSlipGajiError,_that.downloadSlipGajiPath);case _:
  return null;

}
}

}

/// @nodoc


class _PayrollState implements PayrollState {
  const _PayrollState({this.isLoadingSlipGaji = false, this.isLoadingSlipGajiDetail = false, this.isDownloadingSlipGaji = false, final  List<SlipGajiEntity>? slipGaji, this.slipGajiError, this.slipGajiDetail, this.slipGajiDetailError, this.downloadSlipGajiError, this.downloadSlipGajiPath}): _slipGaji = slipGaji;
  

@override@JsonKey() final  bool isLoadingSlipGaji;
@override@JsonKey() final  bool isLoadingSlipGajiDetail;
@override@JsonKey() final  bool isDownloadingSlipGaji;
 final  List<SlipGajiEntity>? _slipGaji;
@override List<SlipGajiEntity>? get slipGaji {
  final value = _slipGaji;
  if (value == null) return null;
  if (_slipGaji is EqualUnmodifiableListView) return _slipGaji;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? slipGajiError;
@override final  SlipGajiDetailEntity? slipGajiDetail;
@override final  String? slipGajiDetailError;
@override final  String? downloadSlipGajiError;
@override final  String? downloadSlipGajiPath;

/// Create a copy of PayrollState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PayrollStateCopyWith<_PayrollState> get copyWith => __$PayrollStateCopyWithImpl<_PayrollState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PayrollState&&(identical(other.isLoadingSlipGaji, isLoadingSlipGaji) || other.isLoadingSlipGaji == isLoadingSlipGaji)&&(identical(other.isLoadingSlipGajiDetail, isLoadingSlipGajiDetail) || other.isLoadingSlipGajiDetail == isLoadingSlipGajiDetail)&&(identical(other.isDownloadingSlipGaji, isDownloadingSlipGaji) || other.isDownloadingSlipGaji == isDownloadingSlipGaji)&&const DeepCollectionEquality().equals(other._slipGaji, _slipGaji)&&(identical(other.slipGajiError, slipGajiError) || other.slipGajiError == slipGajiError)&&(identical(other.slipGajiDetail, slipGajiDetail) || other.slipGajiDetail == slipGajiDetail)&&(identical(other.slipGajiDetailError, slipGajiDetailError) || other.slipGajiDetailError == slipGajiDetailError)&&(identical(other.downloadSlipGajiError, downloadSlipGajiError) || other.downloadSlipGajiError == downloadSlipGajiError)&&(identical(other.downloadSlipGajiPath, downloadSlipGajiPath) || other.downloadSlipGajiPath == downloadSlipGajiPath));
}


@override
int get hashCode => Object.hash(runtimeType,isLoadingSlipGaji,isLoadingSlipGajiDetail,isDownloadingSlipGaji,const DeepCollectionEquality().hash(_slipGaji),slipGajiError,slipGajiDetail,slipGajiDetailError,downloadSlipGajiError,downloadSlipGajiPath);

@override
String toString() {
  return 'PayrollState(isLoadingSlipGaji: $isLoadingSlipGaji, isLoadingSlipGajiDetail: $isLoadingSlipGajiDetail, isDownloadingSlipGaji: $isDownloadingSlipGaji, slipGaji: $slipGaji, slipGajiError: $slipGajiError, slipGajiDetail: $slipGajiDetail, slipGajiDetailError: $slipGajiDetailError, downloadSlipGajiError: $downloadSlipGajiError, downloadSlipGajiPath: $downloadSlipGajiPath)';
}


}

/// @nodoc
abstract mixin class _$PayrollStateCopyWith<$Res> implements $PayrollStateCopyWith<$Res> {
  factory _$PayrollStateCopyWith(_PayrollState value, $Res Function(_PayrollState) _then) = __$PayrollStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoadingSlipGaji, bool isLoadingSlipGajiDetail, bool isDownloadingSlipGaji, List<SlipGajiEntity>? slipGaji, String? slipGajiError, SlipGajiDetailEntity? slipGajiDetail, String? slipGajiDetailError, String? downloadSlipGajiError, String? downloadSlipGajiPath
});


@override $SlipGajiDetailEntityCopyWith<$Res>? get slipGajiDetail;

}
/// @nodoc
class __$PayrollStateCopyWithImpl<$Res>
    implements _$PayrollStateCopyWith<$Res> {
  __$PayrollStateCopyWithImpl(this._self, this._then);

  final _PayrollState _self;
  final $Res Function(_PayrollState) _then;

/// Create a copy of PayrollState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoadingSlipGaji = null,Object? isLoadingSlipGajiDetail = null,Object? isDownloadingSlipGaji = null,Object? slipGaji = freezed,Object? slipGajiError = freezed,Object? slipGajiDetail = freezed,Object? slipGajiDetailError = freezed,Object? downloadSlipGajiError = freezed,Object? downloadSlipGajiPath = freezed,}) {
  return _then(_PayrollState(
isLoadingSlipGaji: null == isLoadingSlipGaji ? _self.isLoadingSlipGaji : isLoadingSlipGaji // ignore: cast_nullable_to_non_nullable
as bool,isLoadingSlipGajiDetail: null == isLoadingSlipGajiDetail ? _self.isLoadingSlipGajiDetail : isLoadingSlipGajiDetail // ignore: cast_nullable_to_non_nullable
as bool,isDownloadingSlipGaji: null == isDownloadingSlipGaji ? _self.isDownloadingSlipGaji : isDownloadingSlipGaji // ignore: cast_nullable_to_non_nullable
as bool,slipGaji: freezed == slipGaji ? _self._slipGaji : slipGaji // ignore: cast_nullable_to_non_nullable
as List<SlipGajiEntity>?,slipGajiError: freezed == slipGajiError ? _self.slipGajiError : slipGajiError // ignore: cast_nullable_to_non_nullable
as String?,slipGajiDetail: freezed == slipGajiDetail ? _self.slipGajiDetail : slipGajiDetail // ignore: cast_nullable_to_non_nullable
as SlipGajiDetailEntity?,slipGajiDetailError: freezed == slipGajiDetailError ? _self.slipGajiDetailError : slipGajiDetailError // ignore: cast_nullable_to_non_nullable
as String?,downloadSlipGajiError: freezed == downloadSlipGajiError ? _self.downloadSlipGajiError : downloadSlipGajiError // ignore: cast_nullable_to_non_nullable
as String?,downloadSlipGajiPath: freezed == downloadSlipGajiPath ? _self.downloadSlipGajiPath : downloadSlipGajiPath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of PayrollState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SlipGajiDetailEntityCopyWith<$Res>? get slipGajiDetail {
    if (_self.slipGajiDetail == null) {
    return null;
  }

  return $SlipGajiDetailEntityCopyWith<$Res>(_self.slipGajiDetail!, (value) {
    return _then(_self.copyWith(slipGajiDetail: value));
  });
}
}

// dart format on
