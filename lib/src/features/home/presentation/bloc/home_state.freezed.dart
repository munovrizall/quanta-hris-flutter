// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {

// Emission Data
 EmissionEntity? get emissionData; bool get isLoadingEmission; String? get emissionError;// Site Dropdown Data
 SiteDropdownEntity? get siteDropdownData; bool get isLoadingSiteDropdown; String? get siteDropdownError;// AC List Data (by site) - for all scenarios
 List<PlacementAcsmEntity> get placementAcsmBySiteData; bool get isLoadingPlacementAcsmBySite; bool get isPollingPlacementAcsmBySite; String? get placementAcsmBySiteError;// Store selected site info for polling
 int? get selectedClientId; int? get selectedSiteId;// Track previous selected site to detect changes
 int? get previousSelectedSiteId;// Toggle AC state - PER AC ID
 Set<int> get loadingToggleAcIds; Map<int, String> get toggleAcErrors; Map<int, DateTime> get lastToggleSuccess; Map<int, String> get toggleAcResponseMessages;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.emissionData, emissionData) || other.emissionData == emissionData)&&(identical(other.isLoadingEmission, isLoadingEmission) || other.isLoadingEmission == isLoadingEmission)&&(identical(other.emissionError, emissionError) || other.emissionError == emissionError)&&(identical(other.siteDropdownData, siteDropdownData) || other.siteDropdownData == siteDropdownData)&&(identical(other.isLoadingSiteDropdown, isLoadingSiteDropdown) || other.isLoadingSiteDropdown == isLoadingSiteDropdown)&&(identical(other.siteDropdownError, siteDropdownError) || other.siteDropdownError == siteDropdownError)&&const DeepCollectionEquality().equals(other.placementAcsmBySiteData, placementAcsmBySiteData)&&(identical(other.isLoadingPlacementAcsmBySite, isLoadingPlacementAcsmBySite) || other.isLoadingPlacementAcsmBySite == isLoadingPlacementAcsmBySite)&&(identical(other.isPollingPlacementAcsmBySite, isPollingPlacementAcsmBySite) || other.isPollingPlacementAcsmBySite == isPollingPlacementAcsmBySite)&&(identical(other.placementAcsmBySiteError, placementAcsmBySiteError) || other.placementAcsmBySiteError == placementAcsmBySiteError)&&(identical(other.selectedClientId, selectedClientId) || other.selectedClientId == selectedClientId)&&(identical(other.selectedSiteId, selectedSiteId) || other.selectedSiteId == selectedSiteId)&&(identical(other.previousSelectedSiteId, previousSelectedSiteId) || other.previousSelectedSiteId == previousSelectedSiteId)&&const DeepCollectionEquality().equals(other.loadingToggleAcIds, loadingToggleAcIds)&&const DeepCollectionEquality().equals(other.toggleAcErrors, toggleAcErrors)&&const DeepCollectionEquality().equals(other.lastToggleSuccess, lastToggleSuccess)&&const DeepCollectionEquality().equals(other.toggleAcResponseMessages, toggleAcResponseMessages));
}


@override
int get hashCode => Object.hash(runtimeType,emissionData,isLoadingEmission,emissionError,siteDropdownData,isLoadingSiteDropdown,siteDropdownError,const DeepCollectionEquality().hash(placementAcsmBySiteData),isLoadingPlacementAcsmBySite,isPollingPlacementAcsmBySite,placementAcsmBySiteError,selectedClientId,selectedSiteId,previousSelectedSiteId,const DeepCollectionEquality().hash(loadingToggleAcIds),const DeepCollectionEquality().hash(toggleAcErrors),const DeepCollectionEquality().hash(lastToggleSuccess),const DeepCollectionEquality().hash(toggleAcResponseMessages));

@override
String toString() {
  return 'HomeState(emissionData: $emissionData, isLoadingEmission: $isLoadingEmission, emissionError: $emissionError, siteDropdownData: $siteDropdownData, isLoadingSiteDropdown: $isLoadingSiteDropdown, siteDropdownError: $siteDropdownError, placementAcsmBySiteData: $placementAcsmBySiteData, isLoadingPlacementAcsmBySite: $isLoadingPlacementAcsmBySite, isPollingPlacementAcsmBySite: $isPollingPlacementAcsmBySite, placementAcsmBySiteError: $placementAcsmBySiteError, selectedClientId: $selectedClientId, selectedSiteId: $selectedSiteId, previousSelectedSiteId: $previousSelectedSiteId, loadingToggleAcIds: $loadingToggleAcIds, toggleAcErrors: $toggleAcErrors, lastToggleSuccess: $lastToggleSuccess, toggleAcResponseMessages: $toggleAcResponseMessages)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 EmissionEntity? emissionData, bool isLoadingEmission, String? emissionError, SiteDropdownEntity? siteDropdownData, bool isLoadingSiteDropdown, String? siteDropdownError, List<PlacementAcsmEntity> placementAcsmBySiteData, bool isLoadingPlacementAcsmBySite, bool isPollingPlacementAcsmBySite, String? placementAcsmBySiteError, int? selectedClientId, int? selectedSiteId, int? previousSelectedSiteId, Set<int> loadingToggleAcIds, Map<int, String> toggleAcErrors, Map<int, DateTime> lastToggleSuccess, Map<int, String> toggleAcResponseMessages
});


$EmissionEntityCopyWith<$Res>? get emissionData;$SiteDropdownEntityCopyWith<$Res>? get siteDropdownData;

}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? emissionData = freezed,Object? isLoadingEmission = null,Object? emissionError = freezed,Object? siteDropdownData = freezed,Object? isLoadingSiteDropdown = null,Object? siteDropdownError = freezed,Object? placementAcsmBySiteData = null,Object? isLoadingPlacementAcsmBySite = null,Object? isPollingPlacementAcsmBySite = null,Object? placementAcsmBySiteError = freezed,Object? selectedClientId = freezed,Object? selectedSiteId = freezed,Object? previousSelectedSiteId = freezed,Object? loadingToggleAcIds = null,Object? toggleAcErrors = null,Object? lastToggleSuccess = null,Object? toggleAcResponseMessages = null,}) {
  return _then(_self.copyWith(
emissionData: freezed == emissionData ? _self.emissionData : emissionData // ignore: cast_nullable_to_non_nullable
as EmissionEntity?,isLoadingEmission: null == isLoadingEmission ? _self.isLoadingEmission : isLoadingEmission // ignore: cast_nullable_to_non_nullable
as bool,emissionError: freezed == emissionError ? _self.emissionError : emissionError // ignore: cast_nullable_to_non_nullable
as String?,siteDropdownData: freezed == siteDropdownData ? _self.siteDropdownData : siteDropdownData // ignore: cast_nullable_to_non_nullable
as SiteDropdownEntity?,isLoadingSiteDropdown: null == isLoadingSiteDropdown ? _self.isLoadingSiteDropdown : isLoadingSiteDropdown // ignore: cast_nullable_to_non_nullable
as bool,siteDropdownError: freezed == siteDropdownError ? _self.siteDropdownError : siteDropdownError // ignore: cast_nullable_to_non_nullable
as String?,placementAcsmBySiteData: null == placementAcsmBySiteData ? _self.placementAcsmBySiteData : placementAcsmBySiteData // ignore: cast_nullable_to_non_nullable
as List<PlacementAcsmEntity>,isLoadingPlacementAcsmBySite: null == isLoadingPlacementAcsmBySite ? _self.isLoadingPlacementAcsmBySite : isLoadingPlacementAcsmBySite // ignore: cast_nullable_to_non_nullable
as bool,isPollingPlacementAcsmBySite: null == isPollingPlacementAcsmBySite ? _self.isPollingPlacementAcsmBySite : isPollingPlacementAcsmBySite // ignore: cast_nullable_to_non_nullable
as bool,placementAcsmBySiteError: freezed == placementAcsmBySiteError ? _self.placementAcsmBySiteError : placementAcsmBySiteError // ignore: cast_nullable_to_non_nullable
as String?,selectedClientId: freezed == selectedClientId ? _self.selectedClientId : selectedClientId // ignore: cast_nullable_to_non_nullable
as int?,selectedSiteId: freezed == selectedSiteId ? _self.selectedSiteId : selectedSiteId // ignore: cast_nullable_to_non_nullable
as int?,previousSelectedSiteId: freezed == previousSelectedSiteId ? _self.previousSelectedSiteId : previousSelectedSiteId // ignore: cast_nullable_to_non_nullable
as int?,loadingToggleAcIds: null == loadingToggleAcIds ? _self.loadingToggleAcIds : loadingToggleAcIds // ignore: cast_nullable_to_non_nullable
as Set<int>,toggleAcErrors: null == toggleAcErrors ? _self.toggleAcErrors : toggleAcErrors // ignore: cast_nullable_to_non_nullable
as Map<int, String>,lastToggleSuccess: null == lastToggleSuccess ? _self.lastToggleSuccess : lastToggleSuccess // ignore: cast_nullable_to_non_nullable
as Map<int, DateTime>,toggleAcResponseMessages: null == toggleAcResponseMessages ? _self.toggleAcResponseMessages : toggleAcResponseMessages // ignore: cast_nullable_to_non_nullable
as Map<int, String>,
  ));
}
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmissionEntityCopyWith<$Res>? get emissionData {
    if (_self.emissionData == null) {
    return null;
  }

  return $EmissionEntityCopyWith<$Res>(_self.emissionData!, (value) {
    return _then(_self.copyWith(emissionData: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SiteDropdownEntityCopyWith<$Res>? get siteDropdownData {
    if (_self.siteDropdownData == null) {
    return null;
  }

  return $SiteDropdownEntityCopyWith<$Res>(_self.siteDropdownData!, (value) {
    return _then(_self.copyWith(siteDropdownData: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value)  $default,){
final _that = this;
switch (_that) {
case _HomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( EmissionEntity? emissionData,  bool isLoadingEmission,  String? emissionError,  SiteDropdownEntity? siteDropdownData,  bool isLoadingSiteDropdown,  String? siteDropdownError,  List<PlacementAcsmEntity> placementAcsmBySiteData,  bool isLoadingPlacementAcsmBySite,  bool isPollingPlacementAcsmBySite,  String? placementAcsmBySiteError,  int? selectedClientId,  int? selectedSiteId,  int? previousSelectedSiteId,  Set<int> loadingToggleAcIds,  Map<int, String> toggleAcErrors,  Map<int, DateTime> lastToggleSuccess,  Map<int, String> toggleAcResponseMessages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.emissionData,_that.isLoadingEmission,_that.emissionError,_that.siteDropdownData,_that.isLoadingSiteDropdown,_that.siteDropdownError,_that.placementAcsmBySiteData,_that.isLoadingPlacementAcsmBySite,_that.isPollingPlacementAcsmBySite,_that.placementAcsmBySiteError,_that.selectedClientId,_that.selectedSiteId,_that.previousSelectedSiteId,_that.loadingToggleAcIds,_that.toggleAcErrors,_that.lastToggleSuccess,_that.toggleAcResponseMessages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( EmissionEntity? emissionData,  bool isLoadingEmission,  String? emissionError,  SiteDropdownEntity? siteDropdownData,  bool isLoadingSiteDropdown,  String? siteDropdownError,  List<PlacementAcsmEntity> placementAcsmBySiteData,  bool isLoadingPlacementAcsmBySite,  bool isPollingPlacementAcsmBySite,  String? placementAcsmBySiteError,  int? selectedClientId,  int? selectedSiteId,  int? previousSelectedSiteId,  Set<int> loadingToggleAcIds,  Map<int, String> toggleAcErrors,  Map<int, DateTime> lastToggleSuccess,  Map<int, String> toggleAcResponseMessages)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.emissionData,_that.isLoadingEmission,_that.emissionError,_that.siteDropdownData,_that.isLoadingSiteDropdown,_that.siteDropdownError,_that.placementAcsmBySiteData,_that.isLoadingPlacementAcsmBySite,_that.isPollingPlacementAcsmBySite,_that.placementAcsmBySiteError,_that.selectedClientId,_that.selectedSiteId,_that.previousSelectedSiteId,_that.loadingToggleAcIds,_that.toggleAcErrors,_that.lastToggleSuccess,_that.toggleAcResponseMessages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( EmissionEntity? emissionData,  bool isLoadingEmission,  String? emissionError,  SiteDropdownEntity? siteDropdownData,  bool isLoadingSiteDropdown,  String? siteDropdownError,  List<PlacementAcsmEntity> placementAcsmBySiteData,  bool isLoadingPlacementAcsmBySite,  bool isPollingPlacementAcsmBySite,  String? placementAcsmBySiteError,  int? selectedClientId,  int? selectedSiteId,  int? previousSelectedSiteId,  Set<int> loadingToggleAcIds,  Map<int, String> toggleAcErrors,  Map<int, DateTime> lastToggleSuccess,  Map<int, String> toggleAcResponseMessages)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.emissionData,_that.isLoadingEmission,_that.emissionError,_that.siteDropdownData,_that.isLoadingSiteDropdown,_that.siteDropdownError,_that.placementAcsmBySiteData,_that.isLoadingPlacementAcsmBySite,_that.isPollingPlacementAcsmBySite,_that.placementAcsmBySiteError,_that.selectedClientId,_that.selectedSiteId,_that.previousSelectedSiteId,_that.loadingToggleAcIds,_that.toggleAcErrors,_that.lastToggleSuccess,_that.toggleAcResponseMessages);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState extends HomeState {
  const _HomeState({this.emissionData = null, this.isLoadingEmission = false, this.emissionError = null, this.siteDropdownData = null, this.isLoadingSiteDropdown = false, this.siteDropdownError = null, final  List<PlacementAcsmEntity> placementAcsmBySiteData = const [], this.isLoadingPlacementAcsmBySite = false, this.isPollingPlacementAcsmBySite = false, this.placementAcsmBySiteError = null, this.selectedClientId = null, this.selectedSiteId = null, this.previousSelectedSiteId = null, final  Set<int> loadingToggleAcIds = const <int>{}, final  Map<int, String> toggleAcErrors = const <int, String>{}, final  Map<int, DateTime> lastToggleSuccess = const <int, DateTime>{}, final  Map<int, String> toggleAcResponseMessages = const <int, String>{}}): _placementAcsmBySiteData = placementAcsmBySiteData,_loadingToggleAcIds = loadingToggleAcIds,_toggleAcErrors = toggleAcErrors,_lastToggleSuccess = lastToggleSuccess,_toggleAcResponseMessages = toggleAcResponseMessages,super._();
  

// Emission Data
@override@JsonKey() final  EmissionEntity? emissionData;
@override@JsonKey() final  bool isLoadingEmission;
@override@JsonKey() final  String? emissionError;
// Site Dropdown Data
@override@JsonKey() final  SiteDropdownEntity? siteDropdownData;
@override@JsonKey() final  bool isLoadingSiteDropdown;
@override@JsonKey() final  String? siteDropdownError;
// AC List Data (by site) - for all scenarios
 final  List<PlacementAcsmEntity> _placementAcsmBySiteData;
// AC List Data (by site) - for all scenarios
@override@JsonKey() List<PlacementAcsmEntity> get placementAcsmBySiteData {
  if (_placementAcsmBySiteData is EqualUnmodifiableListView) return _placementAcsmBySiteData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_placementAcsmBySiteData);
}

@override@JsonKey() final  bool isLoadingPlacementAcsmBySite;
@override@JsonKey() final  bool isPollingPlacementAcsmBySite;
@override@JsonKey() final  String? placementAcsmBySiteError;
// Store selected site info for polling
@override@JsonKey() final  int? selectedClientId;
@override@JsonKey() final  int? selectedSiteId;
// Track previous selected site to detect changes
@override@JsonKey() final  int? previousSelectedSiteId;
// Toggle AC state - PER AC ID
 final  Set<int> _loadingToggleAcIds;
// Toggle AC state - PER AC ID
@override@JsonKey() Set<int> get loadingToggleAcIds {
  if (_loadingToggleAcIds is EqualUnmodifiableSetView) return _loadingToggleAcIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_loadingToggleAcIds);
}

 final  Map<int, String> _toggleAcErrors;
@override@JsonKey() Map<int, String> get toggleAcErrors {
  if (_toggleAcErrors is EqualUnmodifiableMapView) return _toggleAcErrors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_toggleAcErrors);
}

 final  Map<int, DateTime> _lastToggleSuccess;
@override@JsonKey() Map<int, DateTime> get lastToggleSuccess {
  if (_lastToggleSuccess is EqualUnmodifiableMapView) return _lastToggleSuccess;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_lastToggleSuccess);
}

 final  Map<int, String> _toggleAcResponseMessages;
@override@JsonKey() Map<int, String> get toggleAcResponseMessages {
  if (_toggleAcResponseMessages is EqualUnmodifiableMapView) return _toggleAcResponseMessages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_toggleAcResponseMessages);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.emissionData, emissionData) || other.emissionData == emissionData)&&(identical(other.isLoadingEmission, isLoadingEmission) || other.isLoadingEmission == isLoadingEmission)&&(identical(other.emissionError, emissionError) || other.emissionError == emissionError)&&(identical(other.siteDropdownData, siteDropdownData) || other.siteDropdownData == siteDropdownData)&&(identical(other.isLoadingSiteDropdown, isLoadingSiteDropdown) || other.isLoadingSiteDropdown == isLoadingSiteDropdown)&&(identical(other.siteDropdownError, siteDropdownError) || other.siteDropdownError == siteDropdownError)&&const DeepCollectionEquality().equals(other._placementAcsmBySiteData, _placementAcsmBySiteData)&&(identical(other.isLoadingPlacementAcsmBySite, isLoadingPlacementAcsmBySite) || other.isLoadingPlacementAcsmBySite == isLoadingPlacementAcsmBySite)&&(identical(other.isPollingPlacementAcsmBySite, isPollingPlacementAcsmBySite) || other.isPollingPlacementAcsmBySite == isPollingPlacementAcsmBySite)&&(identical(other.placementAcsmBySiteError, placementAcsmBySiteError) || other.placementAcsmBySiteError == placementAcsmBySiteError)&&(identical(other.selectedClientId, selectedClientId) || other.selectedClientId == selectedClientId)&&(identical(other.selectedSiteId, selectedSiteId) || other.selectedSiteId == selectedSiteId)&&(identical(other.previousSelectedSiteId, previousSelectedSiteId) || other.previousSelectedSiteId == previousSelectedSiteId)&&const DeepCollectionEquality().equals(other._loadingToggleAcIds, _loadingToggleAcIds)&&const DeepCollectionEquality().equals(other._toggleAcErrors, _toggleAcErrors)&&const DeepCollectionEquality().equals(other._lastToggleSuccess, _lastToggleSuccess)&&const DeepCollectionEquality().equals(other._toggleAcResponseMessages, _toggleAcResponseMessages));
}


@override
int get hashCode => Object.hash(runtimeType,emissionData,isLoadingEmission,emissionError,siteDropdownData,isLoadingSiteDropdown,siteDropdownError,const DeepCollectionEquality().hash(_placementAcsmBySiteData),isLoadingPlacementAcsmBySite,isPollingPlacementAcsmBySite,placementAcsmBySiteError,selectedClientId,selectedSiteId,previousSelectedSiteId,const DeepCollectionEquality().hash(_loadingToggleAcIds),const DeepCollectionEquality().hash(_toggleAcErrors),const DeepCollectionEquality().hash(_lastToggleSuccess),const DeepCollectionEquality().hash(_toggleAcResponseMessages));

@override
String toString() {
  return 'HomeState(emissionData: $emissionData, isLoadingEmission: $isLoadingEmission, emissionError: $emissionError, siteDropdownData: $siteDropdownData, isLoadingSiteDropdown: $isLoadingSiteDropdown, siteDropdownError: $siteDropdownError, placementAcsmBySiteData: $placementAcsmBySiteData, isLoadingPlacementAcsmBySite: $isLoadingPlacementAcsmBySite, isPollingPlacementAcsmBySite: $isPollingPlacementAcsmBySite, placementAcsmBySiteError: $placementAcsmBySiteError, selectedClientId: $selectedClientId, selectedSiteId: $selectedSiteId, previousSelectedSiteId: $previousSelectedSiteId, loadingToggleAcIds: $loadingToggleAcIds, toggleAcErrors: $toggleAcErrors, lastToggleSuccess: $lastToggleSuccess, toggleAcResponseMessages: $toggleAcResponseMessages)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 EmissionEntity? emissionData, bool isLoadingEmission, String? emissionError, SiteDropdownEntity? siteDropdownData, bool isLoadingSiteDropdown, String? siteDropdownError, List<PlacementAcsmEntity> placementAcsmBySiteData, bool isLoadingPlacementAcsmBySite, bool isPollingPlacementAcsmBySite, String? placementAcsmBySiteError, int? selectedClientId, int? selectedSiteId, int? previousSelectedSiteId, Set<int> loadingToggleAcIds, Map<int, String> toggleAcErrors, Map<int, DateTime> lastToggleSuccess, Map<int, String> toggleAcResponseMessages
});


@override $EmissionEntityCopyWith<$Res>? get emissionData;@override $SiteDropdownEntityCopyWith<$Res>? get siteDropdownData;

}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? emissionData = freezed,Object? isLoadingEmission = null,Object? emissionError = freezed,Object? siteDropdownData = freezed,Object? isLoadingSiteDropdown = null,Object? siteDropdownError = freezed,Object? placementAcsmBySiteData = null,Object? isLoadingPlacementAcsmBySite = null,Object? isPollingPlacementAcsmBySite = null,Object? placementAcsmBySiteError = freezed,Object? selectedClientId = freezed,Object? selectedSiteId = freezed,Object? previousSelectedSiteId = freezed,Object? loadingToggleAcIds = null,Object? toggleAcErrors = null,Object? lastToggleSuccess = null,Object? toggleAcResponseMessages = null,}) {
  return _then(_HomeState(
emissionData: freezed == emissionData ? _self.emissionData : emissionData // ignore: cast_nullable_to_non_nullable
as EmissionEntity?,isLoadingEmission: null == isLoadingEmission ? _self.isLoadingEmission : isLoadingEmission // ignore: cast_nullable_to_non_nullable
as bool,emissionError: freezed == emissionError ? _self.emissionError : emissionError // ignore: cast_nullable_to_non_nullable
as String?,siteDropdownData: freezed == siteDropdownData ? _self.siteDropdownData : siteDropdownData // ignore: cast_nullable_to_non_nullable
as SiteDropdownEntity?,isLoadingSiteDropdown: null == isLoadingSiteDropdown ? _self.isLoadingSiteDropdown : isLoadingSiteDropdown // ignore: cast_nullable_to_non_nullable
as bool,siteDropdownError: freezed == siteDropdownError ? _self.siteDropdownError : siteDropdownError // ignore: cast_nullable_to_non_nullable
as String?,placementAcsmBySiteData: null == placementAcsmBySiteData ? _self._placementAcsmBySiteData : placementAcsmBySiteData // ignore: cast_nullable_to_non_nullable
as List<PlacementAcsmEntity>,isLoadingPlacementAcsmBySite: null == isLoadingPlacementAcsmBySite ? _self.isLoadingPlacementAcsmBySite : isLoadingPlacementAcsmBySite // ignore: cast_nullable_to_non_nullable
as bool,isPollingPlacementAcsmBySite: null == isPollingPlacementAcsmBySite ? _self.isPollingPlacementAcsmBySite : isPollingPlacementAcsmBySite // ignore: cast_nullable_to_non_nullable
as bool,placementAcsmBySiteError: freezed == placementAcsmBySiteError ? _self.placementAcsmBySiteError : placementAcsmBySiteError // ignore: cast_nullable_to_non_nullable
as String?,selectedClientId: freezed == selectedClientId ? _self.selectedClientId : selectedClientId // ignore: cast_nullable_to_non_nullable
as int?,selectedSiteId: freezed == selectedSiteId ? _self.selectedSiteId : selectedSiteId // ignore: cast_nullable_to_non_nullable
as int?,previousSelectedSiteId: freezed == previousSelectedSiteId ? _self.previousSelectedSiteId : previousSelectedSiteId // ignore: cast_nullable_to_non_nullable
as int?,loadingToggleAcIds: null == loadingToggleAcIds ? _self._loadingToggleAcIds : loadingToggleAcIds // ignore: cast_nullable_to_non_nullable
as Set<int>,toggleAcErrors: null == toggleAcErrors ? _self._toggleAcErrors : toggleAcErrors // ignore: cast_nullable_to_non_nullable
as Map<int, String>,lastToggleSuccess: null == lastToggleSuccess ? _self._lastToggleSuccess : lastToggleSuccess // ignore: cast_nullable_to_non_nullable
as Map<int, DateTime>,toggleAcResponseMessages: null == toggleAcResponseMessages ? _self._toggleAcResponseMessages : toggleAcResponseMessages // ignore: cast_nullable_to_non_nullable
as Map<int, String>,
  ));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmissionEntityCopyWith<$Res>? get emissionData {
    if (_self.emissionData == null) {
    return null;
  }

  return $EmissionEntityCopyWith<$Res>(_self.emissionData!, (value) {
    return _then(_self.copyWith(emissionData: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SiteDropdownEntityCopyWith<$Res>? get siteDropdownData {
    if (_self.siteDropdownData == null) {
    return null;
  }

  return $SiteDropdownEntityCopyWith<$Res>(_self.siteDropdownData!, (value) {
    return _then(_self.copyWith(siteDropdownData: value));
  });
}
}

// dart format on
