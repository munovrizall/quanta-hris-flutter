// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_placement_acsm_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetPlacementAcsmResponse {

@JsonKey(name: 'site_id') int get siteId;@JsonKey(name: 'site_name') String get siteName; List<PlacementRoomModel> get rooms;
/// Create a copy of GetPlacementAcsmResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetPlacementAcsmResponseCopyWith<GetPlacementAcsmResponse> get copyWith => _$GetPlacementAcsmResponseCopyWithImpl<GetPlacementAcsmResponse>(this as GetPlacementAcsmResponse, _$identity);

  /// Serializes this GetPlacementAcsmResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPlacementAcsmResponse&&(identical(other.siteId, siteId) || other.siteId == siteId)&&(identical(other.siteName, siteName) || other.siteName == siteName)&&const DeepCollectionEquality().equals(other.rooms, rooms));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,siteId,siteName,const DeepCollectionEquality().hash(rooms));

@override
String toString() {
  return 'GetPlacementAcsmResponse(siteId: $siteId, siteName: $siteName, rooms: $rooms)';
}


}

/// @nodoc
abstract mixin class $GetPlacementAcsmResponseCopyWith<$Res>  {
  factory $GetPlacementAcsmResponseCopyWith(GetPlacementAcsmResponse value, $Res Function(GetPlacementAcsmResponse) _then) = _$GetPlacementAcsmResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'site_id') int siteId,@JsonKey(name: 'site_name') String siteName, List<PlacementRoomModel> rooms
});




}
/// @nodoc
class _$GetPlacementAcsmResponseCopyWithImpl<$Res>
    implements $GetPlacementAcsmResponseCopyWith<$Res> {
  _$GetPlacementAcsmResponseCopyWithImpl(this._self, this._then);

  final GetPlacementAcsmResponse _self;
  final $Res Function(GetPlacementAcsmResponse) _then;

/// Create a copy of GetPlacementAcsmResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? siteId = null,Object? siteName = null,Object? rooms = null,}) {
  return _then(_self.copyWith(
siteId: null == siteId ? _self.siteId : siteId // ignore: cast_nullable_to_non_nullable
as int,siteName: null == siteName ? _self.siteName : siteName // ignore: cast_nullable_to_non_nullable
as String,rooms: null == rooms ? _self.rooms : rooms // ignore: cast_nullable_to_non_nullable
as List<PlacementRoomModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [GetPlacementAcsmResponse].
extension GetPlacementAcsmResponsePatterns on GetPlacementAcsmResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetPlacementAcsmResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetPlacementAcsmResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetPlacementAcsmResponse value)  $default,){
final _that = this;
switch (_that) {
case _GetPlacementAcsmResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetPlacementAcsmResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GetPlacementAcsmResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'site_id')  int siteId, @JsonKey(name: 'site_name')  String siteName,  List<PlacementRoomModel> rooms)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetPlacementAcsmResponse() when $default != null:
return $default(_that.siteId,_that.siteName,_that.rooms);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'site_id')  int siteId, @JsonKey(name: 'site_name')  String siteName,  List<PlacementRoomModel> rooms)  $default,) {final _that = this;
switch (_that) {
case _GetPlacementAcsmResponse():
return $default(_that.siteId,_that.siteName,_that.rooms);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'site_id')  int siteId, @JsonKey(name: 'site_name')  String siteName,  List<PlacementRoomModel> rooms)?  $default,) {final _that = this;
switch (_that) {
case _GetPlacementAcsmResponse() when $default != null:
return $default(_that.siteId,_that.siteName,_that.rooms);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetPlacementAcsmResponse implements GetPlacementAcsmResponse {
  const _GetPlacementAcsmResponse({@JsonKey(name: 'site_id') required this.siteId, @JsonKey(name: 'site_name') required this.siteName, required final  List<PlacementRoomModel> rooms}): _rooms = rooms;
  factory _GetPlacementAcsmResponse.fromJson(Map<String, dynamic> json) => _$GetPlacementAcsmResponseFromJson(json);

@override@JsonKey(name: 'site_id') final  int siteId;
@override@JsonKey(name: 'site_name') final  String siteName;
 final  List<PlacementRoomModel> _rooms;
@override List<PlacementRoomModel> get rooms {
  if (_rooms is EqualUnmodifiableListView) return _rooms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rooms);
}


/// Create a copy of GetPlacementAcsmResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetPlacementAcsmResponseCopyWith<_GetPlacementAcsmResponse> get copyWith => __$GetPlacementAcsmResponseCopyWithImpl<_GetPlacementAcsmResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetPlacementAcsmResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPlacementAcsmResponse&&(identical(other.siteId, siteId) || other.siteId == siteId)&&(identical(other.siteName, siteName) || other.siteName == siteName)&&const DeepCollectionEquality().equals(other._rooms, _rooms));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,siteId,siteName,const DeepCollectionEquality().hash(_rooms));

@override
String toString() {
  return 'GetPlacementAcsmResponse(siteId: $siteId, siteName: $siteName, rooms: $rooms)';
}


}

/// @nodoc
abstract mixin class _$GetPlacementAcsmResponseCopyWith<$Res> implements $GetPlacementAcsmResponseCopyWith<$Res> {
  factory _$GetPlacementAcsmResponseCopyWith(_GetPlacementAcsmResponse value, $Res Function(_GetPlacementAcsmResponse) _then) = __$GetPlacementAcsmResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'site_id') int siteId,@JsonKey(name: 'site_name') String siteName, List<PlacementRoomModel> rooms
});




}
/// @nodoc
class __$GetPlacementAcsmResponseCopyWithImpl<$Res>
    implements _$GetPlacementAcsmResponseCopyWith<$Res> {
  __$GetPlacementAcsmResponseCopyWithImpl(this._self, this._then);

  final _GetPlacementAcsmResponse _self;
  final $Res Function(_GetPlacementAcsmResponse) _then;

/// Create a copy of GetPlacementAcsmResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? siteId = null,Object? siteName = null,Object? rooms = null,}) {
  return _then(_GetPlacementAcsmResponse(
siteId: null == siteId ? _self.siteId : siteId // ignore: cast_nullable_to_non_nullable
as int,siteName: null == siteName ? _self.siteName : siteName // ignore: cast_nullable_to_non_nullable
as String,rooms: null == rooms ? _self._rooms : rooms // ignore: cast_nullable_to_non_nullable
as List<PlacementRoomModel>,
  ));
}


}


/// @nodoc
mixin _$PlacementRoomModel {

@JsonKey(name: 'room_id') int get roomId;@JsonKey(name: 'room_name') String get roomName; List<PlacementItemModel> get placements;
/// Create a copy of PlacementRoomModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlacementRoomModelCopyWith<PlacementRoomModel> get copyWith => _$PlacementRoomModelCopyWithImpl<PlacementRoomModel>(this as PlacementRoomModel, _$identity);

  /// Serializes this PlacementRoomModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlacementRoomModel&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.roomName, roomName) || other.roomName == roomName)&&const DeepCollectionEquality().equals(other.placements, placements));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,roomId,roomName,const DeepCollectionEquality().hash(placements));

@override
String toString() {
  return 'PlacementRoomModel(roomId: $roomId, roomName: $roomName, placements: $placements)';
}


}

/// @nodoc
abstract mixin class $PlacementRoomModelCopyWith<$Res>  {
  factory $PlacementRoomModelCopyWith(PlacementRoomModel value, $Res Function(PlacementRoomModel) _then) = _$PlacementRoomModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'room_id') int roomId,@JsonKey(name: 'room_name') String roomName, List<PlacementItemModel> placements
});




}
/// @nodoc
class _$PlacementRoomModelCopyWithImpl<$Res>
    implements $PlacementRoomModelCopyWith<$Res> {
  _$PlacementRoomModelCopyWithImpl(this._self, this._then);

  final PlacementRoomModel _self;
  final $Res Function(PlacementRoomModel) _then;

/// Create a copy of PlacementRoomModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roomId = null,Object? roomName = null,Object? placements = null,}) {
  return _then(_self.copyWith(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,roomName: null == roomName ? _self.roomName : roomName // ignore: cast_nullable_to_non_nullable
as String,placements: null == placements ? _self.placements : placements // ignore: cast_nullable_to_non_nullable
as List<PlacementItemModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [PlacementRoomModel].
extension PlacementRoomModelPatterns on PlacementRoomModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlacementRoomModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlacementRoomModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlacementRoomModel value)  $default,){
final _that = this;
switch (_that) {
case _PlacementRoomModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlacementRoomModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlacementRoomModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'room_id')  int roomId, @JsonKey(name: 'room_name')  String roomName,  List<PlacementItemModel> placements)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlacementRoomModel() when $default != null:
return $default(_that.roomId,_that.roomName,_that.placements);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'room_id')  int roomId, @JsonKey(name: 'room_name')  String roomName,  List<PlacementItemModel> placements)  $default,) {final _that = this;
switch (_that) {
case _PlacementRoomModel():
return $default(_that.roomId,_that.roomName,_that.placements);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'room_id')  int roomId, @JsonKey(name: 'room_name')  String roomName,  List<PlacementItemModel> placements)?  $default,) {final _that = this;
switch (_that) {
case _PlacementRoomModel() when $default != null:
return $default(_that.roomId,_that.roomName,_that.placements);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlacementRoomModel implements PlacementRoomModel {
  const _PlacementRoomModel({@JsonKey(name: 'room_id') required this.roomId, @JsonKey(name: 'room_name') required this.roomName, required final  List<PlacementItemModel> placements}): _placements = placements;
  factory _PlacementRoomModel.fromJson(Map<String, dynamic> json) => _$PlacementRoomModelFromJson(json);

@override@JsonKey(name: 'room_id') final  int roomId;
@override@JsonKey(name: 'room_name') final  String roomName;
 final  List<PlacementItemModel> _placements;
@override List<PlacementItemModel> get placements {
  if (_placements is EqualUnmodifiableListView) return _placements;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_placements);
}


/// Create a copy of PlacementRoomModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlacementRoomModelCopyWith<_PlacementRoomModel> get copyWith => __$PlacementRoomModelCopyWithImpl<_PlacementRoomModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlacementRoomModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlacementRoomModel&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.roomName, roomName) || other.roomName == roomName)&&const DeepCollectionEquality().equals(other._placements, _placements));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,roomId,roomName,const DeepCollectionEquality().hash(_placements));

@override
String toString() {
  return 'PlacementRoomModel(roomId: $roomId, roomName: $roomName, placements: $placements)';
}


}

/// @nodoc
abstract mixin class _$PlacementRoomModelCopyWith<$Res> implements $PlacementRoomModelCopyWith<$Res> {
  factory _$PlacementRoomModelCopyWith(_PlacementRoomModel value, $Res Function(_PlacementRoomModel) _then) = __$PlacementRoomModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'room_id') int roomId,@JsonKey(name: 'room_name') String roomName, List<PlacementItemModel> placements
});




}
/// @nodoc
class __$PlacementRoomModelCopyWithImpl<$Res>
    implements _$PlacementRoomModelCopyWith<$Res> {
  __$PlacementRoomModelCopyWithImpl(this._self, this._then);

  final _PlacementRoomModel _self;
  final $Res Function(_PlacementRoomModel) _then;

/// Create a copy of PlacementRoomModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roomId = null,Object? roomName = null,Object? placements = null,}) {
  return _then(_PlacementRoomModel(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,roomName: null == roomName ? _self.roomName : roomName // ignore: cast_nullable_to_non_nullable
as String,placements: null == placements ? _self._placements : placements // ignore: cast_nullable_to_non_nullable
as List<PlacementItemModel>,
  ));
}


}


/// @nodoc
mixin _$PlacementItemModel {

@JsonKey(name: 'placement_id') int get placementId; PlacementDeviceModel get device; PlacementAcModel get ac;
/// Create a copy of PlacementItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlacementItemModelCopyWith<PlacementItemModel> get copyWith => _$PlacementItemModelCopyWithImpl<PlacementItemModel>(this as PlacementItemModel, _$identity);

  /// Serializes this PlacementItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlacementItemModel&&(identical(other.placementId, placementId) || other.placementId == placementId)&&(identical(other.device, device) || other.device == device)&&(identical(other.ac, ac) || other.ac == ac));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,placementId,device,ac);

@override
String toString() {
  return 'PlacementItemModel(placementId: $placementId, device: $device, ac: $ac)';
}


}

/// @nodoc
abstract mixin class $PlacementItemModelCopyWith<$Res>  {
  factory $PlacementItemModelCopyWith(PlacementItemModel value, $Res Function(PlacementItemModel) _then) = _$PlacementItemModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'placement_id') int placementId, PlacementDeviceModel device, PlacementAcModel ac
});


$PlacementDeviceModelCopyWith<$Res> get device;$PlacementAcModelCopyWith<$Res> get ac;

}
/// @nodoc
class _$PlacementItemModelCopyWithImpl<$Res>
    implements $PlacementItemModelCopyWith<$Res> {
  _$PlacementItemModelCopyWithImpl(this._self, this._then);

  final PlacementItemModel _self;
  final $Res Function(PlacementItemModel) _then;

/// Create a copy of PlacementItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? placementId = null,Object? device = null,Object? ac = null,}) {
  return _then(_self.copyWith(
placementId: null == placementId ? _self.placementId : placementId // ignore: cast_nullable_to_non_nullable
as int,device: null == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as PlacementDeviceModel,ac: null == ac ? _self.ac : ac // ignore: cast_nullable_to_non_nullable
as PlacementAcModel,
  ));
}
/// Create a copy of PlacementItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlacementDeviceModelCopyWith<$Res> get device {
  
  return $PlacementDeviceModelCopyWith<$Res>(_self.device, (value) {
    return _then(_self.copyWith(device: value));
  });
}/// Create a copy of PlacementItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlacementAcModelCopyWith<$Res> get ac {
  
  return $PlacementAcModelCopyWith<$Res>(_self.ac, (value) {
    return _then(_self.copyWith(ac: value));
  });
}
}


/// Adds pattern-matching-related methods to [PlacementItemModel].
extension PlacementItemModelPatterns on PlacementItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlacementItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlacementItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlacementItemModel value)  $default,){
final _that = this;
switch (_that) {
case _PlacementItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlacementItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlacementItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'placement_id')  int placementId,  PlacementDeviceModel device,  PlacementAcModel ac)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlacementItemModel() when $default != null:
return $default(_that.placementId,_that.device,_that.ac);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'placement_id')  int placementId,  PlacementDeviceModel device,  PlacementAcModel ac)  $default,) {final _that = this;
switch (_that) {
case _PlacementItemModel():
return $default(_that.placementId,_that.device,_that.ac);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'placement_id')  int placementId,  PlacementDeviceModel device,  PlacementAcModel ac)?  $default,) {final _that = this;
switch (_that) {
case _PlacementItemModel() when $default != null:
return $default(_that.placementId,_that.device,_that.ac);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlacementItemModel implements PlacementItemModel {
  const _PlacementItemModel({@JsonKey(name: 'placement_id') required this.placementId, required this.device, required this.ac});
  factory _PlacementItemModel.fromJson(Map<String, dynamic> json) => _$PlacementItemModelFromJson(json);

@override@JsonKey(name: 'placement_id') final  int placementId;
@override final  PlacementDeviceModel device;
@override final  PlacementAcModel ac;

/// Create a copy of PlacementItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlacementItemModelCopyWith<_PlacementItemModel> get copyWith => __$PlacementItemModelCopyWithImpl<_PlacementItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlacementItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlacementItemModel&&(identical(other.placementId, placementId) || other.placementId == placementId)&&(identical(other.device, device) || other.device == device)&&(identical(other.ac, ac) || other.ac == ac));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,placementId,device,ac);

@override
String toString() {
  return 'PlacementItemModel(placementId: $placementId, device: $device, ac: $ac)';
}


}

/// @nodoc
abstract mixin class _$PlacementItemModelCopyWith<$Res> implements $PlacementItemModelCopyWith<$Res> {
  factory _$PlacementItemModelCopyWith(_PlacementItemModel value, $Res Function(_PlacementItemModel) _then) = __$PlacementItemModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'placement_id') int placementId, PlacementDeviceModel device, PlacementAcModel ac
});


@override $PlacementDeviceModelCopyWith<$Res> get device;@override $PlacementAcModelCopyWith<$Res> get ac;

}
/// @nodoc
class __$PlacementItemModelCopyWithImpl<$Res>
    implements _$PlacementItemModelCopyWith<$Res> {
  __$PlacementItemModelCopyWithImpl(this._self, this._then);

  final _PlacementItemModel _self;
  final $Res Function(_PlacementItemModel) _then;

/// Create a copy of PlacementItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? placementId = null,Object? device = null,Object? ac = null,}) {
  return _then(_PlacementItemModel(
placementId: null == placementId ? _self.placementId : placementId // ignore: cast_nullable_to_non_nullable
as int,device: null == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as PlacementDeviceModel,ac: null == ac ? _self.ac : ac // ignore: cast_nullable_to_non_nullable
as PlacementAcModel,
  ));
}

/// Create a copy of PlacementItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlacementDeviceModelCopyWith<$Res> get device {
  
  return $PlacementDeviceModelCopyWith<$Res>(_self.device, (value) {
    return _then(_self.copyWith(device: value));
  });
}/// Create a copy of PlacementItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlacementAcModelCopyWith<$Res> get ac {
  
  return $PlacementAcModelCopyWith<$Res>(_self.ac, (value) {
    return _then(_self.copyWith(ac: value));
  });
}
}


/// @nodoc
mixin _$PlacementDeviceModel {

@JsonKey(name: 'device_id') int get deviceId;@JsonKey(name: 'device_name') String get deviceName; String get hardware;@JsonKey(name: 'chip_id') String get chipId;
/// Create a copy of PlacementDeviceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlacementDeviceModelCopyWith<PlacementDeviceModel> get copyWith => _$PlacementDeviceModelCopyWithImpl<PlacementDeviceModel>(this as PlacementDeviceModel, _$identity);

  /// Serializes this PlacementDeviceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlacementDeviceModel&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.hardware, hardware) || other.hardware == hardware)&&(identical(other.chipId, chipId) || other.chipId == chipId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceId,deviceName,hardware,chipId);

@override
String toString() {
  return 'PlacementDeviceModel(deviceId: $deviceId, deviceName: $deviceName, hardware: $hardware, chipId: $chipId)';
}


}

/// @nodoc
abstract mixin class $PlacementDeviceModelCopyWith<$Res>  {
  factory $PlacementDeviceModelCopyWith(PlacementDeviceModel value, $Res Function(PlacementDeviceModel) _then) = _$PlacementDeviceModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'device_id') int deviceId,@JsonKey(name: 'device_name') String deviceName, String hardware,@JsonKey(name: 'chip_id') String chipId
});




}
/// @nodoc
class _$PlacementDeviceModelCopyWithImpl<$Res>
    implements $PlacementDeviceModelCopyWith<$Res> {
  _$PlacementDeviceModelCopyWithImpl(this._self, this._then);

  final PlacementDeviceModel _self;
  final $Res Function(PlacementDeviceModel) _then;

/// Create a copy of PlacementDeviceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deviceId = null,Object? deviceName = null,Object? hardware = null,Object? chipId = null,}) {
  return _then(_self.copyWith(
deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as int,deviceName: null == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String,hardware: null == hardware ? _self.hardware : hardware // ignore: cast_nullable_to_non_nullable
as String,chipId: null == chipId ? _self.chipId : chipId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PlacementDeviceModel].
extension PlacementDeviceModelPatterns on PlacementDeviceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlacementDeviceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlacementDeviceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlacementDeviceModel value)  $default,){
final _that = this;
switch (_that) {
case _PlacementDeviceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlacementDeviceModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlacementDeviceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'device_id')  int deviceId, @JsonKey(name: 'device_name')  String deviceName,  String hardware, @JsonKey(name: 'chip_id')  String chipId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlacementDeviceModel() when $default != null:
return $default(_that.deviceId,_that.deviceName,_that.hardware,_that.chipId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'device_id')  int deviceId, @JsonKey(name: 'device_name')  String deviceName,  String hardware, @JsonKey(name: 'chip_id')  String chipId)  $default,) {final _that = this;
switch (_that) {
case _PlacementDeviceModel():
return $default(_that.deviceId,_that.deviceName,_that.hardware,_that.chipId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'device_id')  int deviceId, @JsonKey(name: 'device_name')  String deviceName,  String hardware, @JsonKey(name: 'chip_id')  String chipId)?  $default,) {final _that = this;
switch (_that) {
case _PlacementDeviceModel() when $default != null:
return $default(_that.deviceId,_that.deviceName,_that.hardware,_that.chipId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlacementDeviceModel implements PlacementDeviceModel {
  const _PlacementDeviceModel({@JsonKey(name: 'device_id') required this.deviceId, @JsonKey(name: 'device_name') required this.deviceName, required this.hardware, @JsonKey(name: 'chip_id') required this.chipId});
  factory _PlacementDeviceModel.fromJson(Map<String, dynamic> json) => _$PlacementDeviceModelFromJson(json);

@override@JsonKey(name: 'device_id') final  int deviceId;
@override@JsonKey(name: 'device_name') final  String deviceName;
@override final  String hardware;
@override@JsonKey(name: 'chip_id') final  String chipId;

/// Create a copy of PlacementDeviceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlacementDeviceModelCopyWith<_PlacementDeviceModel> get copyWith => __$PlacementDeviceModelCopyWithImpl<_PlacementDeviceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlacementDeviceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlacementDeviceModel&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.hardware, hardware) || other.hardware == hardware)&&(identical(other.chipId, chipId) || other.chipId == chipId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceId,deviceName,hardware,chipId);

@override
String toString() {
  return 'PlacementDeviceModel(deviceId: $deviceId, deviceName: $deviceName, hardware: $hardware, chipId: $chipId)';
}


}

/// @nodoc
abstract mixin class _$PlacementDeviceModelCopyWith<$Res> implements $PlacementDeviceModelCopyWith<$Res> {
  factory _$PlacementDeviceModelCopyWith(_PlacementDeviceModel value, $Res Function(_PlacementDeviceModel) _then) = __$PlacementDeviceModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'device_id') int deviceId,@JsonKey(name: 'device_name') String deviceName, String hardware,@JsonKey(name: 'chip_id') String chipId
});




}
/// @nodoc
class __$PlacementDeviceModelCopyWithImpl<$Res>
    implements _$PlacementDeviceModelCopyWith<$Res> {
  __$PlacementDeviceModelCopyWithImpl(this._self, this._then);

  final _PlacementDeviceModel _self;
  final $Res Function(_PlacementDeviceModel) _then;

/// Create a copy of PlacementDeviceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deviceId = null,Object? deviceName = null,Object? hardware = null,Object? chipId = null,}) {
  return _then(_PlacementDeviceModel(
deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as int,deviceName: null == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String,hardware: null == hardware ? _self.hardware : hardware // ignore: cast_nullable_to_non_nullable
as String,chipId: null == chipId ? _self.chipId : chipId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PlacementAcModel {

@JsonKey(name: 'ac_id') int get acId;@JsonKey(name: 'ac_name') String get acName;@JsonKey(name: 'pk_ac') String get pkAc; String? get anomaly;@JsonKey(name: 'lock_temp_setting') String? get lockTempSetting;@JsonKey(name: 'timer_id') int? get timerId;@JsonKey(name: 'timer_name') String? get timerName;@JsonKey(name: 'remote_id') int? get remoteId;@JsonKey(name: 'category_id') int get categoryId;@JsonKey(name: 'category_name') String get categoryName;@JsonKey(name: 'category_image') String get categoryImage;@JsonKey(name: 'brand_id') int get brandId;@JsonKey(name: 'brand_name') String get brandName;@JsonKey(name: 'brand_image') String get brandImage;@JsonKey(name: 'auto_on_settings') dynamic get autoOnSettings; PlacementAcDataModel? get data;
/// Create a copy of PlacementAcModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlacementAcModelCopyWith<PlacementAcModel> get copyWith => _$PlacementAcModelCopyWithImpl<PlacementAcModel>(this as PlacementAcModel, _$identity);

  /// Serializes this PlacementAcModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlacementAcModel&&(identical(other.acId, acId) || other.acId == acId)&&(identical(other.acName, acName) || other.acName == acName)&&(identical(other.pkAc, pkAc) || other.pkAc == pkAc)&&(identical(other.anomaly, anomaly) || other.anomaly == anomaly)&&(identical(other.lockTempSetting, lockTempSetting) || other.lockTempSetting == lockTempSetting)&&(identical(other.timerId, timerId) || other.timerId == timerId)&&(identical(other.timerName, timerName) || other.timerName == timerName)&&(identical(other.remoteId, remoteId) || other.remoteId == remoteId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.categoryImage, categoryImage) || other.categoryImage == categoryImage)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.brandImage, brandImage) || other.brandImage == brandImage)&&const DeepCollectionEquality().equals(other.autoOnSettings, autoOnSettings)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,acId,acName,pkAc,anomaly,lockTempSetting,timerId,timerName,remoteId,categoryId,categoryName,categoryImage,brandId,brandName,brandImage,const DeepCollectionEquality().hash(autoOnSettings),data);

@override
String toString() {
  return 'PlacementAcModel(acId: $acId, acName: $acName, pkAc: $pkAc, anomaly: $anomaly, lockTempSetting: $lockTempSetting, timerId: $timerId, timerName: $timerName, remoteId: $remoteId, categoryId: $categoryId, categoryName: $categoryName, categoryImage: $categoryImage, brandId: $brandId, brandName: $brandName, brandImage: $brandImage, autoOnSettings: $autoOnSettings, data: $data)';
}


}

/// @nodoc
abstract mixin class $PlacementAcModelCopyWith<$Res>  {
  factory $PlacementAcModelCopyWith(PlacementAcModel value, $Res Function(PlacementAcModel) _then) = _$PlacementAcModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ac_id') int acId,@JsonKey(name: 'ac_name') String acName,@JsonKey(name: 'pk_ac') String pkAc, String? anomaly,@JsonKey(name: 'lock_temp_setting') String? lockTempSetting,@JsonKey(name: 'timer_id') int? timerId,@JsonKey(name: 'timer_name') String? timerName,@JsonKey(name: 'remote_id') int? remoteId,@JsonKey(name: 'category_id') int categoryId,@JsonKey(name: 'category_name') String categoryName,@JsonKey(name: 'category_image') String categoryImage,@JsonKey(name: 'brand_id') int brandId,@JsonKey(name: 'brand_name') String brandName,@JsonKey(name: 'brand_image') String brandImage,@JsonKey(name: 'auto_on_settings') dynamic autoOnSettings, PlacementAcDataModel? data
});


$PlacementAcDataModelCopyWith<$Res>? get data;

}
/// @nodoc
class _$PlacementAcModelCopyWithImpl<$Res>
    implements $PlacementAcModelCopyWith<$Res> {
  _$PlacementAcModelCopyWithImpl(this._self, this._then);

  final PlacementAcModel _self;
  final $Res Function(PlacementAcModel) _then;

/// Create a copy of PlacementAcModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? acId = null,Object? acName = null,Object? pkAc = null,Object? anomaly = freezed,Object? lockTempSetting = freezed,Object? timerId = freezed,Object? timerName = freezed,Object? remoteId = freezed,Object? categoryId = null,Object? categoryName = null,Object? categoryImage = null,Object? brandId = null,Object? brandName = null,Object? brandImage = null,Object? autoOnSettings = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
acId: null == acId ? _self.acId : acId // ignore: cast_nullable_to_non_nullable
as int,acName: null == acName ? _self.acName : acName // ignore: cast_nullable_to_non_nullable
as String,pkAc: null == pkAc ? _self.pkAc : pkAc // ignore: cast_nullable_to_non_nullable
as String,anomaly: freezed == anomaly ? _self.anomaly : anomaly // ignore: cast_nullable_to_non_nullable
as String?,lockTempSetting: freezed == lockTempSetting ? _self.lockTempSetting : lockTempSetting // ignore: cast_nullable_to_non_nullable
as String?,timerId: freezed == timerId ? _self.timerId : timerId // ignore: cast_nullable_to_non_nullable
as int?,timerName: freezed == timerName ? _self.timerName : timerName // ignore: cast_nullable_to_non_nullable
as String?,remoteId: freezed == remoteId ? _self.remoteId : remoteId // ignore: cast_nullable_to_non_nullable
as int?,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,categoryImage: null == categoryImage ? _self.categoryImage : categoryImage // ignore: cast_nullable_to_non_nullable
as String,brandId: null == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as int,brandName: null == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String,brandImage: null == brandImage ? _self.brandImage : brandImage // ignore: cast_nullable_to_non_nullable
as String,autoOnSettings: freezed == autoOnSettings ? _self.autoOnSettings : autoOnSettings // ignore: cast_nullable_to_non_nullable
as dynamic,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PlacementAcDataModel?,
  ));
}
/// Create a copy of PlacementAcModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlacementAcDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $PlacementAcDataModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [PlacementAcModel].
extension PlacementAcModelPatterns on PlacementAcModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlacementAcModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlacementAcModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlacementAcModel value)  $default,){
final _that = this;
switch (_that) {
case _PlacementAcModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlacementAcModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlacementAcModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ac_id')  int acId, @JsonKey(name: 'ac_name')  String acName, @JsonKey(name: 'pk_ac')  String pkAc,  String? anomaly, @JsonKey(name: 'lock_temp_setting')  String? lockTempSetting, @JsonKey(name: 'timer_id')  int? timerId, @JsonKey(name: 'timer_name')  String? timerName, @JsonKey(name: 'remote_id')  int? remoteId, @JsonKey(name: 'category_id')  int categoryId, @JsonKey(name: 'category_name')  String categoryName, @JsonKey(name: 'category_image')  String categoryImage, @JsonKey(name: 'brand_id')  int brandId, @JsonKey(name: 'brand_name')  String brandName, @JsonKey(name: 'brand_image')  String brandImage, @JsonKey(name: 'auto_on_settings')  dynamic autoOnSettings,  PlacementAcDataModel? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlacementAcModel() when $default != null:
return $default(_that.acId,_that.acName,_that.pkAc,_that.anomaly,_that.lockTempSetting,_that.timerId,_that.timerName,_that.remoteId,_that.categoryId,_that.categoryName,_that.categoryImage,_that.brandId,_that.brandName,_that.brandImage,_that.autoOnSettings,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ac_id')  int acId, @JsonKey(name: 'ac_name')  String acName, @JsonKey(name: 'pk_ac')  String pkAc,  String? anomaly, @JsonKey(name: 'lock_temp_setting')  String? lockTempSetting, @JsonKey(name: 'timer_id')  int? timerId, @JsonKey(name: 'timer_name')  String? timerName, @JsonKey(name: 'remote_id')  int? remoteId, @JsonKey(name: 'category_id')  int categoryId, @JsonKey(name: 'category_name')  String categoryName, @JsonKey(name: 'category_image')  String categoryImage, @JsonKey(name: 'brand_id')  int brandId, @JsonKey(name: 'brand_name')  String brandName, @JsonKey(name: 'brand_image')  String brandImage, @JsonKey(name: 'auto_on_settings')  dynamic autoOnSettings,  PlacementAcDataModel? data)  $default,) {final _that = this;
switch (_that) {
case _PlacementAcModel():
return $default(_that.acId,_that.acName,_that.pkAc,_that.anomaly,_that.lockTempSetting,_that.timerId,_that.timerName,_that.remoteId,_that.categoryId,_that.categoryName,_that.categoryImage,_that.brandId,_that.brandName,_that.brandImage,_that.autoOnSettings,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ac_id')  int acId, @JsonKey(name: 'ac_name')  String acName, @JsonKey(name: 'pk_ac')  String pkAc,  String? anomaly, @JsonKey(name: 'lock_temp_setting')  String? lockTempSetting, @JsonKey(name: 'timer_id')  int? timerId, @JsonKey(name: 'timer_name')  String? timerName, @JsonKey(name: 'remote_id')  int? remoteId, @JsonKey(name: 'category_id')  int categoryId, @JsonKey(name: 'category_name')  String categoryName, @JsonKey(name: 'category_image')  String categoryImage, @JsonKey(name: 'brand_id')  int brandId, @JsonKey(name: 'brand_name')  String brandName, @JsonKey(name: 'brand_image')  String brandImage, @JsonKey(name: 'auto_on_settings')  dynamic autoOnSettings,  PlacementAcDataModel? data)?  $default,) {final _that = this;
switch (_that) {
case _PlacementAcModel() when $default != null:
return $default(_that.acId,_that.acName,_that.pkAc,_that.anomaly,_that.lockTempSetting,_that.timerId,_that.timerName,_that.remoteId,_that.categoryId,_that.categoryName,_that.categoryImage,_that.brandId,_that.brandName,_that.brandImage,_that.autoOnSettings,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlacementAcModel implements PlacementAcModel {
  const _PlacementAcModel({@JsonKey(name: 'ac_id') required this.acId, @JsonKey(name: 'ac_name') required this.acName, @JsonKey(name: 'pk_ac') required this.pkAc, this.anomaly, @JsonKey(name: 'lock_temp_setting') this.lockTempSetting, @JsonKey(name: 'timer_id') this.timerId, @JsonKey(name: 'timer_name') this.timerName, @JsonKey(name: 'remote_id') this.remoteId, @JsonKey(name: 'category_id') required this.categoryId, @JsonKey(name: 'category_name') required this.categoryName, @JsonKey(name: 'category_image') required this.categoryImage, @JsonKey(name: 'brand_id') required this.brandId, @JsonKey(name: 'brand_name') required this.brandName, @JsonKey(name: 'brand_image') required this.brandImage, @JsonKey(name: 'auto_on_settings') this.autoOnSettings, this.data});
  factory _PlacementAcModel.fromJson(Map<String, dynamic> json) => _$PlacementAcModelFromJson(json);

@override@JsonKey(name: 'ac_id') final  int acId;
@override@JsonKey(name: 'ac_name') final  String acName;
@override@JsonKey(name: 'pk_ac') final  String pkAc;
@override final  String? anomaly;
@override@JsonKey(name: 'lock_temp_setting') final  String? lockTempSetting;
@override@JsonKey(name: 'timer_id') final  int? timerId;
@override@JsonKey(name: 'timer_name') final  String? timerName;
@override@JsonKey(name: 'remote_id') final  int? remoteId;
@override@JsonKey(name: 'category_id') final  int categoryId;
@override@JsonKey(name: 'category_name') final  String categoryName;
@override@JsonKey(name: 'category_image') final  String categoryImage;
@override@JsonKey(name: 'brand_id') final  int brandId;
@override@JsonKey(name: 'brand_name') final  String brandName;
@override@JsonKey(name: 'brand_image') final  String brandImage;
@override@JsonKey(name: 'auto_on_settings') final  dynamic autoOnSettings;
@override final  PlacementAcDataModel? data;

/// Create a copy of PlacementAcModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlacementAcModelCopyWith<_PlacementAcModel> get copyWith => __$PlacementAcModelCopyWithImpl<_PlacementAcModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlacementAcModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlacementAcModel&&(identical(other.acId, acId) || other.acId == acId)&&(identical(other.acName, acName) || other.acName == acName)&&(identical(other.pkAc, pkAc) || other.pkAc == pkAc)&&(identical(other.anomaly, anomaly) || other.anomaly == anomaly)&&(identical(other.lockTempSetting, lockTempSetting) || other.lockTempSetting == lockTempSetting)&&(identical(other.timerId, timerId) || other.timerId == timerId)&&(identical(other.timerName, timerName) || other.timerName == timerName)&&(identical(other.remoteId, remoteId) || other.remoteId == remoteId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.categoryImage, categoryImage) || other.categoryImage == categoryImage)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.brandImage, brandImage) || other.brandImage == brandImage)&&const DeepCollectionEquality().equals(other.autoOnSettings, autoOnSettings)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,acId,acName,pkAc,anomaly,lockTempSetting,timerId,timerName,remoteId,categoryId,categoryName,categoryImage,brandId,brandName,brandImage,const DeepCollectionEquality().hash(autoOnSettings),data);

@override
String toString() {
  return 'PlacementAcModel(acId: $acId, acName: $acName, pkAc: $pkAc, anomaly: $anomaly, lockTempSetting: $lockTempSetting, timerId: $timerId, timerName: $timerName, remoteId: $remoteId, categoryId: $categoryId, categoryName: $categoryName, categoryImage: $categoryImage, brandId: $brandId, brandName: $brandName, brandImage: $brandImage, autoOnSettings: $autoOnSettings, data: $data)';
}


}

/// @nodoc
abstract mixin class _$PlacementAcModelCopyWith<$Res> implements $PlacementAcModelCopyWith<$Res> {
  factory _$PlacementAcModelCopyWith(_PlacementAcModel value, $Res Function(_PlacementAcModel) _then) = __$PlacementAcModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ac_id') int acId,@JsonKey(name: 'ac_name') String acName,@JsonKey(name: 'pk_ac') String pkAc, String? anomaly,@JsonKey(name: 'lock_temp_setting') String? lockTempSetting,@JsonKey(name: 'timer_id') int? timerId,@JsonKey(name: 'timer_name') String? timerName,@JsonKey(name: 'remote_id') int? remoteId,@JsonKey(name: 'category_id') int categoryId,@JsonKey(name: 'category_name') String categoryName,@JsonKey(name: 'category_image') String categoryImage,@JsonKey(name: 'brand_id') int brandId,@JsonKey(name: 'brand_name') String brandName,@JsonKey(name: 'brand_image') String brandImage,@JsonKey(name: 'auto_on_settings') dynamic autoOnSettings, PlacementAcDataModel? data
});


@override $PlacementAcDataModelCopyWith<$Res>? get data;

}
/// @nodoc
class __$PlacementAcModelCopyWithImpl<$Res>
    implements _$PlacementAcModelCopyWith<$Res> {
  __$PlacementAcModelCopyWithImpl(this._self, this._then);

  final _PlacementAcModel _self;
  final $Res Function(_PlacementAcModel) _then;

/// Create a copy of PlacementAcModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? acId = null,Object? acName = null,Object? pkAc = null,Object? anomaly = freezed,Object? lockTempSetting = freezed,Object? timerId = freezed,Object? timerName = freezed,Object? remoteId = freezed,Object? categoryId = null,Object? categoryName = null,Object? categoryImage = null,Object? brandId = null,Object? brandName = null,Object? brandImage = null,Object? autoOnSettings = freezed,Object? data = freezed,}) {
  return _then(_PlacementAcModel(
acId: null == acId ? _self.acId : acId // ignore: cast_nullable_to_non_nullable
as int,acName: null == acName ? _self.acName : acName // ignore: cast_nullable_to_non_nullable
as String,pkAc: null == pkAc ? _self.pkAc : pkAc // ignore: cast_nullable_to_non_nullable
as String,anomaly: freezed == anomaly ? _self.anomaly : anomaly // ignore: cast_nullable_to_non_nullable
as String?,lockTempSetting: freezed == lockTempSetting ? _self.lockTempSetting : lockTempSetting // ignore: cast_nullable_to_non_nullable
as String?,timerId: freezed == timerId ? _self.timerId : timerId // ignore: cast_nullable_to_non_nullable
as int?,timerName: freezed == timerName ? _self.timerName : timerName // ignore: cast_nullable_to_non_nullable
as String?,remoteId: freezed == remoteId ? _self.remoteId : remoteId // ignore: cast_nullable_to_non_nullable
as int?,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,categoryImage: null == categoryImage ? _self.categoryImage : categoryImage // ignore: cast_nullable_to_non_nullable
as String,brandId: null == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as int,brandName: null == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String,brandImage: null == brandImage ? _self.brandImage : brandImage // ignore: cast_nullable_to_non_nullable
as String,autoOnSettings: freezed == autoOnSettings ? _self.autoOnSettings : autoOnSettings // ignore: cast_nullable_to_non_nullable
as dynamic,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PlacementAcDataModel?,
  ));
}

/// Create a copy of PlacementAcModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlacementAcDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $PlacementAcDataModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$PlacementAcDataModel {

@JsonKey(fromJson: _toDouble, toJson: _fromDouble) double? get current;@JsonKey(fromJson: _toDouble, toJson: _fromDouble) double? get watt;@JsonKey(name: 'return_temp', fromJson: _toDouble, toJson: _fromDouble) double? get returnTemp;@JsonKey(name: 'supply_temp', fromJson: _toDouble, toJson: _fromDouble) double? get supplyTemp; String? get condition; String? get status;@JsonKey(name: 'on_state') bool? get onState;@JsonKey(name: 'is_online') bool? get isOnline;@JsonKey(name: 'set_point') int? get setPoint;
/// Create a copy of PlacementAcDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlacementAcDataModelCopyWith<PlacementAcDataModel> get copyWith => _$PlacementAcDataModelCopyWithImpl<PlacementAcDataModel>(this as PlacementAcDataModel, _$identity);

  /// Serializes this PlacementAcDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlacementAcDataModel&&(identical(other.current, current) || other.current == current)&&(identical(other.watt, watt) || other.watt == watt)&&(identical(other.returnTemp, returnTemp) || other.returnTemp == returnTemp)&&(identical(other.supplyTemp, supplyTemp) || other.supplyTemp == supplyTemp)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.status, status) || other.status == status)&&(identical(other.onState, onState) || other.onState == onState)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.setPoint, setPoint) || other.setPoint == setPoint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,current,watt,returnTemp,supplyTemp,condition,status,onState,isOnline,setPoint);

@override
String toString() {
  return 'PlacementAcDataModel(current: $current, watt: $watt, returnTemp: $returnTemp, supplyTemp: $supplyTemp, condition: $condition, status: $status, onState: $onState, isOnline: $isOnline, setPoint: $setPoint)';
}


}

/// @nodoc
abstract mixin class $PlacementAcDataModelCopyWith<$Res>  {
  factory $PlacementAcDataModelCopyWith(PlacementAcDataModel value, $Res Function(PlacementAcDataModel) _then) = _$PlacementAcDataModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(fromJson: _toDouble, toJson: _fromDouble) double? current,@JsonKey(fromJson: _toDouble, toJson: _fromDouble) double? watt,@JsonKey(name: 'return_temp', fromJson: _toDouble, toJson: _fromDouble) double? returnTemp,@JsonKey(name: 'supply_temp', fromJson: _toDouble, toJson: _fromDouble) double? supplyTemp, String? condition, String? status,@JsonKey(name: 'on_state') bool? onState,@JsonKey(name: 'is_online') bool? isOnline,@JsonKey(name: 'set_point') int? setPoint
});




}
/// @nodoc
class _$PlacementAcDataModelCopyWithImpl<$Res>
    implements $PlacementAcDataModelCopyWith<$Res> {
  _$PlacementAcDataModelCopyWithImpl(this._self, this._then);

  final PlacementAcDataModel _self;
  final $Res Function(PlacementAcDataModel) _then;

/// Create a copy of PlacementAcDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? current = freezed,Object? watt = freezed,Object? returnTemp = freezed,Object? supplyTemp = freezed,Object? condition = freezed,Object? status = freezed,Object? onState = freezed,Object? isOnline = freezed,Object? setPoint = freezed,}) {
  return _then(_self.copyWith(
current: freezed == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as double?,watt: freezed == watt ? _self.watt : watt // ignore: cast_nullable_to_non_nullable
as double?,returnTemp: freezed == returnTemp ? _self.returnTemp : returnTemp // ignore: cast_nullable_to_non_nullable
as double?,supplyTemp: freezed == supplyTemp ? _self.supplyTemp : supplyTemp // ignore: cast_nullable_to_non_nullable
as double?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,onState: freezed == onState ? _self.onState : onState // ignore: cast_nullable_to_non_nullable
as bool?,isOnline: freezed == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool?,setPoint: freezed == setPoint ? _self.setPoint : setPoint // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PlacementAcDataModel].
extension PlacementAcDataModelPatterns on PlacementAcDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlacementAcDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlacementAcDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlacementAcDataModel value)  $default,){
final _that = this;
switch (_that) {
case _PlacementAcDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlacementAcDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlacementAcDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(fromJson: _toDouble, toJson: _fromDouble)  double? current, @JsonKey(fromJson: _toDouble, toJson: _fromDouble)  double? watt, @JsonKey(name: 'return_temp', fromJson: _toDouble, toJson: _fromDouble)  double? returnTemp, @JsonKey(name: 'supply_temp', fromJson: _toDouble, toJson: _fromDouble)  double? supplyTemp,  String? condition,  String? status, @JsonKey(name: 'on_state')  bool? onState, @JsonKey(name: 'is_online')  bool? isOnline, @JsonKey(name: 'set_point')  int? setPoint)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlacementAcDataModel() when $default != null:
return $default(_that.current,_that.watt,_that.returnTemp,_that.supplyTemp,_that.condition,_that.status,_that.onState,_that.isOnline,_that.setPoint);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(fromJson: _toDouble, toJson: _fromDouble)  double? current, @JsonKey(fromJson: _toDouble, toJson: _fromDouble)  double? watt, @JsonKey(name: 'return_temp', fromJson: _toDouble, toJson: _fromDouble)  double? returnTemp, @JsonKey(name: 'supply_temp', fromJson: _toDouble, toJson: _fromDouble)  double? supplyTemp,  String? condition,  String? status, @JsonKey(name: 'on_state')  bool? onState, @JsonKey(name: 'is_online')  bool? isOnline, @JsonKey(name: 'set_point')  int? setPoint)  $default,) {final _that = this;
switch (_that) {
case _PlacementAcDataModel():
return $default(_that.current,_that.watt,_that.returnTemp,_that.supplyTemp,_that.condition,_that.status,_that.onState,_that.isOnline,_that.setPoint);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(fromJson: _toDouble, toJson: _fromDouble)  double? current, @JsonKey(fromJson: _toDouble, toJson: _fromDouble)  double? watt, @JsonKey(name: 'return_temp', fromJson: _toDouble, toJson: _fromDouble)  double? returnTemp, @JsonKey(name: 'supply_temp', fromJson: _toDouble, toJson: _fromDouble)  double? supplyTemp,  String? condition,  String? status, @JsonKey(name: 'on_state')  bool? onState, @JsonKey(name: 'is_online')  bool? isOnline, @JsonKey(name: 'set_point')  int? setPoint)?  $default,) {final _that = this;
switch (_that) {
case _PlacementAcDataModel() when $default != null:
return $default(_that.current,_that.watt,_that.returnTemp,_that.supplyTemp,_that.condition,_that.status,_that.onState,_that.isOnline,_that.setPoint);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlacementAcDataModel implements PlacementAcDataModel {
  const _PlacementAcDataModel({@JsonKey(fromJson: _toDouble, toJson: _fromDouble) this.current, @JsonKey(fromJson: _toDouble, toJson: _fromDouble) this.watt, @JsonKey(name: 'return_temp', fromJson: _toDouble, toJson: _fromDouble) this.returnTemp, @JsonKey(name: 'supply_temp', fromJson: _toDouble, toJson: _fromDouble) this.supplyTemp, this.condition, this.status, @JsonKey(name: 'on_state') this.onState, @JsonKey(name: 'is_online') this.isOnline, @JsonKey(name: 'set_point') this.setPoint});
  factory _PlacementAcDataModel.fromJson(Map<String, dynamic> json) => _$PlacementAcDataModelFromJson(json);

@override@JsonKey(fromJson: _toDouble, toJson: _fromDouble) final  double? current;
@override@JsonKey(fromJson: _toDouble, toJson: _fromDouble) final  double? watt;
@override@JsonKey(name: 'return_temp', fromJson: _toDouble, toJson: _fromDouble) final  double? returnTemp;
@override@JsonKey(name: 'supply_temp', fromJson: _toDouble, toJson: _fromDouble) final  double? supplyTemp;
@override final  String? condition;
@override final  String? status;
@override@JsonKey(name: 'on_state') final  bool? onState;
@override@JsonKey(name: 'is_online') final  bool? isOnline;
@override@JsonKey(name: 'set_point') final  int? setPoint;

/// Create a copy of PlacementAcDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlacementAcDataModelCopyWith<_PlacementAcDataModel> get copyWith => __$PlacementAcDataModelCopyWithImpl<_PlacementAcDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlacementAcDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlacementAcDataModel&&(identical(other.current, current) || other.current == current)&&(identical(other.watt, watt) || other.watt == watt)&&(identical(other.returnTemp, returnTemp) || other.returnTemp == returnTemp)&&(identical(other.supplyTemp, supplyTemp) || other.supplyTemp == supplyTemp)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.status, status) || other.status == status)&&(identical(other.onState, onState) || other.onState == onState)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.setPoint, setPoint) || other.setPoint == setPoint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,current,watt,returnTemp,supplyTemp,condition,status,onState,isOnline,setPoint);

@override
String toString() {
  return 'PlacementAcDataModel(current: $current, watt: $watt, returnTemp: $returnTemp, supplyTemp: $supplyTemp, condition: $condition, status: $status, onState: $onState, isOnline: $isOnline, setPoint: $setPoint)';
}


}

/// @nodoc
abstract mixin class _$PlacementAcDataModelCopyWith<$Res> implements $PlacementAcDataModelCopyWith<$Res> {
  factory _$PlacementAcDataModelCopyWith(_PlacementAcDataModel value, $Res Function(_PlacementAcDataModel) _then) = __$PlacementAcDataModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(fromJson: _toDouble, toJson: _fromDouble) double? current,@JsonKey(fromJson: _toDouble, toJson: _fromDouble) double? watt,@JsonKey(name: 'return_temp', fromJson: _toDouble, toJson: _fromDouble) double? returnTemp,@JsonKey(name: 'supply_temp', fromJson: _toDouble, toJson: _fromDouble) double? supplyTemp, String? condition, String? status,@JsonKey(name: 'on_state') bool? onState,@JsonKey(name: 'is_online') bool? isOnline,@JsonKey(name: 'set_point') int? setPoint
});




}
/// @nodoc
class __$PlacementAcDataModelCopyWithImpl<$Res>
    implements _$PlacementAcDataModelCopyWith<$Res> {
  __$PlacementAcDataModelCopyWithImpl(this._self, this._then);

  final _PlacementAcDataModel _self;
  final $Res Function(_PlacementAcDataModel) _then;

/// Create a copy of PlacementAcDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? current = freezed,Object? watt = freezed,Object? returnTemp = freezed,Object? supplyTemp = freezed,Object? condition = freezed,Object? status = freezed,Object? onState = freezed,Object? isOnline = freezed,Object? setPoint = freezed,}) {
  return _then(_PlacementAcDataModel(
current: freezed == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as double?,watt: freezed == watt ? _self.watt : watt // ignore: cast_nullable_to_non_nullable
as double?,returnTemp: freezed == returnTemp ? _self.returnTemp : returnTemp // ignore: cast_nullable_to_non_nullable
as double?,supplyTemp: freezed == supplyTemp ? _self.supplyTemp : supplyTemp // ignore: cast_nullable_to_non_nullable
as double?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,onState: freezed == onState ? _self.onState : onState // ignore: cast_nullable_to_non_nullable
as bool?,isOnline: freezed == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool?,setPoint: freezed == setPoint ? _self.setPoint : setPoint // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
