// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_today_leaves_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetTodayLeavesResponse {

 int get total;@JsonKey(name: 'data') List<LeavePermitModel> get leavesData;
/// Create a copy of GetTodayLeavesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetTodayLeavesResponseCopyWith<GetTodayLeavesResponse> get copyWith => _$GetTodayLeavesResponseCopyWithImpl<GetTodayLeavesResponse>(this as GetTodayLeavesResponse, _$identity);

  /// Serializes this GetTodayLeavesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTodayLeavesResponse&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other.leavesData, leavesData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,const DeepCollectionEquality().hash(leavesData));

@override
String toString() {
  return 'GetTodayLeavesResponse(total: $total, leavesData: $leavesData)';
}


}

/// @nodoc
abstract mixin class $GetTodayLeavesResponseCopyWith<$Res>  {
  factory $GetTodayLeavesResponseCopyWith(GetTodayLeavesResponse value, $Res Function(GetTodayLeavesResponse) _then) = _$GetTodayLeavesResponseCopyWithImpl;
@useResult
$Res call({
 int total,@JsonKey(name: 'data') List<LeavePermitModel> leavesData
});




}
/// @nodoc
class _$GetTodayLeavesResponseCopyWithImpl<$Res>
    implements $GetTodayLeavesResponseCopyWith<$Res> {
  _$GetTodayLeavesResponseCopyWithImpl(this._self, this._then);

  final GetTodayLeavesResponse _self;
  final $Res Function(GetTodayLeavesResponse) _then;

/// Create a copy of GetTodayLeavesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? leavesData = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,leavesData: null == leavesData ? _self.leavesData : leavesData // ignore: cast_nullable_to_non_nullable
as List<LeavePermitModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [GetTodayLeavesResponse].
extension GetTodayLeavesResponsePatterns on GetTodayLeavesResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetTodayLeavesResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetTodayLeavesResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetTodayLeavesResponse value)  $default,){
final _that = this;
switch (_that) {
case _GetTodayLeavesResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetTodayLeavesResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GetTodayLeavesResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total, @JsonKey(name: 'data')  List<LeavePermitModel> leavesData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetTodayLeavesResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total, @JsonKey(name: 'data')  List<LeavePermitModel> leavesData)  $default,) {final _that = this;
switch (_that) {
case _GetTodayLeavesResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total, @JsonKey(name: 'data')  List<LeavePermitModel> leavesData)?  $default,) {final _that = this;
switch (_that) {
case _GetTodayLeavesResponse() when $default != null:
return $default(_that.total,_that.leavesData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetTodayLeavesResponse implements GetTodayLeavesResponse {
  const _GetTodayLeavesResponse({required this.total, @JsonKey(name: 'data') required final  List<LeavePermitModel> leavesData}): _leavesData = leavesData;
  factory _GetTodayLeavesResponse.fromJson(Map<String, dynamic> json) => _$GetTodayLeavesResponseFromJson(json);

@override final  int total;
 final  List<LeavePermitModel> _leavesData;
@override@JsonKey(name: 'data') List<LeavePermitModel> get leavesData {
  if (_leavesData is EqualUnmodifiableListView) return _leavesData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_leavesData);
}


/// Create a copy of GetTodayLeavesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetTodayLeavesResponseCopyWith<_GetTodayLeavesResponse> get copyWith => __$GetTodayLeavesResponseCopyWithImpl<_GetTodayLeavesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetTodayLeavesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTodayLeavesResponse&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other._leavesData, _leavesData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,const DeepCollectionEquality().hash(_leavesData));

@override
String toString() {
  return 'GetTodayLeavesResponse(total: $total, leavesData: $leavesData)';
}


}

/// @nodoc
abstract mixin class _$GetTodayLeavesResponseCopyWith<$Res> implements $GetTodayLeavesResponseCopyWith<$Res> {
  factory _$GetTodayLeavesResponseCopyWith(_GetTodayLeavesResponse value, $Res Function(_GetTodayLeavesResponse) _then) = __$GetTodayLeavesResponseCopyWithImpl;
@override @useResult
$Res call({
 int total,@JsonKey(name: 'data') List<LeavePermitModel> leavesData
});




}
/// @nodoc
class __$GetTodayLeavesResponseCopyWithImpl<$Res>
    implements _$GetTodayLeavesResponseCopyWith<$Res> {
  __$GetTodayLeavesResponseCopyWithImpl(this._self, this._then);

  final _GetTodayLeavesResponse _self;
  final $Res Function(_GetTodayLeavesResponse) _then;

/// Create a copy of GetTodayLeavesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? leavesData = null,}) {
  return _then(_GetTodayLeavesResponse(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,leavesData: null == leavesData ? _self._leavesData : leavesData // ignore: cast_nullable_to_non_nullable
as List<LeavePermitModel>,
  ));
}


}


/// @nodoc
mixin _$LeavePermitModel {

 String get nama; String get tipe; String get alasan; String get jenis;@JsonKey(name: 'tanggal_mulai') String get tanggalMulai;@JsonKey(name: 'tanggal_selesai') String get tanggalSelesai;
/// Create a copy of LeavePermitModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeavePermitModelCopyWith<LeavePermitModel> get copyWith => _$LeavePermitModelCopyWithImpl<LeavePermitModel>(this as LeavePermitModel, _$identity);

  /// Serializes this LeavePermitModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeavePermitModel&&(identical(other.nama, nama) || other.nama == nama)&&(identical(other.tipe, tipe) || other.tipe == tipe)&&(identical(other.alasan, alasan) || other.alasan == alasan)&&(identical(other.jenis, jenis) || other.jenis == jenis)&&(identical(other.tanggalMulai, tanggalMulai) || other.tanggalMulai == tanggalMulai)&&(identical(other.tanggalSelesai, tanggalSelesai) || other.tanggalSelesai == tanggalSelesai));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nama,tipe,alasan,jenis,tanggalMulai,tanggalSelesai);

@override
String toString() {
  return 'LeavePermitModel(nama: $nama, tipe: $tipe, alasan: $alasan, jenis: $jenis, tanggalMulai: $tanggalMulai, tanggalSelesai: $tanggalSelesai)';
}


}

/// @nodoc
abstract mixin class $LeavePermitModelCopyWith<$Res>  {
  factory $LeavePermitModelCopyWith(LeavePermitModel value, $Res Function(LeavePermitModel) _then) = _$LeavePermitModelCopyWithImpl;
@useResult
$Res call({
 String nama, String tipe, String alasan, String jenis,@JsonKey(name: 'tanggal_mulai') String tanggalMulai,@JsonKey(name: 'tanggal_selesai') String tanggalSelesai
});




}
/// @nodoc
class _$LeavePermitModelCopyWithImpl<$Res>
    implements $LeavePermitModelCopyWith<$Res> {
  _$LeavePermitModelCopyWithImpl(this._self, this._then);

  final LeavePermitModel _self;
  final $Res Function(LeavePermitModel) _then;

/// Create a copy of LeavePermitModel
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


/// Adds pattern-matching-related methods to [LeavePermitModel].
extension LeavePermitModelPatterns on LeavePermitModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeavePermitModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeavePermitModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeavePermitModel value)  $default,){
final _that = this;
switch (_that) {
case _LeavePermitModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeavePermitModel value)?  $default,){
final _that = this;
switch (_that) {
case _LeavePermitModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String nama,  String tipe,  String alasan,  String jenis, @JsonKey(name: 'tanggal_mulai')  String tanggalMulai, @JsonKey(name: 'tanggal_selesai')  String tanggalSelesai)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeavePermitModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String nama,  String tipe,  String alasan,  String jenis, @JsonKey(name: 'tanggal_mulai')  String tanggalMulai, @JsonKey(name: 'tanggal_selesai')  String tanggalSelesai)  $default,) {final _that = this;
switch (_that) {
case _LeavePermitModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String nama,  String tipe,  String alasan,  String jenis, @JsonKey(name: 'tanggal_mulai')  String tanggalMulai, @JsonKey(name: 'tanggal_selesai')  String tanggalSelesai)?  $default,) {final _that = this;
switch (_that) {
case _LeavePermitModel() when $default != null:
return $default(_that.nama,_that.tipe,_that.alasan,_that.jenis,_that.tanggalMulai,_that.tanggalSelesai);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LeavePermitModel implements LeavePermitModel {
  const _LeavePermitModel({required this.nama, required this.tipe, required this.alasan, required this.jenis, @JsonKey(name: 'tanggal_mulai') required this.tanggalMulai, @JsonKey(name: 'tanggal_selesai') required this.tanggalSelesai});
  factory _LeavePermitModel.fromJson(Map<String, dynamic> json) => _$LeavePermitModelFromJson(json);

@override final  String nama;
@override final  String tipe;
@override final  String alasan;
@override final  String jenis;
@override@JsonKey(name: 'tanggal_mulai') final  String tanggalMulai;
@override@JsonKey(name: 'tanggal_selesai') final  String tanggalSelesai;

/// Create a copy of LeavePermitModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeavePermitModelCopyWith<_LeavePermitModel> get copyWith => __$LeavePermitModelCopyWithImpl<_LeavePermitModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LeavePermitModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeavePermitModel&&(identical(other.nama, nama) || other.nama == nama)&&(identical(other.tipe, tipe) || other.tipe == tipe)&&(identical(other.alasan, alasan) || other.alasan == alasan)&&(identical(other.jenis, jenis) || other.jenis == jenis)&&(identical(other.tanggalMulai, tanggalMulai) || other.tanggalMulai == tanggalMulai)&&(identical(other.tanggalSelesai, tanggalSelesai) || other.tanggalSelesai == tanggalSelesai));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nama,tipe,alasan,jenis,tanggalMulai,tanggalSelesai);

@override
String toString() {
  return 'LeavePermitModel(nama: $nama, tipe: $tipe, alasan: $alasan, jenis: $jenis, tanggalMulai: $tanggalMulai, tanggalSelesai: $tanggalSelesai)';
}


}

/// @nodoc
abstract mixin class _$LeavePermitModelCopyWith<$Res> implements $LeavePermitModelCopyWith<$Res> {
  factory _$LeavePermitModelCopyWith(_LeavePermitModel value, $Res Function(_LeavePermitModel) _then) = __$LeavePermitModelCopyWithImpl;
@override @useResult
$Res call({
 String nama, String tipe, String alasan, String jenis,@JsonKey(name: 'tanggal_mulai') String tanggalMulai,@JsonKey(name: 'tanggal_selesai') String tanggalSelesai
});




}
/// @nodoc
class __$LeavePermitModelCopyWithImpl<$Res>
    implements _$LeavePermitModelCopyWith<$Res> {
  __$LeavePermitModelCopyWithImpl(this._self, this._then);

  final _LeavePermitModel _self;
  final $Res Function(_LeavePermitModel) _then;

/// Create a copy of LeavePermitModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nama = null,Object? tipe = null,Object? alasan = null,Object? jenis = null,Object? tanggalMulai = null,Object? tanggalSelesai = null,}) {
  return _then(_LeavePermitModel(
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
