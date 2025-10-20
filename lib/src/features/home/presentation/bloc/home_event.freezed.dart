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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchInitialData value)?  fetchInitialData,TResult Function( _FetchOperationalHourData value)?  fetchOperationalHourData,TResult Function( _FetchTodayLeavesData value)?  fetchTodayLeavesData,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchInitialData() when fetchInitialData != null:
return fetchInitialData(_that);case _FetchOperationalHourData() when fetchOperationalHourData != null:
return fetchOperationalHourData(_that);case _FetchTodayLeavesData() when fetchTodayLeavesData != null:
return fetchTodayLeavesData(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchInitialData value)  fetchInitialData,required TResult Function( _FetchOperationalHourData value)  fetchOperationalHourData,required TResult Function( _FetchTodayLeavesData value)  fetchTodayLeavesData,}){
final _that = this;
switch (_that) {
case _FetchInitialData():
return fetchInitialData(_that);case _FetchOperationalHourData():
return fetchOperationalHourData(_that);case _FetchTodayLeavesData():
return fetchTodayLeavesData(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchInitialData value)?  fetchInitialData,TResult? Function( _FetchOperationalHourData value)?  fetchOperationalHourData,TResult? Function( _FetchTodayLeavesData value)?  fetchTodayLeavesData,}){
final _that = this;
switch (_that) {
case _FetchInitialData() when fetchInitialData != null:
return fetchInitialData(_that);case _FetchOperationalHourData() when fetchOperationalHourData != null:
return fetchOperationalHourData(_that);case _FetchTodayLeavesData() when fetchTodayLeavesData != null:
return fetchTodayLeavesData(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchInitialData,TResult Function()?  fetchOperationalHourData,TResult Function()?  fetchTodayLeavesData,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchInitialData() when fetchInitialData != null:
return fetchInitialData();case _FetchOperationalHourData() when fetchOperationalHourData != null:
return fetchOperationalHourData();case _FetchTodayLeavesData() when fetchTodayLeavesData != null:
return fetchTodayLeavesData();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchInitialData,required TResult Function()  fetchOperationalHourData,required TResult Function()  fetchTodayLeavesData,}) {final _that = this;
switch (_that) {
case _FetchInitialData():
return fetchInitialData();case _FetchOperationalHourData():
return fetchOperationalHourData();case _FetchTodayLeavesData():
return fetchTodayLeavesData();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchInitialData,TResult? Function()?  fetchOperationalHourData,TResult? Function()?  fetchTodayLeavesData,}) {final _that = this;
switch (_that) {
case _FetchInitialData() when fetchInitialData != null:
return fetchInitialData();case _FetchOperationalHourData() when fetchOperationalHourData != null:
return fetchOperationalHourData();case _FetchTodayLeavesData() when fetchTodayLeavesData != null:
return fetchTodayLeavesData();case _:
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


class _FetchOperationalHourData implements HomeEvent {
  const _FetchOperationalHourData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchOperationalHourData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.fetchOperationalHourData()';
}


}




/// @nodoc


class _FetchTodayLeavesData implements HomeEvent {
  const _FetchTodayLeavesData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchTodayLeavesData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.fetchTodayLeavesData()';
}


}




// dart format on
