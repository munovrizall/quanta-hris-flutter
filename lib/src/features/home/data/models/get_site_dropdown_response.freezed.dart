// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_site_dropdown_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetSiteDropdownResponse {

 List<SiteDropdownItemModel> get sites;
/// Create a copy of GetSiteDropdownResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetSiteDropdownResponseCopyWith<GetSiteDropdownResponse> get copyWith => _$GetSiteDropdownResponseCopyWithImpl<GetSiteDropdownResponse>(this as GetSiteDropdownResponse, _$identity);

  /// Serializes this GetSiteDropdownResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetSiteDropdownResponse&&const DeepCollectionEquality().equals(other.sites, sites));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(sites));

@override
String toString() {
  return 'GetSiteDropdownResponse(sites: $sites)';
}


}

/// @nodoc
abstract mixin class $GetSiteDropdownResponseCopyWith<$Res>  {
  factory $GetSiteDropdownResponseCopyWith(GetSiteDropdownResponse value, $Res Function(GetSiteDropdownResponse) _then) = _$GetSiteDropdownResponseCopyWithImpl;
@useResult
$Res call({
 List<SiteDropdownItemModel> sites
});




}
/// @nodoc
class _$GetSiteDropdownResponseCopyWithImpl<$Res>
    implements $GetSiteDropdownResponseCopyWith<$Res> {
  _$GetSiteDropdownResponseCopyWithImpl(this._self, this._then);

  final GetSiteDropdownResponse _self;
  final $Res Function(GetSiteDropdownResponse) _then;

/// Create a copy of GetSiteDropdownResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sites = null,}) {
  return _then(_self.copyWith(
sites: null == sites ? _self.sites : sites // ignore: cast_nullable_to_non_nullable
as List<SiteDropdownItemModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [GetSiteDropdownResponse].
extension GetSiteDropdownResponsePatterns on GetSiteDropdownResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetSiteDropdownResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetSiteDropdownResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetSiteDropdownResponse value)  $default,){
final _that = this;
switch (_that) {
case _GetSiteDropdownResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetSiteDropdownResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GetSiteDropdownResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SiteDropdownItemModel> sites)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetSiteDropdownResponse() when $default != null:
return $default(_that.sites);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SiteDropdownItemModel> sites)  $default,) {final _that = this;
switch (_that) {
case _GetSiteDropdownResponse():
return $default(_that.sites);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SiteDropdownItemModel> sites)?  $default,) {final _that = this;
switch (_that) {
case _GetSiteDropdownResponse() when $default != null:
return $default(_that.sites);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetSiteDropdownResponse implements GetSiteDropdownResponse {
  const _GetSiteDropdownResponse({required final  List<SiteDropdownItemModel> sites}): _sites = sites;
  factory _GetSiteDropdownResponse.fromJson(Map<String, dynamic> json) => _$GetSiteDropdownResponseFromJson(json);

 final  List<SiteDropdownItemModel> _sites;
@override List<SiteDropdownItemModel> get sites {
  if (_sites is EqualUnmodifiableListView) return _sites;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sites);
}


/// Create a copy of GetSiteDropdownResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetSiteDropdownResponseCopyWith<_GetSiteDropdownResponse> get copyWith => __$GetSiteDropdownResponseCopyWithImpl<_GetSiteDropdownResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetSiteDropdownResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSiteDropdownResponse&&const DeepCollectionEquality().equals(other._sites, _sites));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sites));

@override
String toString() {
  return 'GetSiteDropdownResponse(sites: $sites)';
}


}

/// @nodoc
abstract mixin class _$GetSiteDropdownResponseCopyWith<$Res> implements $GetSiteDropdownResponseCopyWith<$Res> {
  factory _$GetSiteDropdownResponseCopyWith(_GetSiteDropdownResponse value, $Res Function(_GetSiteDropdownResponse) _then) = __$GetSiteDropdownResponseCopyWithImpl;
@override @useResult
$Res call({
 List<SiteDropdownItemModel> sites
});




}
/// @nodoc
class __$GetSiteDropdownResponseCopyWithImpl<$Res>
    implements _$GetSiteDropdownResponseCopyWith<$Res> {
  __$GetSiteDropdownResponseCopyWithImpl(this._self, this._then);

  final _GetSiteDropdownResponse _self;
  final $Res Function(_GetSiteDropdownResponse) _then;

/// Create a copy of GetSiteDropdownResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sites = null,}) {
  return _then(_GetSiteDropdownResponse(
sites: null == sites ? _self._sites : sites // ignore: cast_nullable_to_non_nullable
as List<SiteDropdownItemModel>,
  ));
}


}


/// @nodoc
mixin _$SiteDropdownItemModel {

@JsonKey(name: 'site_id') int get siteId;@JsonKey(name: 'site_name') String get siteName;@JsonKey(name: 'client_id') int get clientId;@JsonKey(name: 'placement_count') int get placementCount;
/// Create a copy of SiteDropdownItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SiteDropdownItemModelCopyWith<SiteDropdownItemModel> get copyWith => _$SiteDropdownItemModelCopyWithImpl<SiteDropdownItemModel>(this as SiteDropdownItemModel, _$identity);

  /// Serializes this SiteDropdownItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SiteDropdownItemModel&&(identical(other.siteId, siteId) || other.siteId == siteId)&&(identical(other.siteName, siteName) || other.siteName == siteName)&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.placementCount, placementCount) || other.placementCount == placementCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,siteId,siteName,clientId,placementCount);

@override
String toString() {
  return 'SiteDropdownItemModel(siteId: $siteId, siteName: $siteName, clientId: $clientId, placementCount: $placementCount)';
}


}

/// @nodoc
abstract mixin class $SiteDropdownItemModelCopyWith<$Res>  {
  factory $SiteDropdownItemModelCopyWith(SiteDropdownItemModel value, $Res Function(SiteDropdownItemModel) _then) = _$SiteDropdownItemModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'site_id') int siteId,@JsonKey(name: 'site_name') String siteName,@JsonKey(name: 'client_id') int clientId,@JsonKey(name: 'placement_count') int placementCount
});




}
/// @nodoc
class _$SiteDropdownItemModelCopyWithImpl<$Res>
    implements $SiteDropdownItemModelCopyWith<$Res> {
  _$SiteDropdownItemModelCopyWithImpl(this._self, this._then);

  final SiteDropdownItemModel _self;
  final $Res Function(SiteDropdownItemModel) _then;

/// Create a copy of SiteDropdownItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? siteId = null,Object? siteName = null,Object? clientId = null,Object? placementCount = null,}) {
  return _then(_self.copyWith(
siteId: null == siteId ? _self.siteId : siteId // ignore: cast_nullable_to_non_nullable
as int,siteName: null == siteName ? _self.siteName : siteName // ignore: cast_nullable_to_non_nullable
as String,clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as int,placementCount: null == placementCount ? _self.placementCount : placementCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SiteDropdownItemModel].
extension SiteDropdownItemModelPatterns on SiteDropdownItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SiteDropdownItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SiteDropdownItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SiteDropdownItemModel value)  $default,){
final _that = this;
switch (_that) {
case _SiteDropdownItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SiteDropdownItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _SiteDropdownItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'site_id')  int siteId, @JsonKey(name: 'site_name')  String siteName, @JsonKey(name: 'client_id')  int clientId, @JsonKey(name: 'placement_count')  int placementCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SiteDropdownItemModel() when $default != null:
return $default(_that.siteId,_that.siteName,_that.clientId,_that.placementCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'site_id')  int siteId, @JsonKey(name: 'site_name')  String siteName, @JsonKey(name: 'client_id')  int clientId, @JsonKey(name: 'placement_count')  int placementCount)  $default,) {final _that = this;
switch (_that) {
case _SiteDropdownItemModel():
return $default(_that.siteId,_that.siteName,_that.clientId,_that.placementCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'site_id')  int siteId, @JsonKey(name: 'site_name')  String siteName, @JsonKey(name: 'client_id')  int clientId, @JsonKey(name: 'placement_count')  int placementCount)?  $default,) {final _that = this;
switch (_that) {
case _SiteDropdownItemModel() when $default != null:
return $default(_that.siteId,_that.siteName,_that.clientId,_that.placementCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SiteDropdownItemModel implements SiteDropdownItemModel {
  const _SiteDropdownItemModel({@JsonKey(name: 'site_id') required this.siteId, @JsonKey(name: 'site_name') required this.siteName, @JsonKey(name: 'client_id') required this.clientId, @JsonKey(name: 'placement_count') required this.placementCount});
  factory _SiteDropdownItemModel.fromJson(Map<String, dynamic> json) => _$SiteDropdownItemModelFromJson(json);

@override@JsonKey(name: 'site_id') final  int siteId;
@override@JsonKey(name: 'site_name') final  String siteName;
@override@JsonKey(name: 'client_id') final  int clientId;
@override@JsonKey(name: 'placement_count') final  int placementCount;

/// Create a copy of SiteDropdownItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SiteDropdownItemModelCopyWith<_SiteDropdownItemModel> get copyWith => __$SiteDropdownItemModelCopyWithImpl<_SiteDropdownItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SiteDropdownItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SiteDropdownItemModel&&(identical(other.siteId, siteId) || other.siteId == siteId)&&(identical(other.siteName, siteName) || other.siteName == siteName)&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.placementCount, placementCount) || other.placementCount == placementCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,siteId,siteName,clientId,placementCount);

@override
String toString() {
  return 'SiteDropdownItemModel(siteId: $siteId, siteName: $siteName, clientId: $clientId, placementCount: $placementCount)';
}


}

/// @nodoc
abstract mixin class _$SiteDropdownItemModelCopyWith<$Res> implements $SiteDropdownItemModelCopyWith<$Res> {
  factory _$SiteDropdownItemModelCopyWith(_SiteDropdownItemModel value, $Res Function(_SiteDropdownItemModel) _then) = __$SiteDropdownItemModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'site_id') int siteId,@JsonKey(name: 'site_name') String siteName,@JsonKey(name: 'client_id') int clientId,@JsonKey(name: 'placement_count') int placementCount
});




}
/// @nodoc
class __$SiteDropdownItemModelCopyWithImpl<$Res>
    implements _$SiteDropdownItemModelCopyWith<$Res> {
  __$SiteDropdownItemModelCopyWithImpl(this._self, this._then);

  final _SiteDropdownItemModel _self;
  final $Res Function(_SiteDropdownItemModel) _then;

/// Create a copy of SiteDropdownItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? siteId = null,Object? siteName = null,Object? clientId = null,Object? placementCount = null,}) {
  return _then(_SiteDropdownItemModel(
siteId: null == siteId ? _self.siteId : siteId // ignore: cast_nullable_to_non_nullable
as int,siteName: null == siteName ? _self.siteName : siteName // ignore: cast_nullable_to_non_nullable
as String,clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as int,placementCount: null == placementCount ? _self.placementCount : placementCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
