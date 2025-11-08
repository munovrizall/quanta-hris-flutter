// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LeaveEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaveEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LeaveEvent()';
}


}

/// @nodoc
class $LeaveEventCopyWith<$Res>  {
$LeaveEventCopyWith(LeaveEvent _, $Res Function(LeaveEvent) __);
}


/// Adds pattern-matching-related methods to [LeaveEvent].
extension LeaveEventPatterns on LeaveEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SubmitLeave value)?  submitLeave,TResult Function( _GetLeaveHistory value)?  getLeaveHistory,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitLeave() when submitLeave != null:
return submitLeave(_that);case _GetLeaveHistory() when getLeaveHistory != null:
return getLeaveHistory(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SubmitLeave value)  submitLeave,required TResult Function( _GetLeaveHistory value)  getLeaveHistory,}){
final _that = this;
switch (_that) {
case _SubmitLeave():
return submitLeave(_that);case _GetLeaveHistory():
return getLeaveHistory(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SubmitLeave value)?  submitLeave,TResult? Function( _GetLeaveHistory value)?  getLeaveHistory,}){
final _that = this;
switch (_that) {
case _SubmitLeave() when submitLeave != null:
return submitLeave(_that);case _GetLeaveHistory() when getLeaveHistory != null:
return getLeaveHistory(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( SubmitLeaveParams params)?  submitLeave,TResult Function()?  getLeaveHistory,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitLeave() when submitLeave != null:
return submitLeave(_that.params);case _GetLeaveHistory() when getLeaveHistory != null:
return getLeaveHistory();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( SubmitLeaveParams params)  submitLeave,required TResult Function()  getLeaveHistory,}) {final _that = this;
switch (_that) {
case _SubmitLeave():
return submitLeave(_that.params);case _GetLeaveHistory():
return getLeaveHistory();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( SubmitLeaveParams params)?  submitLeave,TResult? Function()?  getLeaveHistory,}) {final _that = this;
switch (_that) {
case _SubmitLeave() when submitLeave != null:
return submitLeave(_that.params);case _GetLeaveHistory() when getLeaveHistory != null:
return getLeaveHistory();case _:
  return null;

}
}

}

/// @nodoc


class _SubmitLeave implements LeaveEvent {
  const _SubmitLeave({required this.params});
  

 final  SubmitLeaveParams params;

/// Create a copy of LeaveEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitLeaveCopyWith<_SubmitLeave> get copyWith => __$SubmitLeaveCopyWithImpl<_SubmitLeave>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitLeave&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'LeaveEvent.submitLeave(params: $params)';
}


}

/// @nodoc
abstract mixin class _$SubmitLeaveCopyWith<$Res> implements $LeaveEventCopyWith<$Res> {
  factory _$SubmitLeaveCopyWith(_SubmitLeave value, $Res Function(_SubmitLeave) _then) = __$SubmitLeaveCopyWithImpl;
@useResult
$Res call({
 SubmitLeaveParams params
});


$SubmitLeaveParamsCopyWith<$Res> get params;

}
/// @nodoc
class __$SubmitLeaveCopyWithImpl<$Res>
    implements _$SubmitLeaveCopyWith<$Res> {
  __$SubmitLeaveCopyWithImpl(this._self, this._then);

  final _SubmitLeave _self;
  final $Res Function(_SubmitLeave) _then;

/// Create a copy of LeaveEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(_SubmitLeave(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as SubmitLeaveParams,
  ));
}

/// Create a copy of LeaveEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubmitLeaveParamsCopyWith<$Res> get params {
  
  return $SubmitLeaveParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class _GetLeaveHistory implements LeaveEvent {
  const _GetLeaveHistory();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetLeaveHistory);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LeaveEvent.getLeaveHistory()';
}


}




// dart format on
