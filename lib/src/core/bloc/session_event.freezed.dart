// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SessionEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SessionEvent()';
}


}

/// @nodoc
class $SessionEventCopyWith<$Res>  {
$SessionEventCopyWith(SessionEvent _, $Res Function(SessionEvent) __);
}


/// Adds pattern-matching-related methods to [SessionEvent].
extension SessionEventPatterns on SessionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SessionStarted value)?  sessionStarted,TResult Function( _SessionLoggedIn value)?  sessionLoggedIn,TResult Function( _SessionLoggedOut value)?  sessionLoggedOut,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SessionStarted() when sessionStarted != null:
return sessionStarted(_that);case _SessionLoggedIn() when sessionLoggedIn != null:
return sessionLoggedIn(_that);case _SessionLoggedOut() when sessionLoggedOut != null:
return sessionLoggedOut(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SessionStarted value)  sessionStarted,required TResult Function( _SessionLoggedIn value)  sessionLoggedIn,required TResult Function( _SessionLoggedOut value)  sessionLoggedOut,}){
final _that = this;
switch (_that) {
case _SessionStarted():
return sessionStarted(_that);case _SessionLoggedIn():
return sessionLoggedIn(_that);case _SessionLoggedOut():
return sessionLoggedOut(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SessionStarted value)?  sessionStarted,TResult? Function( _SessionLoggedIn value)?  sessionLoggedIn,TResult? Function( _SessionLoggedOut value)?  sessionLoggedOut,}){
final _that = this;
switch (_that) {
case _SessionStarted() when sessionStarted != null:
return sessionStarted(_that);case _SessionLoggedIn() when sessionLoggedIn != null:
return sessionLoggedIn(_that);case _SessionLoggedOut() when sessionLoggedOut != null:
return sessionLoggedOut(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  sessionStarted,TResult Function()?  sessionLoggedIn,TResult Function( String? message,  bool isManualLogout)?  sessionLoggedOut,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SessionStarted() when sessionStarted != null:
return sessionStarted();case _SessionLoggedIn() when sessionLoggedIn != null:
return sessionLoggedIn();case _SessionLoggedOut() when sessionLoggedOut != null:
return sessionLoggedOut(_that.message,_that.isManualLogout);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  sessionStarted,required TResult Function()  sessionLoggedIn,required TResult Function( String? message,  bool isManualLogout)  sessionLoggedOut,}) {final _that = this;
switch (_that) {
case _SessionStarted():
return sessionStarted();case _SessionLoggedIn():
return sessionLoggedIn();case _SessionLoggedOut():
return sessionLoggedOut(_that.message,_that.isManualLogout);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  sessionStarted,TResult? Function()?  sessionLoggedIn,TResult? Function( String? message,  bool isManualLogout)?  sessionLoggedOut,}) {final _that = this;
switch (_that) {
case _SessionStarted() when sessionStarted != null:
return sessionStarted();case _SessionLoggedIn() when sessionLoggedIn != null:
return sessionLoggedIn();case _SessionLoggedOut() when sessionLoggedOut != null:
return sessionLoggedOut(_that.message,_that.isManualLogout);case _:
  return null;

}
}

}

/// @nodoc


class _SessionStarted implements SessionEvent {
  const _SessionStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SessionEvent.sessionStarted()';
}


}




/// @nodoc


class _SessionLoggedIn implements SessionEvent {
  const _SessionLoggedIn();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionLoggedIn);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SessionEvent.sessionLoggedIn()';
}


}




/// @nodoc


class _SessionLoggedOut implements SessionEvent {
  const _SessionLoggedOut({this.message, this.isManualLogout = false});
  

 final  String? message;
@JsonKey() final  bool isManualLogout;

/// Create a copy of SessionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionLoggedOutCopyWith<_SessionLoggedOut> get copyWith => __$SessionLoggedOutCopyWithImpl<_SessionLoggedOut>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionLoggedOut&&(identical(other.message, message) || other.message == message)&&(identical(other.isManualLogout, isManualLogout) || other.isManualLogout == isManualLogout));
}


@override
int get hashCode => Object.hash(runtimeType,message,isManualLogout);

@override
String toString() {
  return 'SessionEvent.sessionLoggedOut(message: $message, isManualLogout: $isManualLogout)';
}


}

/// @nodoc
abstract mixin class _$SessionLoggedOutCopyWith<$Res> implements $SessionEventCopyWith<$Res> {
  factory _$SessionLoggedOutCopyWith(_SessionLoggedOut value, $Res Function(_SessionLoggedOut) _then) = __$SessionLoggedOutCopyWithImpl;
@useResult
$Res call({
 String? message, bool isManualLogout
});




}
/// @nodoc
class __$SessionLoggedOutCopyWithImpl<$Res>
    implements _$SessionLoggedOutCopyWith<$Res> {
  __$SessionLoggedOutCopyWithImpl(this._self, this._then);

  final _SessionLoggedOut _self;
  final $Res Function(_SessionLoggedOut) _then;

/// Create a copy of SessionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? isManualLogout = null,}) {
  return _then(_SessionLoggedOut(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,isManualLogout: null == isManualLogout ? _self.isManualLogout : isManualLogout // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
