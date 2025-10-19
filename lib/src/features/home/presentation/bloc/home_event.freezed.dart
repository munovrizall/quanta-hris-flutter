// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchInitialData value)?  fetchInitialData,TResult Function( _FetchEmissionData value)?  fetchEmissionData,TResult Function( _FetchSiteDropdownData value)?  fetchSiteDropdownData,TResult Function( _FetchPlacementAcsmBySiteData value)?  fetchPlacementAcsmBySiteData,TResult Function( _ToggleAc value)?  toggleAcPower,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchInitialData() when fetchInitialData != null:
return fetchInitialData(_that);case _FetchEmissionData() when fetchEmissionData != null:
return fetchEmissionData(_that);case _FetchSiteDropdownData() when fetchSiteDropdownData != null:
return fetchSiteDropdownData(_that);case _FetchPlacementAcsmBySiteData() when fetchPlacementAcsmBySiteData != null:
return fetchPlacementAcsmBySiteData(_that);case _ToggleAc() when toggleAcPower != null:
return toggleAcPower(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchInitialData value)  fetchInitialData,required TResult Function( _FetchEmissionData value)  fetchEmissionData,required TResult Function( _FetchSiteDropdownData value)  fetchSiteDropdownData,required TResult Function( _FetchPlacementAcsmBySiteData value)  fetchPlacementAcsmBySiteData,required TResult Function( _ToggleAc value)  toggleAcPower,}){
final _that = this;
switch (_that) {
case _FetchInitialData():
return fetchInitialData(_that);case _FetchEmissionData():
return fetchEmissionData(_that);case _FetchSiteDropdownData():
return fetchSiteDropdownData(_that);case _FetchPlacementAcsmBySiteData():
return fetchPlacementAcsmBySiteData(_that);case _ToggleAc():
return toggleAcPower(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchInitialData value)?  fetchInitialData,TResult? Function( _FetchEmissionData value)?  fetchEmissionData,TResult? Function( _FetchSiteDropdownData value)?  fetchSiteDropdownData,TResult? Function( _FetchPlacementAcsmBySiteData value)?  fetchPlacementAcsmBySiteData,TResult? Function( _ToggleAc value)?  toggleAcPower,}){
final _that = this;
switch (_that) {
case _FetchInitialData() when fetchInitialData != null:
return fetchInitialData(_that);case _FetchEmissionData() when fetchEmissionData != null:
return fetchEmissionData(_that);case _FetchSiteDropdownData() when fetchSiteDropdownData != null:
return fetchSiteDropdownData(_that);case _FetchPlacementAcsmBySiteData() when fetchPlacementAcsmBySiteData != null:
return fetchPlacementAcsmBySiteData(_that);case _ToggleAc() when toggleAcPower != null:
return toggleAcPower(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchInitialData,TResult Function()?  fetchEmissionData,TResult Function()?  fetchSiteDropdownData,TResult Function( int clientId,  int siteId,  bool isPolling)?  fetchPlacementAcsmBySiteData,TResult Function( int acId,  bool powerState)?  toggleAcPower,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchInitialData() when fetchInitialData != null:
return fetchInitialData();case _FetchEmissionData() when fetchEmissionData != null:
return fetchEmissionData();case _FetchSiteDropdownData() when fetchSiteDropdownData != null:
return fetchSiteDropdownData();case _FetchPlacementAcsmBySiteData() when fetchPlacementAcsmBySiteData != null:
return fetchPlacementAcsmBySiteData(_that.clientId,_that.siteId,_that.isPolling);case _ToggleAc() when toggleAcPower != null:
return toggleAcPower(_that.acId,_that.powerState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchInitialData,required TResult Function()  fetchEmissionData,required TResult Function()  fetchSiteDropdownData,required TResult Function( int clientId,  int siteId,  bool isPolling)  fetchPlacementAcsmBySiteData,required TResult Function( int acId,  bool powerState)  toggleAcPower,}) {final _that = this;
switch (_that) {
case _FetchInitialData():
return fetchInitialData();case _FetchEmissionData():
return fetchEmissionData();case _FetchSiteDropdownData():
return fetchSiteDropdownData();case _FetchPlacementAcsmBySiteData():
return fetchPlacementAcsmBySiteData(_that.clientId,_that.siteId,_that.isPolling);case _ToggleAc():
return toggleAcPower(_that.acId,_that.powerState);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchInitialData,TResult? Function()?  fetchEmissionData,TResult? Function()?  fetchSiteDropdownData,TResult? Function( int clientId,  int siteId,  bool isPolling)?  fetchPlacementAcsmBySiteData,TResult? Function( int acId,  bool powerState)?  toggleAcPower,}) {final _that = this;
switch (_that) {
case _FetchInitialData() when fetchInitialData != null:
return fetchInitialData();case _FetchEmissionData() when fetchEmissionData != null:
return fetchEmissionData();case _FetchSiteDropdownData() when fetchSiteDropdownData != null:
return fetchSiteDropdownData();case _FetchPlacementAcsmBySiteData() when fetchPlacementAcsmBySiteData != null:
return fetchPlacementAcsmBySiteData(_that.clientId,_that.siteId,_that.isPolling);case _ToggleAc() when toggleAcPower != null:
return toggleAcPower(_that.acId,_that.powerState);case _:
  return null;

}
}

}

/// @nodoc


class _FetchInitialData implements HomeEvent {
  const _FetchInitialData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchInitialData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.fetchInitialData()';
}


}




/// @nodoc


class _FetchEmissionData implements HomeEvent {
  const _FetchEmissionData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchEmissionData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.fetchEmissionData()';
}


}




/// @nodoc


class _FetchSiteDropdownData implements HomeEvent {
  const _FetchSiteDropdownData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchSiteDropdownData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.fetchSiteDropdownData()';
}


}




/// @nodoc


class _FetchPlacementAcsmBySiteData implements HomeEvent {
  const _FetchPlacementAcsmBySiteData({required this.clientId, required this.siteId, this.isPolling = false});
  

 final  int clientId;
 final  int siteId;
@JsonKey() final  bool isPolling;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchPlacementAcsmBySiteDataCopyWith<_FetchPlacementAcsmBySiteData> get copyWith => __$FetchPlacementAcsmBySiteDataCopyWithImpl<_FetchPlacementAcsmBySiteData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchPlacementAcsmBySiteData&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.siteId, siteId) || other.siteId == siteId)&&(identical(other.isPolling, isPolling) || other.isPolling == isPolling));
}


@override
int get hashCode => Object.hash(runtimeType,clientId,siteId,isPolling);

@override
String toString() {
  return 'HomeEvent.fetchPlacementAcsmBySiteData(clientId: $clientId, siteId: $siteId, isPolling: $isPolling)';
}


}

/// @nodoc
abstract mixin class _$FetchPlacementAcsmBySiteDataCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$FetchPlacementAcsmBySiteDataCopyWith(_FetchPlacementAcsmBySiteData value, $Res Function(_FetchPlacementAcsmBySiteData) _then) = __$FetchPlacementAcsmBySiteDataCopyWithImpl;
@useResult
$Res call({
 int clientId, int siteId, bool isPolling
});




}
/// @nodoc
class __$FetchPlacementAcsmBySiteDataCopyWithImpl<$Res>
    implements _$FetchPlacementAcsmBySiteDataCopyWith<$Res> {
  __$FetchPlacementAcsmBySiteDataCopyWithImpl(this._self, this._then);

  final _FetchPlacementAcsmBySiteData _self;
  final $Res Function(_FetchPlacementAcsmBySiteData) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? clientId = null,Object? siteId = null,Object? isPolling = null,}) {
  return _then(_FetchPlacementAcsmBySiteData(
clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as int,siteId: null == siteId ? _self.siteId : siteId // ignore: cast_nullable_to_non_nullable
as int,isPolling: null == isPolling ? _self.isPolling : isPolling // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _ToggleAc implements HomeEvent {
  const _ToggleAc({required this.acId, required this.powerState});
  

 final  int acId;
 final  bool powerState;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToggleAcCopyWith<_ToggleAc> get copyWith => __$ToggleAcCopyWithImpl<_ToggleAc>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToggleAc&&(identical(other.acId, acId) || other.acId == acId)&&(identical(other.powerState, powerState) || other.powerState == powerState));
}


@override
int get hashCode => Object.hash(runtimeType,acId,powerState);

@override
String toString() {
  return 'HomeEvent.toggleAcPower(acId: $acId, powerState: $powerState)';
}


}

/// @nodoc
abstract mixin class _$ToggleAcCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$ToggleAcCopyWith(_ToggleAc value, $Res Function(_ToggleAc) _then) = __$ToggleAcCopyWithImpl;
@useResult
$Res call({
 int acId, bool powerState
});




}
/// @nodoc
class __$ToggleAcCopyWithImpl<$Res>
    implements _$ToggleAcCopyWith<$Res> {
  __$ToggleAcCopyWithImpl(this._self, this._then);

  final _ToggleAc _self;
  final $Res Function(_ToggleAc) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? acId = null,Object? powerState = null,}) {
  return _then(_ToggleAc(
acId: null == acId ? _self.acId : acId // ignore: cast_nullable_to_non_nullable
as int,powerState: null == powerState ? _self.powerState : powerState // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
