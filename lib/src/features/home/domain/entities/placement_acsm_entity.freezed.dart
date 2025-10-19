// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'placement_acsm_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PlacementAcsmEntity {

 int get siteId; String get siteName; List<PlacementRoomEntity> get rooms;
/// Create a copy of PlacementAcsmEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlacementAcsmEntityCopyWith<PlacementAcsmEntity> get copyWith => _$PlacementAcsmEntityCopyWithImpl<PlacementAcsmEntity>(this as PlacementAcsmEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlacementAcsmEntity&&(identical(other.siteId, siteId) || other.siteId == siteId)&&(identical(other.siteName, siteName) || other.siteName == siteName)&&const DeepCollectionEquality().equals(other.rooms, rooms));
}


@override
int get hashCode => Object.hash(runtimeType,siteId,siteName,const DeepCollectionEquality().hash(rooms));

@override
String toString() {
  return 'PlacementAcsmEntity(siteId: $siteId, siteName: $siteName, rooms: $rooms)';
}


}

/// @nodoc
abstract mixin class $PlacementAcsmEntityCopyWith<$Res>  {
  factory $PlacementAcsmEntityCopyWith(PlacementAcsmEntity value, $Res Function(PlacementAcsmEntity) _then) = _$PlacementAcsmEntityCopyWithImpl;
@useResult
$Res call({
 int siteId, String siteName, List<PlacementRoomEntity> rooms
});




}
/// @nodoc
class _$PlacementAcsmEntityCopyWithImpl<$Res>
    implements $PlacementAcsmEntityCopyWith<$Res> {
  _$PlacementAcsmEntityCopyWithImpl(this._self, this._then);

  final PlacementAcsmEntity _self;
  final $Res Function(PlacementAcsmEntity) _then;

/// Create a copy of PlacementAcsmEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? siteId = null,Object? siteName = null,Object? rooms = null,}) {
  return _then(_self.copyWith(
siteId: null == siteId ? _self.siteId : siteId // ignore: cast_nullable_to_non_nullable
as int,siteName: null == siteName ? _self.siteName : siteName // ignore: cast_nullable_to_non_nullable
as String,rooms: null == rooms ? _self.rooms : rooms // ignore: cast_nullable_to_non_nullable
as List<PlacementRoomEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [PlacementAcsmEntity].
extension PlacementAcsmEntityPatterns on PlacementAcsmEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlacementAcsmEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlacementAcsmEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlacementAcsmEntity value)  $default,){
final _that = this;
switch (_that) {
case _PlacementAcsmEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlacementAcsmEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PlacementAcsmEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int siteId,  String siteName,  List<PlacementRoomEntity> rooms)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlacementAcsmEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int siteId,  String siteName,  List<PlacementRoomEntity> rooms)  $default,) {final _that = this;
switch (_that) {
case _PlacementAcsmEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int siteId,  String siteName,  List<PlacementRoomEntity> rooms)?  $default,) {final _that = this;
switch (_that) {
case _PlacementAcsmEntity() when $default != null:
return $default(_that.siteId,_that.siteName,_that.rooms);case _:
  return null;

}
}

}

/// @nodoc


class _PlacementAcsmEntity implements PlacementAcsmEntity {
  const _PlacementAcsmEntity({required this.siteId, required this.siteName, required final  List<PlacementRoomEntity> rooms}): _rooms = rooms;
  

@override final  int siteId;
@override final  String siteName;
 final  List<PlacementRoomEntity> _rooms;
@override List<PlacementRoomEntity> get rooms {
  if (_rooms is EqualUnmodifiableListView) return _rooms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rooms);
}


/// Create a copy of PlacementAcsmEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlacementAcsmEntityCopyWith<_PlacementAcsmEntity> get copyWith => __$PlacementAcsmEntityCopyWithImpl<_PlacementAcsmEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlacementAcsmEntity&&(identical(other.siteId, siteId) || other.siteId == siteId)&&(identical(other.siteName, siteName) || other.siteName == siteName)&&const DeepCollectionEquality().equals(other._rooms, _rooms));
}


@override
int get hashCode => Object.hash(runtimeType,siteId,siteName,const DeepCollectionEquality().hash(_rooms));

@override
String toString() {
  return 'PlacementAcsmEntity(siteId: $siteId, siteName: $siteName, rooms: $rooms)';
}


}

/// @nodoc
abstract mixin class _$PlacementAcsmEntityCopyWith<$Res> implements $PlacementAcsmEntityCopyWith<$Res> {
  factory _$PlacementAcsmEntityCopyWith(_PlacementAcsmEntity value, $Res Function(_PlacementAcsmEntity) _then) = __$PlacementAcsmEntityCopyWithImpl;
@override @useResult
$Res call({
 int siteId, String siteName, List<PlacementRoomEntity> rooms
});




}
/// @nodoc
class __$PlacementAcsmEntityCopyWithImpl<$Res>
    implements _$PlacementAcsmEntityCopyWith<$Res> {
  __$PlacementAcsmEntityCopyWithImpl(this._self, this._then);

  final _PlacementAcsmEntity _self;
  final $Res Function(_PlacementAcsmEntity) _then;

/// Create a copy of PlacementAcsmEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? siteId = null,Object? siteName = null,Object? rooms = null,}) {
  return _then(_PlacementAcsmEntity(
siteId: null == siteId ? _self.siteId : siteId // ignore: cast_nullable_to_non_nullable
as int,siteName: null == siteName ? _self.siteName : siteName // ignore: cast_nullable_to_non_nullable
as String,rooms: null == rooms ? _self._rooms : rooms // ignore: cast_nullable_to_non_nullable
as List<PlacementRoomEntity>,
  ));
}


}

/// @nodoc
mixin _$PlacementRoomEntity {

 int get roomId; String get roomName; List<PlacementItemEntity> get placements;
/// Create a copy of PlacementRoomEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlacementRoomEntityCopyWith<PlacementRoomEntity> get copyWith => _$PlacementRoomEntityCopyWithImpl<PlacementRoomEntity>(this as PlacementRoomEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlacementRoomEntity&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.roomName, roomName) || other.roomName == roomName)&&const DeepCollectionEquality().equals(other.placements, placements));
}


@override
int get hashCode => Object.hash(runtimeType,roomId,roomName,const DeepCollectionEquality().hash(placements));

@override
String toString() {
  return 'PlacementRoomEntity(roomId: $roomId, roomName: $roomName, placements: $placements)';
}


}

/// @nodoc
abstract mixin class $PlacementRoomEntityCopyWith<$Res>  {
  factory $PlacementRoomEntityCopyWith(PlacementRoomEntity value, $Res Function(PlacementRoomEntity) _then) = _$PlacementRoomEntityCopyWithImpl;
@useResult
$Res call({
 int roomId, String roomName, List<PlacementItemEntity> placements
});




}
/// @nodoc
class _$PlacementRoomEntityCopyWithImpl<$Res>
    implements $PlacementRoomEntityCopyWith<$Res> {
  _$PlacementRoomEntityCopyWithImpl(this._self, this._then);

  final PlacementRoomEntity _self;
  final $Res Function(PlacementRoomEntity) _then;

/// Create a copy of PlacementRoomEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roomId = null,Object? roomName = null,Object? placements = null,}) {
  return _then(_self.copyWith(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,roomName: null == roomName ? _self.roomName : roomName // ignore: cast_nullable_to_non_nullable
as String,placements: null == placements ? _self.placements : placements // ignore: cast_nullable_to_non_nullable
as List<PlacementItemEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [PlacementRoomEntity].
extension PlacementRoomEntityPatterns on PlacementRoomEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlacementRoomEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlacementRoomEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlacementRoomEntity value)  $default,){
final _that = this;
switch (_that) {
case _PlacementRoomEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlacementRoomEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PlacementRoomEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int roomId,  String roomName,  List<PlacementItemEntity> placements)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlacementRoomEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int roomId,  String roomName,  List<PlacementItemEntity> placements)  $default,) {final _that = this;
switch (_that) {
case _PlacementRoomEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int roomId,  String roomName,  List<PlacementItemEntity> placements)?  $default,) {final _that = this;
switch (_that) {
case _PlacementRoomEntity() when $default != null:
return $default(_that.roomId,_that.roomName,_that.placements);case _:
  return null;

}
}

}

/// @nodoc


class _PlacementRoomEntity implements PlacementRoomEntity {
  const _PlacementRoomEntity({required this.roomId, required this.roomName, required final  List<PlacementItemEntity> placements}): _placements = placements;
  

@override final  int roomId;
@override final  String roomName;
 final  List<PlacementItemEntity> _placements;
@override List<PlacementItemEntity> get placements {
  if (_placements is EqualUnmodifiableListView) return _placements;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_placements);
}


/// Create a copy of PlacementRoomEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlacementRoomEntityCopyWith<_PlacementRoomEntity> get copyWith => __$PlacementRoomEntityCopyWithImpl<_PlacementRoomEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlacementRoomEntity&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.roomName, roomName) || other.roomName == roomName)&&const DeepCollectionEquality().equals(other._placements, _placements));
}


@override
int get hashCode => Object.hash(runtimeType,roomId,roomName,const DeepCollectionEquality().hash(_placements));

@override
String toString() {
  return 'PlacementRoomEntity(roomId: $roomId, roomName: $roomName, placements: $placements)';
}


}

/// @nodoc
abstract mixin class _$PlacementRoomEntityCopyWith<$Res> implements $PlacementRoomEntityCopyWith<$Res> {
  factory _$PlacementRoomEntityCopyWith(_PlacementRoomEntity value, $Res Function(_PlacementRoomEntity) _then) = __$PlacementRoomEntityCopyWithImpl;
@override @useResult
$Res call({
 int roomId, String roomName, List<PlacementItemEntity> placements
});




}
/// @nodoc
class __$PlacementRoomEntityCopyWithImpl<$Res>
    implements _$PlacementRoomEntityCopyWith<$Res> {
  __$PlacementRoomEntityCopyWithImpl(this._self, this._then);

  final _PlacementRoomEntity _self;
  final $Res Function(_PlacementRoomEntity) _then;

/// Create a copy of PlacementRoomEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roomId = null,Object? roomName = null,Object? placements = null,}) {
  return _then(_PlacementRoomEntity(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,roomName: null == roomName ? _self.roomName : roomName // ignore: cast_nullable_to_non_nullable
as String,placements: null == placements ? _self._placements : placements // ignore: cast_nullable_to_non_nullable
as List<PlacementItemEntity>,
  ));
}


}

/// @nodoc
mixin _$PlacementItemEntity {

 int get placementId; PlacementDeviceEntity get device; PlacementAcEntity get ac;
/// Create a copy of PlacementItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlacementItemEntityCopyWith<PlacementItemEntity> get copyWith => _$PlacementItemEntityCopyWithImpl<PlacementItemEntity>(this as PlacementItemEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlacementItemEntity&&(identical(other.placementId, placementId) || other.placementId == placementId)&&(identical(other.device, device) || other.device == device)&&(identical(other.ac, ac) || other.ac == ac));
}


@override
int get hashCode => Object.hash(runtimeType,placementId,device,ac);

@override
String toString() {
  return 'PlacementItemEntity(placementId: $placementId, device: $device, ac: $ac)';
}


}

/// @nodoc
abstract mixin class $PlacementItemEntityCopyWith<$Res>  {
  factory $PlacementItemEntityCopyWith(PlacementItemEntity value, $Res Function(PlacementItemEntity) _then) = _$PlacementItemEntityCopyWithImpl;
@useResult
$Res call({
 int placementId, PlacementDeviceEntity device, PlacementAcEntity ac
});


$PlacementDeviceEntityCopyWith<$Res> get device;$PlacementAcEntityCopyWith<$Res> get ac;

}
/// @nodoc
class _$PlacementItemEntityCopyWithImpl<$Res>
    implements $PlacementItemEntityCopyWith<$Res> {
  _$PlacementItemEntityCopyWithImpl(this._self, this._then);

  final PlacementItemEntity _self;
  final $Res Function(PlacementItemEntity) _then;

/// Create a copy of PlacementItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? placementId = null,Object? device = null,Object? ac = null,}) {
  return _then(_self.copyWith(
placementId: null == placementId ? _self.placementId : placementId // ignore: cast_nullable_to_non_nullable
as int,device: null == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as PlacementDeviceEntity,ac: null == ac ? _self.ac : ac // ignore: cast_nullable_to_non_nullable
as PlacementAcEntity,
  ));
}
/// Create a copy of PlacementItemEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlacementDeviceEntityCopyWith<$Res> get device {
  
  return $PlacementDeviceEntityCopyWith<$Res>(_self.device, (value) {
    return _then(_self.copyWith(device: value));
  });
}/// Create a copy of PlacementItemEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlacementAcEntityCopyWith<$Res> get ac {
  
  return $PlacementAcEntityCopyWith<$Res>(_self.ac, (value) {
    return _then(_self.copyWith(ac: value));
  });
}
}


/// Adds pattern-matching-related methods to [PlacementItemEntity].
extension PlacementItemEntityPatterns on PlacementItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlacementItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlacementItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlacementItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _PlacementItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlacementItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PlacementItemEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int placementId,  PlacementDeviceEntity device,  PlacementAcEntity ac)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlacementItemEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int placementId,  PlacementDeviceEntity device,  PlacementAcEntity ac)  $default,) {final _that = this;
switch (_that) {
case _PlacementItemEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int placementId,  PlacementDeviceEntity device,  PlacementAcEntity ac)?  $default,) {final _that = this;
switch (_that) {
case _PlacementItemEntity() when $default != null:
return $default(_that.placementId,_that.device,_that.ac);case _:
  return null;

}
}

}

/// @nodoc


class _PlacementItemEntity implements PlacementItemEntity {
  const _PlacementItemEntity({required this.placementId, required this.device, required this.ac});
  

@override final  int placementId;
@override final  PlacementDeviceEntity device;
@override final  PlacementAcEntity ac;

/// Create a copy of PlacementItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlacementItemEntityCopyWith<_PlacementItemEntity> get copyWith => __$PlacementItemEntityCopyWithImpl<_PlacementItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlacementItemEntity&&(identical(other.placementId, placementId) || other.placementId == placementId)&&(identical(other.device, device) || other.device == device)&&(identical(other.ac, ac) || other.ac == ac));
}


@override
int get hashCode => Object.hash(runtimeType,placementId,device,ac);

@override
String toString() {
  return 'PlacementItemEntity(placementId: $placementId, device: $device, ac: $ac)';
}


}

/// @nodoc
abstract mixin class _$PlacementItemEntityCopyWith<$Res> implements $PlacementItemEntityCopyWith<$Res> {
  factory _$PlacementItemEntityCopyWith(_PlacementItemEntity value, $Res Function(_PlacementItemEntity) _then) = __$PlacementItemEntityCopyWithImpl;
@override @useResult
$Res call({
 int placementId, PlacementDeviceEntity device, PlacementAcEntity ac
});


@override $PlacementDeviceEntityCopyWith<$Res> get device;@override $PlacementAcEntityCopyWith<$Res> get ac;

}
/// @nodoc
class __$PlacementItemEntityCopyWithImpl<$Res>
    implements _$PlacementItemEntityCopyWith<$Res> {
  __$PlacementItemEntityCopyWithImpl(this._self, this._then);

  final _PlacementItemEntity _self;
  final $Res Function(_PlacementItemEntity) _then;

/// Create a copy of PlacementItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? placementId = null,Object? device = null,Object? ac = null,}) {
  return _then(_PlacementItemEntity(
placementId: null == placementId ? _self.placementId : placementId // ignore: cast_nullable_to_non_nullable
as int,device: null == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as PlacementDeviceEntity,ac: null == ac ? _self.ac : ac // ignore: cast_nullable_to_non_nullable
as PlacementAcEntity,
  ));
}

/// Create a copy of PlacementItemEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlacementDeviceEntityCopyWith<$Res> get device {
  
  return $PlacementDeviceEntityCopyWith<$Res>(_self.device, (value) {
    return _then(_self.copyWith(device: value));
  });
}/// Create a copy of PlacementItemEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlacementAcEntityCopyWith<$Res> get ac {
  
  return $PlacementAcEntityCopyWith<$Res>(_self.ac, (value) {
    return _then(_self.copyWith(ac: value));
  });
}
}

/// @nodoc
mixin _$PlacementDeviceEntity {

 int get deviceId; String get deviceName; String get hardware; String get chipId;
/// Create a copy of PlacementDeviceEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlacementDeviceEntityCopyWith<PlacementDeviceEntity> get copyWith => _$PlacementDeviceEntityCopyWithImpl<PlacementDeviceEntity>(this as PlacementDeviceEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlacementDeviceEntity&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.hardware, hardware) || other.hardware == hardware)&&(identical(other.chipId, chipId) || other.chipId == chipId));
}


@override
int get hashCode => Object.hash(runtimeType,deviceId,deviceName,hardware,chipId);

@override
String toString() {
  return 'PlacementDeviceEntity(deviceId: $deviceId, deviceName: $deviceName, hardware: $hardware, chipId: $chipId)';
}


}

/// @nodoc
abstract mixin class $PlacementDeviceEntityCopyWith<$Res>  {
  factory $PlacementDeviceEntityCopyWith(PlacementDeviceEntity value, $Res Function(PlacementDeviceEntity) _then) = _$PlacementDeviceEntityCopyWithImpl;
@useResult
$Res call({
 int deviceId, String deviceName, String hardware, String chipId
});




}
/// @nodoc
class _$PlacementDeviceEntityCopyWithImpl<$Res>
    implements $PlacementDeviceEntityCopyWith<$Res> {
  _$PlacementDeviceEntityCopyWithImpl(this._self, this._then);

  final PlacementDeviceEntity _self;
  final $Res Function(PlacementDeviceEntity) _then;

/// Create a copy of PlacementDeviceEntity
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


/// Adds pattern-matching-related methods to [PlacementDeviceEntity].
extension PlacementDeviceEntityPatterns on PlacementDeviceEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlacementDeviceEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlacementDeviceEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlacementDeviceEntity value)  $default,){
final _that = this;
switch (_that) {
case _PlacementDeviceEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlacementDeviceEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PlacementDeviceEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int deviceId,  String deviceName,  String hardware,  String chipId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlacementDeviceEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int deviceId,  String deviceName,  String hardware,  String chipId)  $default,) {final _that = this;
switch (_that) {
case _PlacementDeviceEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int deviceId,  String deviceName,  String hardware,  String chipId)?  $default,) {final _that = this;
switch (_that) {
case _PlacementDeviceEntity() when $default != null:
return $default(_that.deviceId,_that.deviceName,_that.hardware,_that.chipId);case _:
  return null;

}
}

}

/// @nodoc


class _PlacementDeviceEntity implements PlacementDeviceEntity {
  const _PlacementDeviceEntity({required this.deviceId, required this.deviceName, required this.hardware, required this.chipId});
  

@override final  int deviceId;
@override final  String deviceName;
@override final  String hardware;
@override final  String chipId;

/// Create a copy of PlacementDeviceEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlacementDeviceEntityCopyWith<_PlacementDeviceEntity> get copyWith => __$PlacementDeviceEntityCopyWithImpl<_PlacementDeviceEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlacementDeviceEntity&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.hardware, hardware) || other.hardware == hardware)&&(identical(other.chipId, chipId) || other.chipId == chipId));
}


@override
int get hashCode => Object.hash(runtimeType,deviceId,deviceName,hardware,chipId);

@override
String toString() {
  return 'PlacementDeviceEntity(deviceId: $deviceId, deviceName: $deviceName, hardware: $hardware, chipId: $chipId)';
}


}

/// @nodoc
abstract mixin class _$PlacementDeviceEntityCopyWith<$Res> implements $PlacementDeviceEntityCopyWith<$Res> {
  factory _$PlacementDeviceEntityCopyWith(_PlacementDeviceEntity value, $Res Function(_PlacementDeviceEntity) _then) = __$PlacementDeviceEntityCopyWithImpl;
@override @useResult
$Res call({
 int deviceId, String deviceName, String hardware, String chipId
});




}
/// @nodoc
class __$PlacementDeviceEntityCopyWithImpl<$Res>
    implements _$PlacementDeviceEntityCopyWith<$Res> {
  __$PlacementDeviceEntityCopyWithImpl(this._self, this._then);

  final _PlacementDeviceEntity _self;
  final $Res Function(_PlacementDeviceEntity) _then;

/// Create a copy of PlacementDeviceEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deviceId = null,Object? deviceName = null,Object? hardware = null,Object? chipId = null,}) {
  return _then(_PlacementDeviceEntity(
deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as int,deviceName: null == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String,hardware: null == hardware ? _self.hardware : hardware // ignore: cast_nullable_to_non_nullable
as String,chipId: null == chipId ? _self.chipId : chipId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$PlacementAcEntity {

 int get acId; String get acName; String get pkAc; String? get anomaly; String? get lockTempSetting; int? get timerId; String? get timerName; int? get remoteId; int get categoryId; String get categoryName; String get categoryImage; int get brandId; String get brandName; String get brandImage; dynamic get autoOnSettings; PlacementAcDataEntity? get data;
/// Create a copy of PlacementAcEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlacementAcEntityCopyWith<PlacementAcEntity> get copyWith => _$PlacementAcEntityCopyWithImpl<PlacementAcEntity>(this as PlacementAcEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlacementAcEntity&&(identical(other.acId, acId) || other.acId == acId)&&(identical(other.acName, acName) || other.acName == acName)&&(identical(other.pkAc, pkAc) || other.pkAc == pkAc)&&(identical(other.anomaly, anomaly) || other.anomaly == anomaly)&&(identical(other.lockTempSetting, lockTempSetting) || other.lockTempSetting == lockTempSetting)&&(identical(other.timerId, timerId) || other.timerId == timerId)&&(identical(other.timerName, timerName) || other.timerName == timerName)&&(identical(other.remoteId, remoteId) || other.remoteId == remoteId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.categoryImage, categoryImage) || other.categoryImage == categoryImage)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.brandImage, brandImage) || other.brandImage == brandImage)&&const DeepCollectionEquality().equals(other.autoOnSettings, autoOnSettings)&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,acId,acName,pkAc,anomaly,lockTempSetting,timerId,timerName,remoteId,categoryId,categoryName,categoryImage,brandId,brandName,brandImage,const DeepCollectionEquality().hash(autoOnSettings),data);

@override
String toString() {
  return 'PlacementAcEntity(acId: $acId, acName: $acName, pkAc: $pkAc, anomaly: $anomaly, lockTempSetting: $lockTempSetting, timerId: $timerId, timerName: $timerName, remoteId: $remoteId, categoryId: $categoryId, categoryName: $categoryName, categoryImage: $categoryImage, brandId: $brandId, brandName: $brandName, brandImage: $brandImage, autoOnSettings: $autoOnSettings, data: $data)';
}


}

/// @nodoc
abstract mixin class $PlacementAcEntityCopyWith<$Res>  {
  factory $PlacementAcEntityCopyWith(PlacementAcEntity value, $Res Function(PlacementAcEntity) _then) = _$PlacementAcEntityCopyWithImpl;
@useResult
$Res call({
 int acId, String acName, String pkAc, String? anomaly, String? lockTempSetting, int? timerId, String? timerName, int? remoteId, int categoryId, String categoryName, String categoryImage, int brandId, String brandName, String brandImage, dynamic autoOnSettings, PlacementAcDataEntity? data
});


$PlacementAcDataEntityCopyWith<$Res>? get data;

}
/// @nodoc
class _$PlacementAcEntityCopyWithImpl<$Res>
    implements $PlacementAcEntityCopyWith<$Res> {
  _$PlacementAcEntityCopyWithImpl(this._self, this._then);

  final PlacementAcEntity _self;
  final $Res Function(PlacementAcEntity) _then;

/// Create a copy of PlacementAcEntity
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
as PlacementAcDataEntity?,
  ));
}
/// Create a copy of PlacementAcEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlacementAcDataEntityCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $PlacementAcDataEntityCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [PlacementAcEntity].
extension PlacementAcEntityPatterns on PlacementAcEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlacementAcEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlacementAcEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlacementAcEntity value)  $default,){
final _that = this;
switch (_that) {
case _PlacementAcEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlacementAcEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PlacementAcEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int acId,  String acName,  String pkAc,  String? anomaly,  String? lockTempSetting,  int? timerId,  String? timerName,  int? remoteId,  int categoryId,  String categoryName,  String categoryImage,  int brandId,  String brandName,  String brandImage,  dynamic autoOnSettings,  PlacementAcDataEntity? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlacementAcEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int acId,  String acName,  String pkAc,  String? anomaly,  String? lockTempSetting,  int? timerId,  String? timerName,  int? remoteId,  int categoryId,  String categoryName,  String categoryImage,  int brandId,  String brandName,  String brandImage,  dynamic autoOnSettings,  PlacementAcDataEntity? data)  $default,) {final _that = this;
switch (_that) {
case _PlacementAcEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int acId,  String acName,  String pkAc,  String? anomaly,  String? lockTempSetting,  int? timerId,  String? timerName,  int? remoteId,  int categoryId,  String categoryName,  String categoryImage,  int brandId,  String brandName,  String brandImage,  dynamic autoOnSettings,  PlacementAcDataEntity? data)?  $default,) {final _that = this;
switch (_that) {
case _PlacementAcEntity() when $default != null:
return $default(_that.acId,_that.acName,_that.pkAc,_that.anomaly,_that.lockTempSetting,_that.timerId,_that.timerName,_that.remoteId,_that.categoryId,_that.categoryName,_that.categoryImage,_that.brandId,_that.brandName,_that.brandImage,_that.autoOnSettings,_that.data);case _:
  return null;

}
}

}

/// @nodoc


class _PlacementAcEntity implements PlacementAcEntity {
  const _PlacementAcEntity({required this.acId, required this.acName, required this.pkAc, this.anomaly, this.lockTempSetting, this.timerId, this.timerName, this.remoteId, required this.categoryId, required this.categoryName, required this.categoryImage, required this.brandId, required this.brandName, required this.brandImage, this.autoOnSettings, this.data});
  

@override final  int acId;
@override final  String acName;
@override final  String pkAc;
@override final  String? anomaly;
@override final  String? lockTempSetting;
@override final  int? timerId;
@override final  String? timerName;
@override final  int? remoteId;
@override final  int categoryId;
@override final  String categoryName;
@override final  String categoryImage;
@override final  int brandId;
@override final  String brandName;
@override final  String brandImage;
@override final  dynamic autoOnSettings;
@override final  PlacementAcDataEntity? data;

/// Create a copy of PlacementAcEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlacementAcEntityCopyWith<_PlacementAcEntity> get copyWith => __$PlacementAcEntityCopyWithImpl<_PlacementAcEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlacementAcEntity&&(identical(other.acId, acId) || other.acId == acId)&&(identical(other.acName, acName) || other.acName == acName)&&(identical(other.pkAc, pkAc) || other.pkAc == pkAc)&&(identical(other.anomaly, anomaly) || other.anomaly == anomaly)&&(identical(other.lockTempSetting, lockTempSetting) || other.lockTempSetting == lockTempSetting)&&(identical(other.timerId, timerId) || other.timerId == timerId)&&(identical(other.timerName, timerName) || other.timerName == timerName)&&(identical(other.remoteId, remoteId) || other.remoteId == remoteId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.categoryImage, categoryImage) || other.categoryImage == categoryImage)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.brandImage, brandImage) || other.brandImage == brandImage)&&const DeepCollectionEquality().equals(other.autoOnSettings, autoOnSettings)&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,acId,acName,pkAc,anomaly,lockTempSetting,timerId,timerName,remoteId,categoryId,categoryName,categoryImage,brandId,brandName,brandImage,const DeepCollectionEquality().hash(autoOnSettings),data);

@override
String toString() {
  return 'PlacementAcEntity(acId: $acId, acName: $acName, pkAc: $pkAc, anomaly: $anomaly, lockTempSetting: $lockTempSetting, timerId: $timerId, timerName: $timerName, remoteId: $remoteId, categoryId: $categoryId, categoryName: $categoryName, categoryImage: $categoryImage, brandId: $brandId, brandName: $brandName, brandImage: $brandImage, autoOnSettings: $autoOnSettings, data: $data)';
}


}

/// @nodoc
abstract mixin class _$PlacementAcEntityCopyWith<$Res> implements $PlacementAcEntityCopyWith<$Res> {
  factory _$PlacementAcEntityCopyWith(_PlacementAcEntity value, $Res Function(_PlacementAcEntity) _then) = __$PlacementAcEntityCopyWithImpl;
@override @useResult
$Res call({
 int acId, String acName, String pkAc, String? anomaly, String? lockTempSetting, int? timerId, String? timerName, int? remoteId, int categoryId, String categoryName, String categoryImage, int brandId, String brandName, String brandImage, dynamic autoOnSettings, PlacementAcDataEntity? data
});


@override $PlacementAcDataEntityCopyWith<$Res>? get data;

}
/// @nodoc
class __$PlacementAcEntityCopyWithImpl<$Res>
    implements _$PlacementAcEntityCopyWith<$Res> {
  __$PlacementAcEntityCopyWithImpl(this._self, this._then);

  final _PlacementAcEntity _self;
  final $Res Function(_PlacementAcEntity) _then;

/// Create a copy of PlacementAcEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? acId = null,Object? acName = null,Object? pkAc = null,Object? anomaly = freezed,Object? lockTempSetting = freezed,Object? timerId = freezed,Object? timerName = freezed,Object? remoteId = freezed,Object? categoryId = null,Object? categoryName = null,Object? categoryImage = null,Object? brandId = null,Object? brandName = null,Object? brandImage = null,Object? autoOnSettings = freezed,Object? data = freezed,}) {
  return _then(_PlacementAcEntity(
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
as PlacementAcDataEntity?,
  ));
}

/// Create a copy of PlacementAcEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlacementAcDataEntityCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $PlacementAcDataEntityCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc
mixin _$PlacementAcDataEntity {

 double? get current; double? get watt; double? get returnTemp; double? get supplyTemp; String? get condition; String? get status; bool? get onState; bool? get isOnline; int? get setPoint;
/// Create a copy of PlacementAcDataEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlacementAcDataEntityCopyWith<PlacementAcDataEntity> get copyWith => _$PlacementAcDataEntityCopyWithImpl<PlacementAcDataEntity>(this as PlacementAcDataEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlacementAcDataEntity&&(identical(other.current, current) || other.current == current)&&(identical(other.watt, watt) || other.watt == watt)&&(identical(other.returnTemp, returnTemp) || other.returnTemp == returnTemp)&&(identical(other.supplyTemp, supplyTemp) || other.supplyTemp == supplyTemp)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.status, status) || other.status == status)&&(identical(other.onState, onState) || other.onState == onState)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.setPoint, setPoint) || other.setPoint == setPoint));
}


@override
int get hashCode => Object.hash(runtimeType,current,watt,returnTemp,supplyTemp,condition,status,onState,isOnline,setPoint);

@override
String toString() {
  return 'PlacementAcDataEntity(current: $current, watt: $watt, returnTemp: $returnTemp, supplyTemp: $supplyTemp, condition: $condition, status: $status, onState: $onState, isOnline: $isOnline, setPoint: $setPoint)';
}


}

/// @nodoc
abstract mixin class $PlacementAcDataEntityCopyWith<$Res>  {
  factory $PlacementAcDataEntityCopyWith(PlacementAcDataEntity value, $Res Function(PlacementAcDataEntity) _then) = _$PlacementAcDataEntityCopyWithImpl;
@useResult
$Res call({
 double? current, double? watt, double? returnTemp, double? supplyTemp, String? condition, String? status, bool? onState, bool? isOnline, int? setPoint
});




}
/// @nodoc
class _$PlacementAcDataEntityCopyWithImpl<$Res>
    implements $PlacementAcDataEntityCopyWith<$Res> {
  _$PlacementAcDataEntityCopyWithImpl(this._self, this._then);

  final PlacementAcDataEntity _self;
  final $Res Function(PlacementAcDataEntity) _then;

/// Create a copy of PlacementAcDataEntity
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


/// Adds pattern-matching-related methods to [PlacementAcDataEntity].
extension PlacementAcDataEntityPatterns on PlacementAcDataEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlacementAcDataEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlacementAcDataEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlacementAcDataEntity value)  $default,){
final _that = this;
switch (_that) {
case _PlacementAcDataEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlacementAcDataEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PlacementAcDataEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? current,  double? watt,  double? returnTemp,  double? supplyTemp,  String? condition,  String? status,  bool? onState,  bool? isOnline,  int? setPoint)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlacementAcDataEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? current,  double? watt,  double? returnTemp,  double? supplyTemp,  String? condition,  String? status,  bool? onState,  bool? isOnline,  int? setPoint)  $default,) {final _that = this;
switch (_that) {
case _PlacementAcDataEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? current,  double? watt,  double? returnTemp,  double? supplyTemp,  String? condition,  String? status,  bool? onState,  bool? isOnline,  int? setPoint)?  $default,) {final _that = this;
switch (_that) {
case _PlacementAcDataEntity() when $default != null:
return $default(_that.current,_that.watt,_that.returnTemp,_that.supplyTemp,_that.condition,_that.status,_that.onState,_that.isOnline,_that.setPoint);case _:
  return null;

}
}

}

/// @nodoc


class _PlacementAcDataEntity implements PlacementAcDataEntity {
  const _PlacementAcDataEntity({this.current, this.watt, this.returnTemp, this.supplyTemp, this.condition, this.status, this.onState, this.isOnline, this.setPoint});
  

@override final  double? current;
@override final  double? watt;
@override final  double? returnTemp;
@override final  double? supplyTemp;
@override final  String? condition;
@override final  String? status;
@override final  bool? onState;
@override final  bool? isOnline;
@override final  int? setPoint;

/// Create a copy of PlacementAcDataEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlacementAcDataEntityCopyWith<_PlacementAcDataEntity> get copyWith => __$PlacementAcDataEntityCopyWithImpl<_PlacementAcDataEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlacementAcDataEntity&&(identical(other.current, current) || other.current == current)&&(identical(other.watt, watt) || other.watt == watt)&&(identical(other.returnTemp, returnTemp) || other.returnTemp == returnTemp)&&(identical(other.supplyTemp, supplyTemp) || other.supplyTemp == supplyTemp)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.status, status) || other.status == status)&&(identical(other.onState, onState) || other.onState == onState)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.setPoint, setPoint) || other.setPoint == setPoint));
}


@override
int get hashCode => Object.hash(runtimeType,current,watt,returnTemp,supplyTemp,condition,status,onState,isOnline,setPoint);

@override
String toString() {
  return 'PlacementAcDataEntity(current: $current, watt: $watt, returnTemp: $returnTemp, supplyTemp: $supplyTemp, condition: $condition, status: $status, onState: $onState, isOnline: $isOnline, setPoint: $setPoint)';
}


}

/// @nodoc
abstract mixin class _$PlacementAcDataEntityCopyWith<$Res> implements $PlacementAcDataEntityCopyWith<$Res> {
  factory _$PlacementAcDataEntityCopyWith(_PlacementAcDataEntity value, $Res Function(_PlacementAcDataEntity) _then) = __$PlacementAcDataEntityCopyWithImpl;
@override @useResult
$Res call({
 double? current, double? watt, double? returnTemp, double? supplyTemp, String? condition, String? status, bool? onState, bool? isOnline, int? setPoint
});




}
/// @nodoc
class __$PlacementAcDataEntityCopyWithImpl<$Res>
    implements _$PlacementAcDataEntityCopyWith<$Res> {
  __$PlacementAcDataEntityCopyWithImpl(this._self, this._then);

  final _PlacementAcDataEntity _self;
  final $Res Function(_PlacementAcDataEntity) _then;

/// Create a copy of PlacementAcDataEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? current = freezed,Object? watt = freezed,Object? returnTemp = freezed,Object? supplyTemp = freezed,Object? condition = freezed,Object? status = freezed,Object? onState = freezed,Object? isOnline = freezed,Object? setPoint = freezed,}) {
  return _then(_PlacementAcDataEntity(
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
