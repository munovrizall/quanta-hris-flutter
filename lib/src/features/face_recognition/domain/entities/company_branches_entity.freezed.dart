// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_branches_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CompanyBranchesEntity {

 CompanyEntity get company; List<BranchEntity> get branches;
/// Create a copy of CompanyBranchesEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyBranchesEntityCopyWith<CompanyBranchesEntity> get copyWith => _$CompanyBranchesEntityCopyWithImpl<CompanyBranchesEntity>(this as CompanyBranchesEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyBranchesEntity&&(identical(other.company, company) || other.company == company)&&const DeepCollectionEquality().equals(other.branches, branches));
}


@override
int get hashCode => Object.hash(runtimeType,company,const DeepCollectionEquality().hash(branches));

@override
String toString() {
  return 'CompanyBranchesEntity(company: $company, branches: $branches)';
}


}

/// @nodoc
abstract mixin class $CompanyBranchesEntityCopyWith<$Res>  {
  factory $CompanyBranchesEntityCopyWith(CompanyBranchesEntity value, $Res Function(CompanyBranchesEntity) _then) = _$CompanyBranchesEntityCopyWithImpl;
@useResult
$Res call({
 CompanyEntity company, List<BranchEntity> branches
});


$CompanyEntityCopyWith<$Res> get company;

}
/// @nodoc
class _$CompanyBranchesEntityCopyWithImpl<$Res>
    implements $CompanyBranchesEntityCopyWith<$Res> {
  _$CompanyBranchesEntityCopyWithImpl(this._self, this._then);

  final CompanyBranchesEntity _self;
  final $Res Function(CompanyBranchesEntity) _then;

/// Create a copy of CompanyBranchesEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? company = null,Object? branches = null,}) {
  return _then(_self.copyWith(
company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as CompanyEntity,branches: null == branches ? _self.branches : branches // ignore: cast_nullable_to_non_nullable
as List<BranchEntity>,
  ));
}
/// Create a copy of CompanyBranchesEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyEntityCopyWith<$Res> get company {
  
  return $CompanyEntityCopyWith<$Res>(_self.company, (value) {
    return _then(_self.copyWith(company: value));
  });
}
}


/// Adds pattern-matching-related methods to [CompanyBranchesEntity].
extension CompanyBranchesEntityPatterns on CompanyBranchesEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyBranchesEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyBranchesEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyBranchesEntity value)  $default,){
final _that = this;
switch (_that) {
case _CompanyBranchesEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyBranchesEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyBranchesEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CompanyEntity company,  List<BranchEntity> branches)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyBranchesEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CompanyEntity company,  List<BranchEntity> branches)  $default,) {final _that = this;
switch (_that) {
case _CompanyBranchesEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CompanyEntity company,  List<BranchEntity> branches)?  $default,) {final _that = this;
switch (_that) {
case _CompanyBranchesEntity() when $default != null:
return $default(_that.company,_that.branches);case _:
  return null;

}
}

}

/// @nodoc


class _CompanyBranchesEntity implements CompanyBranchesEntity {
  const _CompanyBranchesEntity({required this.company, required final  List<BranchEntity> branches}): _branches = branches;
  

@override final  CompanyEntity company;
 final  List<BranchEntity> _branches;
@override List<BranchEntity> get branches {
  if (_branches is EqualUnmodifiableListView) return _branches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_branches);
}


/// Create a copy of CompanyBranchesEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyBranchesEntityCopyWith<_CompanyBranchesEntity> get copyWith => __$CompanyBranchesEntityCopyWithImpl<_CompanyBranchesEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyBranchesEntity&&(identical(other.company, company) || other.company == company)&&const DeepCollectionEquality().equals(other._branches, _branches));
}


@override
int get hashCode => Object.hash(runtimeType,company,const DeepCollectionEquality().hash(_branches));

@override
String toString() {
  return 'CompanyBranchesEntity(company: $company, branches: $branches)';
}


}

/// @nodoc
abstract mixin class _$CompanyBranchesEntityCopyWith<$Res> implements $CompanyBranchesEntityCopyWith<$Res> {
  factory _$CompanyBranchesEntityCopyWith(_CompanyBranchesEntity value, $Res Function(_CompanyBranchesEntity) _then) = __$CompanyBranchesEntityCopyWithImpl;
@override @useResult
$Res call({
 CompanyEntity company, List<BranchEntity> branches
});


@override $CompanyEntityCopyWith<$Res> get company;

}
/// @nodoc
class __$CompanyBranchesEntityCopyWithImpl<$Res>
    implements _$CompanyBranchesEntityCopyWith<$Res> {
  __$CompanyBranchesEntityCopyWithImpl(this._self, this._then);

  final _CompanyBranchesEntity _self;
  final $Res Function(_CompanyBranchesEntity) _then;

/// Create a copy of CompanyBranchesEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? company = null,Object? branches = null,}) {
  return _then(_CompanyBranchesEntity(
company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as CompanyEntity,branches: null == branches ? _self._branches : branches // ignore: cast_nullable_to_non_nullable
as List<BranchEntity>,
  ));
}

/// Create a copy of CompanyBranchesEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyEntityCopyWith<$Res> get company {
  
  return $CompanyEntityCopyWith<$Res>(_self.company, (value) {
    return _then(_self.copyWith(company: value));
  });
}
}

/// @nodoc
mixin _$CompanyEntity {

 String get companyId; String get companyName;
/// Create a copy of CompanyEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyEntityCopyWith<CompanyEntity> get copyWith => _$CompanyEntityCopyWithImpl<CompanyEntity>(this as CompanyEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyEntity&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.companyName, companyName) || other.companyName == companyName));
}


@override
int get hashCode => Object.hash(runtimeType,companyId,companyName);

@override
String toString() {
  return 'CompanyEntity(companyId: $companyId, companyName: $companyName)';
}


}

/// @nodoc
abstract mixin class $CompanyEntityCopyWith<$Res>  {
  factory $CompanyEntityCopyWith(CompanyEntity value, $Res Function(CompanyEntity) _then) = _$CompanyEntityCopyWithImpl;
@useResult
$Res call({
 String companyId, String companyName
});




}
/// @nodoc
class _$CompanyEntityCopyWithImpl<$Res>
    implements $CompanyEntityCopyWith<$Res> {
  _$CompanyEntityCopyWithImpl(this._self, this._then);

  final CompanyEntity _self;
  final $Res Function(CompanyEntity) _then;

/// Create a copy of CompanyEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? companyId = null,Object? companyName = null,}) {
  return _then(_self.copyWith(
companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyEntity].
extension CompanyEntityPatterns on CompanyEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyEntity value)  $default,){
final _that = this;
switch (_that) {
case _CompanyEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String companyId,  String companyName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String companyId,  String companyName)  $default,) {final _that = this;
switch (_that) {
case _CompanyEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String companyId,  String companyName)?  $default,) {final _that = this;
switch (_that) {
case _CompanyEntity() when $default != null:
return $default(_that.companyId,_that.companyName);case _:
  return null;

}
}

}

/// @nodoc


class _CompanyEntity implements CompanyEntity {
  const _CompanyEntity({required this.companyId, required this.companyName});
  

@override final  String companyId;
@override final  String companyName;

/// Create a copy of CompanyEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyEntityCopyWith<_CompanyEntity> get copyWith => __$CompanyEntityCopyWithImpl<_CompanyEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyEntity&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.companyName, companyName) || other.companyName == companyName));
}


@override
int get hashCode => Object.hash(runtimeType,companyId,companyName);

@override
String toString() {
  return 'CompanyEntity(companyId: $companyId, companyName: $companyName)';
}


}

/// @nodoc
abstract mixin class _$CompanyEntityCopyWith<$Res> implements $CompanyEntityCopyWith<$Res> {
  factory _$CompanyEntityCopyWith(_CompanyEntity value, $Res Function(_CompanyEntity) _then) = __$CompanyEntityCopyWithImpl;
@override @useResult
$Res call({
 String companyId, String companyName
});




}
/// @nodoc
class __$CompanyEntityCopyWithImpl<$Res>
    implements _$CompanyEntityCopyWith<$Res> {
  __$CompanyEntityCopyWithImpl(this._self, this._then);

  final _CompanyEntity _self;
  final $Res Function(_CompanyEntity) _then;

/// Create a copy of CompanyEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? companyId = null,Object? companyName = null,}) {
  return _then(_CompanyEntity(
companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$BranchEntity {

 String get branchId; String get branchName; String get address; double get latitude; double get longitude; int get radiusLocation;
/// Create a copy of BranchEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BranchEntityCopyWith<BranchEntity> get copyWith => _$BranchEntityCopyWithImpl<BranchEntity>(this as BranchEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchEntity&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.branchName, branchName) || other.branchName == branchName)&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.radiusLocation, radiusLocation) || other.radiusLocation == radiusLocation));
}


@override
int get hashCode => Object.hash(runtimeType,branchId,branchName,address,latitude,longitude,radiusLocation);

@override
String toString() {
  return 'BranchEntity(branchId: $branchId, branchName: $branchName, address: $address, latitude: $latitude, longitude: $longitude, radiusLocation: $radiusLocation)';
}


}

/// @nodoc
abstract mixin class $BranchEntityCopyWith<$Res>  {
  factory $BranchEntityCopyWith(BranchEntity value, $Res Function(BranchEntity) _then) = _$BranchEntityCopyWithImpl;
@useResult
$Res call({
 String branchId, String branchName, String address, double latitude, double longitude, int radiusLocation
});




}
/// @nodoc
class _$BranchEntityCopyWithImpl<$Res>
    implements $BranchEntityCopyWith<$Res> {
  _$BranchEntityCopyWithImpl(this._self, this._then);

  final BranchEntity _self;
  final $Res Function(BranchEntity) _then;

/// Create a copy of BranchEntity
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


/// Adds pattern-matching-related methods to [BranchEntity].
extension BranchEntityPatterns on BranchEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BranchEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BranchEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BranchEntity value)  $default,){
final _that = this;
switch (_that) {
case _BranchEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BranchEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BranchEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String branchId,  String branchName,  String address,  double latitude,  double longitude,  int radiusLocation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BranchEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String branchId,  String branchName,  String address,  double latitude,  double longitude,  int radiusLocation)  $default,) {final _that = this;
switch (_that) {
case _BranchEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String branchId,  String branchName,  String address,  double latitude,  double longitude,  int radiusLocation)?  $default,) {final _that = this;
switch (_that) {
case _BranchEntity() when $default != null:
return $default(_that.branchId,_that.branchName,_that.address,_that.latitude,_that.longitude,_that.radiusLocation);case _:
  return null;

}
}

}

/// @nodoc


class _BranchEntity implements BranchEntity {
  const _BranchEntity({required this.branchId, required this.branchName, required this.address, required this.latitude, required this.longitude, required this.radiusLocation});
  

@override final  String branchId;
@override final  String branchName;
@override final  String address;
@override final  double latitude;
@override final  double longitude;
@override final  int radiusLocation;

/// Create a copy of BranchEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BranchEntityCopyWith<_BranchEntity> get copyWith => __$BranchEntityCopyWithImpl<_BranchEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BranchEntity&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.branchName, branchName) || other.branchName == branchName)&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.radiusLocation, radiusLocation) || other.radiusLocation == radiusLocation));
}


@override
int get hashCode => Object.hash(runtimeType,branchId,branchName,address,latitude,longitude,radiusLocation);

@override
String toString() {
  return 'BranchEntity(branchId: $branchId, branchName: $branchName, address: $address, latitude: $latitude, longitude: $longitude, radiusLocation: $radiusLocation)';
}


}

/// @nodoc
abstract mixin class _$BranchEntityCopyWith<$Res> implements $BranchEntityCopyWith<$Res> {
  factory _$BranchEntityCopyWith(_BranchEntity value, $Res Function(_BranchEntity) _then) = __$BranchEntityCopyWithImpl;
@override @useResult
$Res call({
 String branchId, String branchName, String address, double latitude, double longitude, int radiusLocation
});




}
/// @nodoc
class __$BranchEntityCopyWithImpl<$Res>
    implements _$BranchEntityCopyWith<$Res> {
  __$BranchEntityCopyWithImpl(this._self, this._then);

  final _BranchEntity _self;
  final $Res Function(_BranchEntity) _then;

/// Create a copy of BranchEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? branchId = null,Object? branchName = null,Object? address = null,Object? latitude = null,Object? longitude = null,Object? radiusLocation = null,}) {
  return _then(_BranchEntity(
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
