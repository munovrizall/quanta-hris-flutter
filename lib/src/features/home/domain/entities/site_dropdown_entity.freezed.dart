// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'site_dropdown_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SiteDropdownEntity {

 List<SiteDropdownItemEntity> get sites;
/// Create a copy of SiteDropdownEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SiteDropdownEntityCopyWith<SiteDropdownEntity> get copyWith => _$SiteDropdownEntityCopyWithImpl<SiteDropdownEntity>(this as SiteDropdownEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SiteDropdownEntity&&const DeepCollectionEquality().equals(other.sites, sites));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(sites));

@override
String toString() {
  return 'SiteDropdownEntity(sites: $sites)';
}


}

/// @nodoc
abstract mixin class $SiteDropdownEntityCopyWith<$Res>  {
  factory $SiteDropdownEntityCopyWith(SiteDropdownEntity value, $Res Function(SiteDropdownEntity) _then) = _$SiteDropdownEntityCopyWithImpl;
@useResult
$Res call({
 List<SiteDropdownItemEntity> sites
});




}
/// @nodoc
class _$SiteDropdownEntityCopyWithImpl<$Res>
    implements $SiteDropdownEntityCopyWith<$Res> {
  _$SiteDropdownEntityCopyWithImpl(this._self, this._then);

  final SiteDropdownEntity _self;
  final $Res Function(SiteDropdownEntity) _then;

/// Create a copy of SiteDropdownEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sites = null,}) {
  return _then(_self.copyWith(
sites: null == sites ? _self.sites : sites // ignore: cast_nullable_to_non_nullable
as List<SiteDropdownItemEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [SiteDropdownEntity].
extension SiteDropdownEntityPatterns on SiteDropdownEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SiteDropdownEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SiteDropdownEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SiteDropdownEntity value)  $default,){
final _that = this;
switch (_that) {
case _SiteDropdownEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SiteDropdownEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SiteDropdownEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SiteDropdownItemEntity> sites)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SiteDropdownEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SiteDropdownItemEntity> sites)  $default,) {final _that = this;
switch (_that) {
case _SiteDropdownEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SiteDropdownItemEntity> sites)?  $default,) {final _that = this;
switch (_that) {
case _SiteDropdownEntity() when $default != null:
return $default(_that.sites);case _:
  return null;

}
}

}

/// @nodoc


class _SiteDropdownEntity implements SiteDropdownEntity {
  const _SiteDropdownEntity({required final  List<SiteDropdownItemEntity> sites}): _sites = sites;
  

 final  List<SiteDropdownItemEntity> _sites;
@override List<SiteDropdownItemEntity> get sites {
  if (_sites is EqualUnmodifiableListView) return _sites;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sites);
}


/// Create a copy of SiteDropdownEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SiteDropdownEntityCopyWith<_SiteDropdownEntity> get copyWith => __$SiteDropdownEntityCopyWithImpl<_SiteDropdownEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SiteDropdownEntity&&const DeepCollectionEquality().equals(other._sites, _sites));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sites));

@override
String toString() {
  return 'SiteDropdownEntity(sites: $sites)';
}


}

/// @nodoc
abstract mixin class _$SiteDropdownEntityCopyWith<$Res> implements $SiteDropdownEntityCopyWith<$Res> {
  factory _$SiteDropdownEntityCopyWith(_SiteDropdownEntity value, $Res Function(_SiteDropdownEntity) _then) = __$SiteDropdownEntityCopyWithImpl;
@override @useResult
$Res call({
 List<SiteDropdownItemEntity> sites
});




}
/// @nodoc
class __$SiteDropdownEntityCopyWithImpl<$Res>
    implements _$SiteDropdownEntityCopyWith<$Res> {
  __$SiteDropdownEntityCopyWithImpl(this._self, this._then);

  final _SiteDropdownEntity _self;
  final $Res Function(_SiteDropdownEntity) _then;

/// Create a copy of SiteDropdownEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sites = null,}) {
  return _then(_SiteDropdownEntity(
sites: null == sites ? _self._sites : sites // ignore: cast_nullable_to_non_nullable
as List<SiteDropdownItemEntity>,
  ));
}


}

/// @nodoc
mixin _$SiteDropdownItemEntity {

 int get siteId; String get siteName; int get clientId; int get placementCount;
/// Create a copy of SiteDropdownItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SiteDropdownItemEntityCopyWith<SiteDropdownItemEntity> get copyWith => _$SiteDropdownItemEntityCopyWithImpl<SiteDropdownItemEntity>(this as SiteDropdownItemEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SiteDropdownItemEntity&&(identical(other.siteId, siteId) || other.siteId == siteId)&&(identical(other.siteName, siteName) || other.siteName == siteName)&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.placementCount, placementCount) || other.placementCount == placementCount));
}


@override
int get hashCode => Object.hash(runtimeType,siteId,siteName,clientId,placementCount);

@override
String toString() {
  return 'SiteDropdownItemEntity(siteId: $siteId, siteName: $siteName, clientId: $clientId, placementCount: $placementCount)';
}


}

/// @nodoc
abstract mixin class $SiteDropdownItemEntityCopyWith<$Res>  {
  factory $SiteDropdownItemEntityCopyWith(SiteDropdownItemEntity value, $Res Function(SiteDropdownItemEntity) _then) = _$SiteDropdownItemEntityCopyWithImpl;
@useResult
$Res call({
 int siteId, String siteName, int clientId, int placementCount
});




}
/// @nodoc
class _$SiteDropdownItemEntityCopyWithImpl<$Res>
    implements $SiteDropdownItemEntityCopyWith<$Res> {
  _$SiteDropdownItemEntityCopyWithImpl(this._self, this._then);

  final SiteDropdownItemEntity _self;
  final $Res Function(SiteDropdownItemEntity) _then;

/// Create a copy of SiteDropdownItemEntity
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


/// Adds pattern-matching-related methods to [SiteDropdownItemEntity].
extension SiteDropdownItemEntityPatterns on SiteDropdownItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SiteDropdownItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SiteDropdownItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SiteDropdownItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _SiteDropdownItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SiteDropdownItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SiteDropdownItemEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int siteId,  String siteName,  int clientId,  int placementCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SiteDropdownItemEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int siteId,  String siteName,  int clientId,  int placementCount)  $default,) {final _that = this;
switch (_that) {
case _SiteDropdownItemEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int siteId,  String siteName,  int clientId,  int placementCount)?  $default,) {final _that = this;
switch (_that) {
case _SiteDropdownItemEntity() when $default != null:
return $default(_that.siteId,_that.siteName,_that.clientId,_that.placementCount);case _:
  return null;

}
}

}

/// @nodoc


class _SiteDropdownItemEntity implements SiteDropdownItemEntity {
  const _SiteDropdownItemEntity({required this.siteId, required this.siteName, required this.clientId, required this.placementCount});
  

@override final  int siteId;
@override final  String siteName;
@override final  int clientId;
@override final  int placementCount;

/// Create a copy of SiteDropdownItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SiteDropdownItemEntityCopyWith<_SiteDropdownItemEntity> get copyWith => __$SiteDropdownItemEntityCopyWithImpl<_SiteDropdownItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SiteDropdownItemEntity&&(identical(other.siteId, siteId) || other.siteId == siteId)&&(identical(other.siteName, siteName) || other.siteName == siteName)&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.placementCount, placementCount) || other.placementCount == placementCount));
}


@override
int get hashCode => Object.hash(runtimeType,siteId,siteName,clientId,placementCount);

@override
String toString() {
  return 'SiteDropdownItemEntity(siteId: $siteId, siteName: $siteName, clientId: $clientId, placementCount: $placementCount)';
}


}

/// @nodoc
abstract mixin class _$SiteDropdownItemEntityCopyWith<$Res> implements $SiteDropdownItemEntityCopyWith<$Res> {
  factory _$SiteDropdownItemEntityCopyWith(_SiteDropdownItemEntity value, $Res Function(_SiteDropdownItemEntity) _then) = __$SiteDropdownItemEntityCopyWithImpl;
@override @useResult
$Res call({
 int siteId, String siteName, int clientId, int placementCount
});




}
/// @nodoc
class __$SiteDropdownItemEntityCopyWithImpl<$Res>
    implements _$SiteDropdownItemEntityCopyWith<$Res> {
  __$SiteDropdownItemEntityCopyWithImpl(this._self, this._then);

  final _SiteDropdownItemEntity _self;
  final $Res Function(_SiteDropdownItemEntity) _then;

/// Create a copy of SiteDropdownItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? siteId = null,Object? siteName = null,Object? clientId = null,Object? placementCount = null,}) {
  return _then(_SiteDropdownItemEntity(
siteId: null == siteId ? _self.siteId : siteId // ignore: cast_nullable_to_non_nullable
as int,siteName: null == siteName ? _self.siteName : siteName // ignore: cast_nullable_to_non_nullable
as String,clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as int,placementCount: null == placementCount ? _self.placementCount : placementCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
