// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permission_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PermissionEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PermissionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PermissionEvent()';
}


}

/// @nodoc
class $PermissionEventCopyWith<$Res>  {
$PermissionEventCopyWith(PermissionEvent _, $Res Function(PermissionEvent) __);
}


/// Adds pattern-matching-related methods to [PermissionEvent].
extension PermissionEventPatterns on PermissionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchPermissionHistory value)?  fetchPermissionHistory,TResult Function( _SubmitPermission value)?  submitPermission,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchPermissionHistory() when fetchPermissionHistory != null:
return fetchPermissionHistory(_that);case _SubmitPermission() when submitPermission != null:
return submitPermission(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchPermissionHistory value)  fetchPermissionHistory,required TResult Function( _SubmitPermission value)  submitPermission,}){
final _that = this;
switch (_that) {
case _FetchPermissionHistory():
return fetchPermissionHistory(_that);case _SubmitPermission():
return submitPermission(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchPermissionHistory value)?  fetchPermissionHistory,TResult? Function( _SubmitPermission value)?  submitPermission,}){
final _that = this;
switch (_that) {
case _FetchPermissionHistory() when fetchPermissionHistory != null:
return fetchPermissionHistory(_that);case _SubmitPermission() when submitPermission != null:
return submitPermission(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchPermissionHistory,TResult Function( SubmitPermissionParams params)?  submitPermission,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchPermissionHistory() when fetchPermissionHistory != null:
return fetchPermissionHistory();case _SubmitPermission() when submitPermission != null:
return submitPermission(_that.params);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchPermissionHistory,required TResult Function( SubmitPermissionParams params)  submitPermission,}) {final _that = this;
switch (_that) {
case _FetchPermissionHistory():
return fetchPermissionHistory();case _SubmitPermission():
return submitPermission(_that.params);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchPermissionHistory,TResult? Function( SubmitPermissionParams params)?  submitPermission,}) {final _that = this;
switch (_that) {
case _FetchPermissionHistory() when fetchPermissionHistory != null:
return fetchPermissionHistory();case _SubmitPermission() when submitPermission != null:
return submitPermission(_that.params);case _:
  return null;

}
}

}

/// @nodoc


class _FetchPermissionHistory implements PermissionEvent {
  const _FetchPermissionHistory();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchPermissionHistory);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PermissionEvent.fetchPermissionHistory()';
}


}




/// @nodoc


class _SubmitPermission implements PermissionEvent {
  const _SubmitPermission({required this.params});
  

 final  SubmitPermissionParams params;

/// Create a copy of PermissionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitPermissionCopyWith<_SubmitPermission> get copyWith => __$SubmitPermissionCopyWithImpl<_SubmitPermission>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitPermission&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'PermissionEvent.submitPermission(params: $params)';
}


}

/// @nodoc
abstract mixin class _$SubmitPermissionCopyWith<$Res> implements $PermissionEventCopyWith<$Res> {
  factory _$SubmitPermissionCopyWith(_SubmitPermission value, $Res Function(_SubmitPermission) _then) = __$SubmitPermissionCopyWithImpl;
@useResult
$Res call({
 SubmitPermissionParams params
});


$SubmitPermissionParamsCopyWith<$Res> get params;

}
/// @nodoc
class __$SubmitPermissionCopyWithImpl<$Res>
    implements _$SubmitPermissionCopyWith<$Res> {
  __$SubmitPermissionCopyWithImpl(this._self, this._then);

  final _SubmitPermission _self;
  final $Res Function(_SubmitPermission) _then;

/// Create a copy of PermissionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(_SubmitPermission(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as SubmitPermissionParams,
  ));
}

/// Create a copy of PermissionEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubmitPermissionParamsCopyWith<$Res> get params {
  
  return $SubmitPermissionParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

// dart format on
