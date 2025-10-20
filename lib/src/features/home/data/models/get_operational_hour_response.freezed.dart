// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_operational_hour_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetOperationalHourResponse {

@JsonKey(name: 'company_name') String get companyName;@JsonKey(name: 'working_hours') WorkingHourModel get workingHours;
/// Create a copy of GetOperationalHourResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetOperationalHourResponseCopyWith<GetOperationalHourResponse> get copyWith => _$GetOperationalHourResponseCopyWithImpl<GetOperationalHourResponse>(this as GetOperationalHourResponse, _$identity);

  /// Serializes this GetOperationalHourResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetOperationalHourResponse&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.workingHours, workingHours) || other.workingHours == workingHours));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,companyName,workingHours);

@override
String toString() {
  return 'GetOperationalHourResponse(companyName: $companyName, workingHours: $workingHours)';
}


}

/// @nodoc
abstract mixin class $GetOperationalHourResponseCopyWith<$Res>  {
  factory $GetOperationalHourResponseCopyWith(GetOperationalHourResponse value, $Res Function(GetOperationalHourResponse) _then) = _$GetOperationalHourResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'company_name') String companyName,@JsonKey(name: 'working_hours') WorkingHourModel workingHours
});


$WorkingHourModelCopyWith<$Res> get workingHours;

}
/// @nodoc
class _$GetOperationalHourResponseCopyWithImpl<$Res>
    implements $GetOperationalHourResponseCopyWith<$Res> {
  _$GetOperationalHourResponseCopyWithImpl(this._self, this._then);

  final GetOperationalHourResponse _self;
  final $Res Function(GetOperationalHourResponse) _then;

/// Create a copy of GetOperationalHourResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? companyName = null,Object? workingHours = null,}) {
  return _then(_self.copyWith(
companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,workingHours: null == workingHours ? _self.workingHours : workingHours // ignore: cast_nullable_to_non_nullable
as WorkingHourModel,
  ));
}
/// Create a copy of GetOperationalHourResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkingHourModelCopyWith<$Res> get workingHours {
  
  return $WorkingHourModelCopyWith<$Res>(_self.workingHours, (value) {
    return _then(_self.copyWith(workingHours: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetOperationalHourResponse].
extension GetOperationalHourResponsePatterns on GetOperationalHourResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetOperationalHourResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetOperationalHourResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetOperationalHourResponse value)  $default,){
final _that = this;
switch (_that) {
case _GetOperationalHourResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetOperationalHourResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GetOperationalHourResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'company_name')  String companyName, @JsonKey(name: 'working_hours')  WorkingHourModel workingHours)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetOperationalHourResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'company_name')  String companyName, @JsonKey(name: 'working_hours')  WorkingHourModel workingHours)  $default,) {final _that = this;
switch (_that) {
case _GetOperationalHourResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'company_name')  String companyName, @JsonKey(name: 'working_hours')  WorkingHourModel workingHours)?  $default,) {final _that = this;
switch (_that) {
case _GetOperationalHourResponse() when $default != null:
return $default(_that.companyName,_that.workingHours);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetOperationalHourResponse implements GetOperationalHourResponse {
  const _GetOperationalHourResponse({@JsonKey(name: 'company_name') required this.companyName, @JsonKey(name: 'working_hours') required this.workingHours});
  factory _GetOperationalHourResponse.fromJson(Map<String, dynamic> json) => _$GetOperationalHourResponseFromJson(json);

@override@JsonKey(name: 'company_name') final  String companyName;
@override@JsonKey(name: 'working_hours') final  WorkingHourModel workingHours;

/// Create a copy of GetOperationalHourResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetOperationalHourResponseCopyWith<_GetOperationalHourResponse> get copyWith => __$GetOperationalHourResponseCopyWithImpl<_GetOperationalHourResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetOperationalHourResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetOperationalHourResponse&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.workingHours, workingHours) || other.workingHours == workingHours));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,companyName,workingHours);

@override
String toString() {
  return 'GetOperationalHourResponse(companyName: $companyName, workingHours: $workingHours)';
}


}

/// @nodoc
abstract mixin class _$GetOperationalHourResponseCopyWith<$Res> implements $GetOperationalHourResponseCopyWith<$Res> {
  factory _$GetOperationalHourResponseCopyWith(_GetOperationalHourResponse value, $Res Function(_GetOperationalHourResponse) _then) = __$GetOperationalHourResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'company_name') String companyName,@JsonKey(name: 'working_hours') WorkingHourModel workingHours
});


@override $WorkingHourModelCopyWith<$Res> get workingHours;

}
/// @nodoc
class __$GetOperationalHourResponseCopyWithImpl<$Res>
    implements _$GetOperationalHourResponseCopyWith<$Res> {
  __$GetOperationalHourResponseCopyWithImpl(this._self, this._then);

  final _GetOperationalHourResponse _self;
  final $Res Function(_GetOperationalHourResponse) _then;

/// Create a copy of GetOperationalHourResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? companyName = null,Object? workingHours = null,}) {
  return _then(_GetOperationalHourResponse(
companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,workingHours: null == workingHours ? _self.workingHours : workingHours // ignore: cast_nullable_to_non_nullable
as WorkingHourModel,
  ));
}

/// Create a copy of GetOperationalHourResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkingHourModelCopyWith<$Res> get workingHours {
  
  return $WorkingHourModelCopyWith<$Res>(_self.workingHours, (value) {
    return _then(_self.copyWith(workingHours: value));
  });
}
}


/// @nodoc
mixin _$WorkingHourModel {

@JsonKey(name: 'start_time') String get startTime;@JsonKey(name: 'end_time') String get endTime;
/// Create a copy of WorkingHourModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkingHourModelCopyWith<WorkingHourModel> get copyWith => _$WorkingHourModelCopyWithImpl<WorkingHourModel>(this as WorkingHourModel, _$identity);

  /// Serializes this WorkingHourModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkingHourModel&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,startTime,endTime);

@override
String toString() {
  return 'WorkingHourModel(startTime: $startTime, endTime: $endTime)';
}


}

/// @nodoc
abstract mixin class $WorkingHourModelCopyWith<$Res>  {
  factory $WorkingHourModelCopyWith(WorkingHourModel value, $Res Function(WorkingHourModel) _then) = _$WorkingHourModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'start_time') String startTime,@JsonKey(name: 'end_time') String endTime
});




}
/// @nodoc
class _$WorkingHourModelCopyWithImpl<$Res>
    implements $WorkingHourModelCopyWith<$Res> {
  _$WorkingHourModelCopyWithImpl(this._self, this._then);

  final WorkingHourModel _self;
  final $Res Function(WorkingHourModel) _then;

/// Create a copy of WorkingHourModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? startTime = null,Object? endTime = null,}) {
  return _then(_self.copyWith(
startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkingHourModel].
extension WorkingHourModelPatterns on WorkingHourModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkingHourModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkingHourModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkingHourModel value)  $default,){
final _that = this;
switch (_that) {
case _WorkingHourModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkingHourModel value)?  $default,){
final _that = this;
switch (_that) {
case _WorkingHourModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'start_time')  String startTime, @JsonKey(name: 'end_time')  String endTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkingHourModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'start_time')  String startTime, @JsonKey(name: 'end_time')  String endTime)  $default,) {final _that = this;
switch (_that) {
case _WorkingHourModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'start_time')  String startTime, @JsonKey(name: 'end_time')  String endTime)?  $default,) {final _that = this;
switch (_that) {
case _WorkingHourModel() when $default != null:
return $default(_that.startTime,_that.endTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkingHourModel implements WorkingHourModel {
  const _WorkingHourModel({@JsonKey(name: 'start_time') required this.startTime, @JsonKey(name: 'end_time') required this.endTime});
  factory _WorkingHourModel.fromJson(Map<String, dynamic> json) => _$WorkingHourModelFromJson(json);

@override@JsonKey(name: 'start_time') final  String startTime;
@override@JsonKey(name: 'end_time') final  String endTime;

/// Create a copy of WorkingHourModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkingHourModelCopyWith<_WorkingHourModel> get copyWith => __$WorkingHourModelCopyWithImpl<_WorkingHourModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkingHourModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkingHourModel&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,startTime,endTime);

@override
String toString() {
  return 'WorkingHourModel(startTime: $startTime, endTime: $endTime)';
}


}

/// @nodoc
abstract mixin class _$WorkingHourModelCopyWith<$Res> implements $WorkingHourModelCopyWith<$Res> {
  factory _$WorkingHourModelCopyWith(_WorkingHourModel value, $Res Function(_WorkingHourModel) _then) = __$WorkingHourModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'start_time') String startTime,@JsonKey(name: 'end_time') String endTime
});




}
/// @nodoc
class __$WorkingHourModelCopyWithImpl<$Res>
    implements _$WorkingHourModelCopyWith<$Res> {
  __$WorkingHourModelCopyWithImpl(this._self, this._then);

  final _WorkingHourModel _self;
  final $Res Function(_WorkingHourModel) _then;

/// Create a copy of WorkingHourModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? startTime = null,Object? endTime = null,}) {
  return _then(_WorkingHourModel(
startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
