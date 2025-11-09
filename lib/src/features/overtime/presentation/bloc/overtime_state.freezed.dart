// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overtime_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OvertimeState {

 bool get isLoading; List<OvertimeHistoryEntity>? get histories; String? get error;
/// Create a copy of OvertimeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OvertimeStateCopyWith<OvertimeState> get copyWith => _$OvertimeStateCopyWithImpl<OvertimeState>(this as OvertimeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OvertimeState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.histories, histories)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(histories),error);

@override
String toString() {
  return 'OvertimeState(isLoading: $isLoading, histories: $histories, error: $error)';
}


}

/// @nodoc
abstract mixin class $OvertimeStateCopyWith<$Res>  {
  factory $OvertimeStateCopyWith(OvertimeState value, $Res Function(OvertimeState) _then) = _$OvertimeStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<OvertimeHistoryEntity>? histories, String? error
});




}
/// @nodoc
class _$OvertimeStateCopyWithImpl<$Res>
    implements $OvertimeStateCopyWith<$Res> {
  _$OvertimeStateCopyWithImpl(this._self, this._then);

  final OvertimeState _self;
  final $Res Function(OvertimeState) _then;

/// Create a copy of OvertimeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? histories = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,histories: freezed == histories ? _self.histories : histories // ignore: cast_nullable_to_non_nullable
as List<OvertimeHistoryEntity>?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OvertimeState].
extension OvertimeStatePatterns on OvertimeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OvertimeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OvertimeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OvertimeState value)  $default,){
final _that = this;
switch (_that) {
case _OvertimeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OvertimeState value)?  $default,){
final _that = this;
switch (_that) {
case _OvertimeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<OvertimeHistoryEntity>? histories,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OvertimeState() when $default != null:
return $default(_that.isLoading,_that.histories,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<OvertimeHistoryEntity>? histories,  String? error)  $default,) {final _that = this;
switch (_that) {
case _OvertimeState():
return $default(_that.isLoading,_that.histories,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<OvertimeHistoryEntity>? histories,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _OvertimeState() when $default != null:
return $default(_that.isLoading,_that.histories,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _OvertimeState implements OvertimeState {
  const _OvertimeState({this.isLoading = false, final  List<OvertimeHistoryEntity>? histories, this.error}): _histories = histories;
  

@override@JsonKey() final  bool isLoading;
 final  List<OvertimeHistoryEntity>? _histories;
@override List<OvertimeHistoryEntity>? get histories {
  final value = _histories;
  if (value == null) return null;
  if (_histories is EqualUnmodifiableListView) return _histories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? error;

/// Create a copy of OvertimeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OvertimeStateCopyWith<_OvertimeState> get copyWith => __$OvertimeStateCopyWithImpl<_OvertimeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OvertimeState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._histories, _histories)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_histories),error);

@override
String toString() {
  return 'OvertimeState(isLoading: $isLoading, histories: $histories, error: $error)';
}


}

/// @nodoc
abstract mixin class _$OvertimeStateCopyWith<$Res> implements $OvertimeStateCopyWith<$Res> {
  factory _$OvertimeStateCopyWith(_OvertimeState value, $Res Function(_OvertimeState) _then) = __$OvertimeStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<OvertimeHistoryEntity>? histories, String? error
});




}
/// @nodoc
class __$OvertimeStateCopyWithImpl<$Res>
    implements _$OvertimeStateCopyWith<$Res> {
  __$OvertimeStateCopyWithImpl(this._self, this._then);

  final _OvertimeState _self;
  final $Res Function(_OvertimeState) _then;

/// Create a copy of OvertimeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? histories = freezed,Object? error = freezed,}) {
  return _then(_OvertimeState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,histories: freezed == histories ? _self._histories : histories // ignore: cast_nullable_to_non_nullable
as List<OvertimeHistoryEntity>?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
