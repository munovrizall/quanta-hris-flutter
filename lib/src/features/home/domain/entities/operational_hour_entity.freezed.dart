// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'operational_hour_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OperationalHourEntity {

 String get companyName; WorkingHourEntity get workingHours;
/// Create a copy of OperationalHourEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OperationalHourEntityCopyWith<OperationalHourEntity> get copyWith => _$OperationalHourEntityCopyWithImpl<OperationalHourEntity>(this as OperationalHourEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OperationalHourEntity&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.workingHours, workingHours) || other.workingHours == workingHours));
}


@override
int get hashCode => Object.hash(runtimeType,companyName,workingHours);

@override
String toString() {
  return 'OperationalHourEntity(companyName: $companyName, workingHours: $workingHours)';
}


}

/// @nodoc
abstract mixin class $OperationalHourEntityCopyWith<$Res>  {
  factory $OperationalHourEntityCopyWith(OperationalHourEntity value, $Res Function(OperationalHourEntity) _then) = _$OperationalHourEntityCopyWithImpl;
@useResult
$Res call({
 String companyName, WorkingHourEntity workingHours
});


$WorkingHourEntityCopyWith<$Res> get workingHours;

}
/// @nodoc
class _$OperationalHourEntityCopyWithImpl<$Res>
    implements $OperationalHourEntityCopyWith<$Res> {
  _$OperationalHourEntityCopyWithImpl(this._self, this._then);

  final OperationalHourEntity _self;
  final $Res Function(OperationalHourEntity) _then;

/// Create a copy of OperationalHourEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? companyName = null,Object? workingHours = null,}) {
  return _then(_self.copyWith(
companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,workingHours: null == workingHours ? _self.workingHours : workingHours // ignore: cast_nullable_to_non_nullable
as WorkingHourEntity,
  ));
}
/// Create a copy of OperationalHourEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkingHourEntityCopyWith<$Res> get workingHours {
  
  return $WorkingHourEntityCopyWith<$Res>(_self.workingHours, (value) {
    return _then(_self.copyWith(workingHours: value));
  });
}
}


/// Adds pattern-matching-related methods to [OperationalHourEntity].
extension OperationalHourEntityPatterns on OperationalHourEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OperationalHourEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OperationalHourEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OperationalHourEntity value)  $default,){
final _that = this;
switch (_that) {
case _OperationalHourEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OperationalHourEntity value)?  $default,){
final _that = this;
switch (_that) {
case _OperationalHourEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String companyName,  WorkingHourEntity workingHours)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OperationalHourEntity() when $default != null:
return $default(_that.companyName,_that.workingHours);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String companyName,  WorkingHourEntity workingHours)  $default,) {final _that = this;
switch (_that) {
case _OperationalHourEntity():
return $default(_that.companyName,_that.workingHours);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String companyName,  WorkingHourEntity workingHours)?  $default,) {final _that = this;
switch (_that) {
case _OperationalHourEntity() when $default != null:
return $default(_that.companyName,_that.workingHours);case _:
  return null;

}
}

}

/// @nodoc


class _OperationalHourEntity implements OperationalHourEntity {
  const _OperationalHourEntity({required this.companyName, required this.workingHours});
  

@override final  String companyName;
@override final  WorkingHourEntity workingHours;

/// Create a copy of OperationalHourEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OperationalHourEntityCopyWith<_OperationalHourEntity> get copyWith => __$OperationalHourEntityCopyWithImpl<_OperationalHourEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OperationalHourEntity&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.workingHours, workingHours) || other.workingHours == workingHours));
}


@override
int get hashCode => Object.hash(runtimeType,companyName,workingHours);

@override
String toString() {
  return 'OperationalHourEntity(companyName: $companyName, workingHours: $workingHours)';
}


}

/// @nodoc
abstract mixin class _$OperationalHourEntityCopyWith<$Res> implements $OperationalHourEntityCopyWith<$Res> {
  factory _$OperationalHourEntityCopyWith(_OperationalHourEntity value, $Res Function(_OperationalHourEntity) _then) = __$OperationalHourEntityCopyWithImpl;
@override @useResult
$Res call({
 String companyName, WorkingHourEntity workingHours
});


@override $WorkingHourEntityCopyWith<$Res> get workingHours;

}
/// @nodoc
class __$OperationalHourEntityCopyWithImpl<$Res>
    implements _$OperationalHourEntityCopyWith<$Res> {
  __$OperationalHourEntityCopyWithImpl(this._self, this._then);

  final _OperationalHourEntity _self;
  final $Res Function(_OperationalHourEntity) _then;

/// Create a copy of OperationalHourEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? companyName = null,Object? workingHours = null,}) {
  return _then(_OperationalHourEntity(
companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,workingHours: null == workingHours ? _self.workingHours : workingHours // ignore: cast_nullable_to_non_nullable
as WorkingHourEntity,
  ));
}

/// Create a copy of OperationalHourEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkingHourEntityCopyWith<$Res> get workingHours {
  
  return $WorkingHourEntityCopyWith<$Res>(_self.workingHours, (value) {
    return _then(_self.copyWith(workingHours: value));
  });
}
}

/// @nodoc
mixin _$WorkingHourEntity {

 String get startTime; String get endTime;
/// Create a copy of WorkingHourEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkingHourEntityCopyWith<WorkingHourEntity> get copyWith => _$WorkingHourEntityCopyWithImpl<WorkingHourEntity>(this as WorkingHourEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkingHourEntity&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime));
}


@override
int get hashCode => Object.hash(runtimeType,startTime,endTime);

@override
String toString() {
  return 'WorkingHourEntity(startTime: $startTime, endTime: $endTime)';
}


}

/// @nodoc
abstract mixin class $WorkingHourEntityCopyWith<$Res>  {
  factory $WorkingHourEntityCopyWith(WorkingHourEntity value, $Res Function(WorkingHourEntity) _then) = _$WorkingHourEntityCopyWithImpl;
@useResult
$Res call({
 String startTime, String endTime
});




}
/// @nodoc
class _$WorkingHourEntityCopyWithImpl<$Res>
    implements $WorkingHourEntityCopyWith<$Res> {
  _$WorkingHourEntityCopyWithImpl(this._self, this._then);

  final WorkingHourEntity _self;
  final $Res Function(WorkingHourEntity) _then;

/// Create a copy of WorkingHourEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? startTime = null,Object? endTime = null,}) {
  return _then(_self.copyWith(
startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkingHourEntity].
extension WorkingHourEntityPatterns on WorkingHourEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkingHourEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkingHourEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkingHourEntity value)  $default,){
final _that = this;
switch (_that) {
case _WorkingHourEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkingHourEntity value)?  $default,){
final _that = this;
switch (_that) {
case _WorkingHourEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String startTime,  String endTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkingHourEntity() when $default != null:
return $default(_that.startTime,_that.endTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String startTime,  String endTime)  $default,) {final _that = this;
switch (_that) {
case _WorkingHourEntity():
return $default(_that.startTime,_that.endTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String startTime,  String endTime)?  $default,) {final _that = this;
switch (_that) {
case _WorkingHourEntity() when $default != null:
return $default(_that.startTime,_that.endTime);case _:
  return null;

}
}

}

/// @nodoc


class _WorkingHourEntity implements WorkingHourEntity {
  const _WorkingHourEntity({required this.startTime, required this.endTime});
  

@override final  String startTime;
@override final  String endTime;

/// Create a copy of WorkingHourEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkingHourEntityCopyWith<_WorkingHourEntity> get copyWith => __$WorkingHourEntityCopyWithImpl<_WorkingHourEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkingHourEntity&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime));
}


@override
int get hashCode => Object.hash(runtimeType,startTime,endTime);

@override
String toString() {
  return 'WorkingHourEntity(startTime: $startTime, endTime: $endTime)';
}


}

/// @nodoc
abstract mixin class _$WorkingHourEntityCopyWith<$Res> implements $WorkingHourEntityCopyWith<$Res> {
  factory _$WorkingHourEntityCopyWith(_WorkingHourEntity value, $Res Function(_WorkingHourEntity) _then) = __$WorkingHourEntityCopyWithImpl;
@override @useResult
$Res call({
 String startTime, String endTime
});




}
/// @nodoc
class __$WorkingHourEntityCopyWithImpl<$Res>
    implements _$WorkingHourEntityCopyWith<$Res> {
  __$WorkingHourEntityCopyWithImpl(this._self, this._then);

  final _WorkingHourEntity _self;
  final $Res Function(_WorkingHourEntity) _then;

/// Create a copy of WorkingHourEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? startTime = null,Object? endTime = null,}) {
  return _then(_WorkingHourEntity(
startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
