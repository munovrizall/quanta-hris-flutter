// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overtime_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OvertimeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OvertimeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OvertimeEvent()';
}


}

/// @nodoc
class $OvertimeEventCopyWith<$Res>  {
$OvertimeEventCopyWith(OvertimeEvent _, $Res Function(OvertimeEvent) __);
}


/// Adds pattern-matching-related methods to [OvertimeEvent].
extension OvertimeEventPatterns on OvertimeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchHistory value)?  fetchHistory,TResult Function( _SubmitOvertime value)?  submitOvertime,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchHistory() when fetchHistory != null:
return fetchHistory(_that);case _SubmitOvertime() when submitOvertime != null:
return submitOvertime(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchHistory value)  fetchHistory,required TResult Function( _SubmitOvertime value)  submitOvertime,}){
final _that = this;
switch (_that) {
case _FetchHistory():
return fetchHistory(_that);case _SubmitOvertime():
return submitOvertime(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchHistory value)?  fetchHistory,TResult? Function( _SubmitOvertime value)?  submitOvertime,}){
final _that = this;
switch (_that) {
case _FetchHistory() when fetchHistory != null:
return fetchHistory(_that);case _SubmitOvertime() when submitOvertime != null:
return submitOvertime(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchHistory,TResult Function( SubmitOvertimeParams params)?  submitOvertime,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchHistory() when fetchHistory != null:
return fetchHistory();case _SubmitOvertime() when submitOvertime != null:
return submitOvertime(_that.params);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchHistory,required TResult Function( SubmitOvertimeParams params)  submitOvertime,}) {final _that = this;
switch (_that) {
case _FetchHistory():
return fetchHistory();case _SubmitOvertime():
return submitOvertime(_that.params);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchHistory,TResult? Function( SubmitOvertimeParams params)?  submitOvertime,}) {final _that = this;
switch (_that) {
case _FetchHistory() when fetchHistory != null:
return fetchHistory();case _SubmitOvertime() when submitOvertime != null:
return submitOvertime(_that.params);case _:
  return null;

}
}

}

/// @nodoc


class _FetchHistory implements OvertimeEvent {
  const _FetchHistory();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchHistory);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OvertimeEvent.fetchHistory()';
}


}




/// @nodoc


class _SubmitOvertime implements OvertimeEvent {
  const _SubmitOvertime({required this.params});
  

 final  SubmitOvertimeParams params;

/// Create a copy of OvertimeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitOvertimeCopyWith<_SubmitOvertime> get copyWith => __$SubmitOvertimeCopyWithImpl<_SubmitOvertime>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitOvertime&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'OvertimeEvent.submitOvertime(params: $params)';
}


}

/// @nodoc
abstract mixin class _$SubmitOvertimeCopyWith<$Res> implements $OvertimeEventCopyWith<$Res> {
  factory _$SubmitOvertimeCopyWith(_SubmitOvertime value, $Res Function(_SubmitOvertime) _then) = __$SubmitOvertimeCopyWithImpl;
@useResult
$Res call({
 SubmitOvertimeParams params
});


$SubmitOvertimeParamsCopyWith<$Res> get params;

}
/// @nodoc
class __$SubmitOvertimeCopyWithImpl<$Res>
    implements _$SubmitOvertimeCopyWith<$Res> {
  __$SubmitOvertimeCopyWithImpl(this._self, this._then);

  final _SubmitOvertime _self;
  final $Res Function(_SubmitOvertime) _then;

/// Create a copy of OvertimeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(_SubmitOvertime(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as SubmitOvertimeParams,
  ));
}

/// Create a copy of OvertimeEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubmitOvertimeParamsCopyWith<$Res> get params {
  
  return $SubmitOvertimeParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

// dart format on
