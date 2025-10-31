// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_company_branches_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetCompanyBranchesResponse {

@JsonKey(name: 'perusahaan') CompanyModel get company;@JsonKey(name: 'branches') List<BranchModel> get branches;
/// Create a copy of GetCompanyBranchesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCompanyBranchesResponseCopyWith<GetCompanyBranchesResponse> get copyWith => _$GetCompanyBranchesResponseCopyWithImpl<GetCompanyBranchesResponse>(this as GetCompanyBranchesResponse, _$identity);

  /// Serializes this GetCompanyBranchesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCompanyBranchesResponse&&(identical(other.company, company) || other.company == company)&&const DeepCollectionEquality().equals(other.branches, branches));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,company,const DeepCollectionEquality().hash(branches));

@override
String toString() {
  return 'GetCompanyBranchesResponse(company: $company, branches: $branches)';
}


}

/// @nodoc
abstract mixin class $GetCompanyBranchesResponseCopyWith<$Res>  {
  factory $GetCompanyBranchesResponseCopyWith(GetCompanyBranchesResponse value, $Res Function(GetCompanyBranchesResponse) _then) = _$GetCompanyBranchesResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'perusahaan') CompanyModel company,@JsonKey(name: 'branches') List<BranchModel> branches
});


$CompanyModelCopyWith<$Res> get company;

}
/// @nodoc
class _$GetCompanyBranchesResponseCopyWithImpl<$Res>
    implements $GetCompanyBranchesResponseCopyWith<$Res> {
  _$GetCompanyBranchesResponseCopyWithImpl(this._self, this._then);

  final GetCompanyBranchesResponse _self;
  final $Res Function(GetCompanyBranchesResponse) _then;

/// Create a copy of GetCompanyBranchesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? company = null,Object? branches = null,}) {
  return _then(_self.copyWith(
company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as CompanyModel,branches: null == branches ? _self.branches : branches // ignore: cast_nullable_to_non_nullable
as List<BranchModel>,
  ));
}
/// Create a copy of GetCompanyBranchesResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyModelCopyWith<$Res> get company {
  
  return $CompanyModelCopyWith<$Res>(_self.company, (value) {
    return _then(_self.copyWith(company: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetCompanyBranchesResponse].
extension GetCompanyBranchesResponsePatterns on GetCompanyBranchesResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetCompanyBranchesResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetCompanyBranchesResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetCompanyBranchesResponse value)  $default,){
final _that = this;
switch (_that) {
case _GetCompanyBranchesResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetCompanyBranchesResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GetCompanyBranchesResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'perusahaan')  CompanyModel company, @JsonKey(name: 'branches')  List<BranchModel> branches)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetCompanyBranchesResponse() when $default != null:
return $default(_that.company,_that.branches);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'perusahaan')  CompanyModel company, @JsonKey(name: 'branches')  List<BranchModel> branches)  $default,) {final _that = this;
switch (_that) {
case _GetCompanyBranchesResponse():
return $default(_that.company,_that.branches);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'perusahaan')  CompanyModel company, @JsonKey(name: 'branches')  List<BranchModel> branches)?  $default,) {final _that = this;
switch (_that) {
case _GetCompanyBranchesResponse() when $default != null:
return $default(_that.company,_that.branches);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetCompanyBranchesResponse implements GetCompanyBranchesResponse {
  const _GetCompanyBranchesResponse({@JsonKey(name: 'perusahaan') required this.company, @JsonKey(name: 'branches') required final  List<BranchModel> branches}): _branches = branches;
  factory _GetCompanyBranchesResponse.fromJson(Map<String, dynamic> json) => _$GetCompanyBranchesResponseFromJson(json);

@override@JsonKey(name: 'perusahaan') final  CompanyModel company;
 final  List<BranchModel> _branches;
@override@JsonKey(name: 'branches') List<BranchModel> get branches {
  if (_branches is EqualUnmodifiableListView) return _branches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_branches);
}


/// Create a copy of GetCompanyBranchesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCompanyBranchesResponseCopyWith<_GetCompanyBranchesResponse> get copyWith => __$GetCompanyBranchesResponseCopyWithImpl<_GetCompanyBranchesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetCompanyBranchesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCompanyBranchesResponse&&(identical(other.company, company) || other.company == company)&&const DeepCollectionEquality().equals(other._branches, _branches));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,company,const DeepCollectionEquality().hash(_branches));

@override
String toString() {
  return 'GetCompanyBranchesResponse(company: $company, branches: $branches)';
}


}

/// @nodoc
abstract mixin class _$GetCompanyBranchesResponseCopyWith<$Res> implements $GetCompanyBranchesResponseCopyWith<$Res> {
  factory _$GetCompanyBranchesResponseCopyWith(_GetCompanyBranchesResponse value, $Res Function(_GetCompanyBranchesResponse) _then) = __$GetCompanyBranchesResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'perusahaan') CompanyModel company,@JsonKey(name: 'branches') List<BranchModel> branches
});


@override $CompanyModelCopyWith<$Res> get company;

}
/// @nodoc
class __$GetCompanyBranchesResponseCopyWithImpl<$Res>
    implements _$GetCompanyBranchesResponseCopyWith<$Res> {
  __$GetCompanyBranchesResponseCopyWithImpl(this._self, this._then);

  final _GetCompanyBranchesResponse _self;
  final $Res Function(_GetCompanyBranchesResponse) _then;

/// Create a copy of GetCompanyBranchesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? company = null,Object? branches = null,}) {
  return _then(_GetCompanyBranchesResponse(
company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as CompanyModel,branches: null == branches ? _self._branches : branches // ignore: cast_nullable_to_non_nullable
as List<BranchModel>,
  ));
}

/// Create a copy of GetCompanyBranchesResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyModelCopyWith<$Res> get company {
  
  return $CompanyModelCopyWith<$Res>(_self.company, (value) {
    return _then(_self.copyWith(company: value));
  });
}
}


/// @nodoc
mixin _$CompanyModel {

@JsonKey(name: 'perusahaan_id') String get companyId;@JsonKey(name: 'nama_perusahaan') String get companyName;
/// Create a copy of CompanyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyModelCopyWith<CompanyModel> get copyWith => _$CompanyModelCopyWithImpl<CompanyModel>(this as CompanyModel, _$identity);

  /// Serializes this CompanyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyModel&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.companyName, companyName) || other.companyName == companyName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,companyId,companyName);

@override
String toString() {
  return 'CompanyModel(companyId: $companyId, companyName: $companyName)';
}


}

/// @nodoc
abstract mixin class $CompanyModelCopyWith<$Res>  {
  factory $CompanyModelCopyWith(CompanyModel value, $Res Function(CompanyModel) _then) = _$CompanyModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'perusahaan_id') String companyId,@JsonKey(name: 'nama_perusahaan') String companyName
});




}
/// @nodoc
class _$CompanyModelCopyWithImpl<$Res>
    implements $CompanyModelCopyWith<$Res> {
  _$CompanyModelCopyWithImpl(this._self, this._then);

  final CompanyModel _self;
  final $Res Function(CompanyModel) _then;

/// Create a copy of CompanyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? companyId = null,Object? companyName = null,}) {
  return _then(_self.copyWith(
companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyModel].
extension CompanyModelPatterns on CompanyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyModel value)  $default,){
final _that = this;
switch (_that) {
case _CompanyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyModel value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'perusahaan_id')  String companyId, @JsonKey(name: 'nama_perusahaan')  String companyName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyModel() when $default != null:
return $default(_that.companyId,_that.companyName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'perusahaan_id')  String companyId, @JsonKey(name: 'nama_perusahaan')  String companyName)  $default,) {final _that = this;
switch (_that) {
case _CompanyModel():
return $default(_that.companyId,_that.companyName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'perusahaan_id')  String companyId, @JsonKey(name: 'nama_perusahaan')  String companyName)?  $default,) {final _that = this;
switch (_that) {
case _CompanyModel() when $default != null:
return $default(_that.companyId,_that.companyName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyModel implements CompanyModel {
  const _CompanyModel({@JsonKey(name: 'perusahaan_id') required this.companyId, @JsonKey(name: 'nama_perusahaan') required this.companyName});
  factory _CompanyModel.fromJson(Map<String, dynamic> json) => _$CompanyModelFromJson(json);

@override@JsonKey(name: 'perusahaan_id') final  String companyId;
@override@JsonKey(name: 'nama_perusahaan') final  String companyName;

/// Create a copy of CompanyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyModelCopyWith<_CompanyModel> get copyWith => __$CompanyModelCopyWithImpl<_CompanyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyModel&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.companyName, companyName) || other.companyName == companyName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,companyId,companyName);

@override
String toString() {
  return 'CompanyModel(companyId: $companyId, companyName: $companyName)';
}


}

/// @nodoc
abstract mixin class _$CompanyModelCopyWith<$Res> implements $CompanyModelCopyWith<$Res> {
  factory _$CompanyModelCopyWith(_CompanyModel value, $Res Function(_CompanyModel) _then) = __$CompanyModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'perusahaan_id') String companyId,@JsonKey(name: 'nama_perusahaan') String companyName
});




}
/// @nodoc
class __$CompanyModelCopyWithImpl<$Res>
    implements _$CompanyModelCopyWith<$Res> {
  __$CompanyModelCopyWithImpl(this._self, this._then);

  final _CompanyModel _self;
  final $Res Function(_CompanyModel) _then;

/// Create a copy of CompanyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? companyId = null,Object? companyName = null,}) {
  return _then(_CompanyModel(
companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$BranchModel {

@JsonKey(name: 'cabang_id') String get branchId;@JsonKey(name: 'nama_cabang') String get branchName;@JsonKey(name: 'alamat') String get address;@JsonKey(name: 'latitude') double get latitude;@JsonKey(name: 'longitude') double get longitude;@JsonKey(name: 'radius_lokasi') int get radiusLocation;
/// Create a copy of BranchModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BranchModelCopyWith<BranchModel> get copyWith => _$BranchModelCopyWithImpl<BranchModel>(this as BranchModel, _$identity);

  /// Serializes this BranchModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchModel&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.branchName, branchName) || other.branchName == branchName)&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.radiusLocation, radiusLocation) || other.radiusLocation == radiusLocation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,branchId,branchName,address,latitude,longitude,radiusLocation);

@override
String toString() {
  return 'BranchModel(branchId: $branchId, branchName: $branchName, address: $address, latitude: $latitude, longitude: $longitude, radiusLocation: $radiusLocation)';
}


}

/// @nodoc
abstract mixin class $BranchModelCopyWith<$Res>  {
  factory $BranchModelCopyWith(BranchModel value, $Res Function(BranchModel) _then) = _$BranchModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cabang_id') String branchId,@JsonKey(name: 'nama_cabang') String branchName,@JsonKey(name: 'alamat') String address,@JsonKey(name: 'latitude') double latitude,@JsonKey(name: 'longitude') double longitude,@JsonKey(name: 'radius_lokasi') int radiusLocation
});




}
/// @nodoc
class _$BranchModelCopyWithImpl<$Res>
    implements $BranchModelCopyWith<$Res> {
  _$BranchModelCopyWithImpl(this._self, this._then);

  final BranchModel _self;
  final $Res Function(BranchModel) _then;

/// Create a copy of BranchModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? branchId = null,Object? branchName = null,Object? address = null,Object? latitude = null,Object? longitude = null,Object? radiusLocation = null,}) {
  return _then(_self.copyWith(
branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String,branchName: null == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,radiusLocation: null == radiusLocation ? _self.radiusLocation : radiusLocation // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [BranchModel].
extension BranchModelPatterns on BranchModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BranchModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BranchModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BranchModel value)  $default,){
final _that = this;
switch (_that) {
case _BranchModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BranchModel value)?  $default,){
final _that = this;
switch (_that) {
case _BranchModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cabang_id')  String branchId, @JsonKey(name: 'nama_cabang')  String branchName, @JsonKey(name: 'alamat')  String address, @JsonKey(name: 'latitude')  double latitude, @JsonKey(name: 'longitude')  double longitude, @JsonKey(name: 'radius_lokasi')  int radiusLocation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BranchModel() when $default != null:
return $default(_that.branchId,_that.branchName,_that.address,_that.latitude,_that.longitude,_that.radiusLocation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cabang_id')  String branchId, @JsonKey(name: 'nama_cabang')  String branchName, @JsonKey(name: 'alamat')  String address, @JsonKey(name: 'latitude')  double latitude, @JsonKey(name: 'longitude')  double longitude, @JsonKey(name: 'radius_lokasi')  int radiusLocation)  $default,) {final _that = this;
switch (_that) {
case _BranchModel():
return $default(_that.branchId,_that.branchName,_that.address,_that.latitude,_that.longitude,_that.radiusLocation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cabang_id')  String branchId, @JsonKey(name: 'nama_cabang')  String branchName, @JsonKey(name: 'alamat')  String address, @JsonKey(name: 'latitude')  double latitude, @JsonKey(name: 'longitude')  double longitude, @JsonKey(name: 'radius_lokasi')  int radiusLocation)?  $default,) {final _that = this;
switch (_that) {
case _BranchModel() when $default != null:
return $default(_that.branchId,_that.branchName,_that.address,_that.latitude,_that.longitude,_that.radiusLocation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BranchModel implements BranchModel {
  const _BranchModel({@JsonKey(name: 'cabang_id') required this.branchId, @JsonKey(name: 'nama_cabang') required this.branchName, @JsonKey(name: 'alamat') required this.address, @JsonKey(name: 'latitude') required this.latitude, @JsonKey(name: 'longitude') required this.longitude, @JsonKey(name: 'radius_lokasi') required this.radiusLocation});
  factory _BranchModel.fromJson(Map<String, dynamic> json) => _$BranchModelFromJson(json);

@override@JsonKey(name: 'cabang_id') final  String branchId;
@override@JsonKey(name: 'nama_cabang') final  String branchName;
@override@JsonKey(name: 'alamat') final  String address;
@override@JsonKey(name: 'latitude') final  double latitude;
@override@JsonKey(name: 'longitude') final  double longitude;
@override@JsonKey(name: 'radius_lokasi') final  int radiusLocation;

/// Create a copy of BranchModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BranchModelCopyWith<_BranchModel> get copyWith => __$BranchModelCopyWithImpl<_BranchModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BranchModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BranchModel&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.branchName, branchName) || other.branchName == branchName)&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.radiusLocation, radiusLocation) || other.radiusLocation == radiusLocation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,branchId,branchName,address,latitude,longitude,radiusLocation);

@override
String toString() {
  return 'BranchModel(branchId: $branchId, branchName: $branchName, address: $address, latitude: $latitude, longitude: $longitude, radiusLocation: $radiusLocation)';
}


}

/// @nodoc
abstract mixin class _$BranchModelCopyWith<$Res> implements $BranchModelCopyWith<$Res> {
  factory _$BranchModelCopyWith(_BranchModel value, $Res Function(_BranchModel) _then) = __$BranchModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cabang_id') String branchId,@JsonKey(name: 'nama_cabang') String branchName,@JsonKey(name: 'alamat') String address,@JsonKey(name: 'latitude') double latitude,@JsonKey(name: 'longitude') double longitude,@JsonKey(name: 'radius_lokasi') int radiusLocation
});




}
/// @nodoc
class __$BranchModelCopyWithImpl<$Res>
    implements _$BranchModelCopyWith<$Res> {
  __$BranchModelCopyWithImpl(this._self, this._then);

  final _BranchModel _self;
  final $Res Function(_BranchModel) _then;

/// Create a copy of BranchModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? branchId = null,Object? branchName = null,Object? address = null,Object? latitude = null,Object? longitude = null,Object? radiusLocation = null,}) {
  return _then(_BranchModel(
branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String,branchName: null == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,radiusLocation: null == radiusLocation ? _self.radiusLocation : radiusLocation // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
