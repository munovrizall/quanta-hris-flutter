// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_emission_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetEmissionResponse {

@JsonKey(name: 'graphic_data') List<EmissionGraphicDataModel> get graphicData; EmissionSummaryModel get summary;@JsonKey(name: 'daily_summary') EmissionDailySummaryModel get dailySummary;
/// Create a copy of GetEmissionResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetEmissionResponseCopyWith<GetEmissionResponse> get copyWith => _$GetEmissionResponseCopyWithImpl<GetEmissionResponse>(this as GetEmissionResponse, _$identity);

  /// Serializes this GetEmissionResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetEmissionResponse&&const DeepCollectionEquality().equals(other.graphicData, graphicData)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.dailySummary, dailySummary) || other.dailySummary == dailySummary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(graphicData),summary,dailySummary);

@override
String toString() {
  return 'GetEmissionResponse(graphicData: $graphicData, summary: $summary, dailySummary: $dailySummary)';
}


}

/// @nodoc
abstract mixin class $GetEmissionResponseCopyWith<$Res>  {
  factory $GetEmissionResponseCopyWith(GetEmissionResponse value, $Res Function(GetEmissionResponse) _then) = _$GetEmissionResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'graphic_data') List<EmissionGraphicDataModel> graphicData, EmissionSummaryModel summary,@JsonKey(name: 'daily_summary') EmissionDailySummaryModel dailySummary
});


$EmissionSummaryModelCopyWith<$Res> get summary;$EmissionDailySummaryModelCopyWith<$Res> get dailySummary;

}
/// @nodoc
class _$GetEmissionResponseCopyWithImpl<$Res>
    implements $GetEmissionResponseCopyWith<$Res> {
  _$GetEmissionResponseCopyWithImpl(this._self, this._then);

  final GetEmissionResponse _self;
  final $Res Function(GetEmissionResponse) _then;

/// Create a copy of GetEmissionResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? graphicData = null,Object? summary = null,Object? dailySummary = null,}) {
  return _then(_self.copyWith(
graphicData: null == graphicData ? _self.graphicData : graphicData // ignore: cast_nullable_to_non_nullable
as List<EmissionGraphicDataModel>,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as EmissionSummaryModel,dailySummary: null == dailySummary ? _self.dailySummary : dailySummary // ignore: cast_nullable_to_non_nullable
as EmissionDailySummaryModel,
  ));
}
/// Create a copy of GetEmissionResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmissionSummaryModelCopyWith<$Res> get summary {
  
  return $EmissionSummaryModelCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}/// Create a copy of GetEmissionResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmissionDailySummaryModelCopyWith<$Res> get dailySummary {
  
  return $EmissionDailySummaryModelCopyWith<$Res>(_self.dailySummary, (value) {
    return _then(_self.copyWith(dailySummary: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetEmissionResponse].
extension GetEmissionResponsePatterns on GetEmissionResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetEmissionResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetEmissionResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetEmissionResponse value)  $default,){
final _that = this;
switch (_that) {
case _GetEmissionResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetEmissionResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GetEmissionResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'graphic_data')  List<EmissionGraphicDataModel> graphicData,  EmissionSummaryModel summary, @JsonKey(name: 'daily_summary')  EmissionDailySummaryModel dailySummary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetEmissionResponse() when $default != null:
return $default(_that.graphicData,_that.summary,_that.dailySummary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'graphic_data')  List<EmissionGraphicDataModel> graphicData,  EmissionSummaryModel summary, @JsonKey(name: 'daily_summary')  EmissionDailySummaryModel dailySummary)  $default,) {final _that = this;
switch (_that) {
case _GetEmissionResponse():
return $default(_that.graphicData,_that.summary,_that.dailySummary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'graphic_data')  List<EmissionGraphicDataModel> graphicData,  EmissionSummaryModel summary, @JsonKey(name: 'daily_summary')  EmissionDailySummaryModel dailySummary)?  $default,) {final _that = this;
switch (_that) {
case _GetEmissionResponse() when $default != null:
return $default(_that.graphicData,_that.summary,_that.dailySummary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetEmissionResponse implements GetEmissionResponse {
  const _GetEmissionResponse({@JsonKey(name: 'graphic_data') required final  List<EmissionGraphicDataModel> graphicData, required this.summary, @JsonKey(name: 'daily_summary') required this.dailySummary}): _graphicData = graphicData;
  factory _GetEmissionResponse.fromJson(Map<String, dynamic> json) => _$GetEmissionResponseFromJson(json);

 final  List<EmissionGraphicDataModel> _graphicData;
@override@JsonKey(name: 'graphic_data') List<EmissionGraphicDataModel> get graphicData {
  if (_graphicData is EqualUnmodifiableListView) return _graphicData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_graphicData);
}

@override final  EmissionSummaryModel summary;
@override@JsonKey(name: 'daily_summary') final  EmissionDailySummaryModel dailySummary;

/// Create a copy of GetEmissionResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetEmissionResponseCopyWith<_GetEmissionResponse> get copyWith => __$GetEmissionResponseCopyWithImpl<_GetEmissionResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetEmissionResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetEmissionResponse&&const DeepCollectionEquality().equals(other._graphicData, _graphicData)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.dailySummary, dailySummary) || other.dailySummary == dailySummary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_graphicData),summary,dailySummary);

@override
String toString() {
  return 'GetEmissionResponse(graphicData: $graphicData, summary: $summary, dailySummary: $dailySummary)';
}


}

/// @nodoc
abstract mixin class _$GetEmissionResponseCopyWith<$Res> implements $GetEmissionResponseCopyWith<$Res> {
  factory _$GetEmissionResponseCopyWith(_GetEmissionResponse value, $Res Function(_GetEmissionResponse) _then) = __$GetEmissionResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'graphic_data') List<EmissionGraphicDataModel> graphicData, EmissionSummaryModel summary,@JsonKey(name: 'daily_summary') EmissionDailySummaryModel dailySummary
});


@override $EmissionSummaryModelCopyWith<$Res> get summary;@override $EmissionDailySummaryModelCopyWith<$Res> get dailySummary;

}
/// @nodoc
class __$GetEmissionResponseCopyWithImpl<$Res>
    implements _$GetEmissionResponseCopyWith<$Res> {
  __$GetEmissionResponseCopyWithImpl(this._self, this._then);

  final _GetEmissionResponse _self;
  final $Res Function(_GetEmissionResponse) _then;

/// Create a copy of GetEmissionResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? graphicData = null,Object? summary = null,Object? dailySummary = null,}) {
  return _then(_GetEmissionResponse(
graphicData: null == graphicData ? _self._graphicData : graphicData // ignore: cast_nullable_to_non_nullable
as List<EmissionGraphicDataModel>,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as EmissionSummaryModel,dailySummary: null == dailySummary ? _self.dailySummary : dailySummary // ignore: cast_nullable_to_non_nullable
as EmissionDailySummaryModel,
  ));
}

/// Create a copy of GetEmissionResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmissionSummaryModelCopyWith<$Res> get summary {
  
  return $EmissionSummaryModelCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}/// Create a copy of GetEmissionResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmissionDailySummaryModelCopyWith<$Res> get dailySummary {
  
  return $EmissionDailySummaryModelCopyWith<$Res>(_self.dailySummary, (value) {
    return _then(_self.copyWith(dailySummary: value));
  });
}
}


/// @nodoc
mixin _$EmissionGraphicDataModel {

 String get month; double get kwh; double get cost; double get emission;
/// Create a copy of EmissionGraphicDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmissionGraphicDataModelCopyWith<EmissionGraphicDataModel> get copyWith => _$EmissionGraphicDataModelCopyWithImpl<EmissionGraphicDataModel>(this as EmissionGraphicDataModel, _$identity);

  /// Serializes this EmissionGraphicDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmissionGraphicDataModel&&(identical(other.month, month) || other.month == month)&&(identical(other.kwh, kwh) || other.kwh == kwh)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.emission, emission) || other.emission == emission));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,month,kwh,cost,emission);

@override
String toString() {
  return 'EmissionGraphicDataModel(month: $month, kwh: $kwh, cost: $cost, emission: $emission)';
}


}

/// @nodoc
abstract mixin class $EmissionGraphicDataModelCopyWith<$Res>  {
  factory $EmissionGraphicDataModelCopyWith(EmissionGraphicDataModel value, $Res Function(EmissionGraphicDataModel) _then) = _$EmissionGraphicDataModelCopyWithImpl;
@useResult
$Res call({
 String month, double kwh, double cost, double emission
});




}
/// @nodoc
class _$EmissionGraphicDataModelCopyWithImpl<$Res>
    implements $EmissionGraphicDataModelCopyWith<$Res> {
  _$EmissionGraphicDataModelCopyWithImpl(this._self, this._then);

  final EmissionGraphicDataModel _self;
  final $Res Function(EmissionGraphicDataModel) _then;

/// Create a copy of EmissionGraphicDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? month = null,Object? kwh = null,Object? cost = null,Object? emission = null,}) {
  return _then(_self.copyWith(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,kwh: null == kwh ? _self.kwh : kwh // ignore: cast_nullable_to_non_nullable
as double,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as double,emission: null == emission ? _self.emission : emission // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [EmissionGraphicDataModel].
extension EmissionGraphicDataModelPatterns on EmissionGraphicDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmissionGraphicDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmissionGraphicDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmissionGraphicDataModel value)  $default,){
final _that = this;
switch (_that) {
case _EmissionGraphicDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmissionGraphicDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _EmissionGraphicDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String month,  double kwh,  double cost,  double emission)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmissionGraphicDataModel() when $default != null:
return $default(_that.month,_that.kwh,_that.cost,_that.emission);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String month,  double kwh,  double cost,  double emission)  $default,) {final _that = this;
switch (_that) {
case _EmissionGraphicDataModel():
return $default(_that.month,_that.kwh,_that.cost,_that.emission);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String month,  double kwh,  double cost,  double emission)?  $default,) {final _that = this;
switch (_that) {
case _EmissionGraphicDataModel() when $default != null:
return $default(_that.month,_that.kwh,_that.cost,_that.emission);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmissionGraphicDataModel implements EmissionGraphicDataModel {
  const _EmissionGraphicDataModel({required this.month, required this.kwh, required this.cost, required this.emission});
  factory _EmissionGraphicDataModel.fromJson(Map<String, dynamic> json) => _$EmissionGraphicDataModelFromJson(json);

@override final  String month;
@override final  double kwh;
@override final  double cost;
@override final  double emission;

/// Create a copy of EmissionGraphicDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmissionGraphicDataModelCopyWith<_EmissionGraphicDataModel> get copyWith => __$EmissionGraphicDataModelCopyWithImpl<_EmissionGraphicDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmissionGraphicDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmissionGraphicDataModel&&(identical(other.month, month) || other.month == month)&&(identical(other.kwh, kwh) || other.kwh == kwh)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.emission, emission) || other.emission == emission));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,month,kwh,cost,emission);

@override
String toString() {
  return 'EmissionGraphicDataModel(month: $month, kwh: $kwh, cost: $cost, emission: $emission)';
}


}

/// @nodoc
abstract mixin class _$EmissionGraphicDataModelCopyWith<$Res> implements $EmissionGraphicDataModelCopyWith<$Res> {
  factory _$EmissionGraphicDataModelCopyWith(_EmissionGraphicDataModel value, $Res Function(_EmissionGraphicDataModel) _then) = __$EmissionGraphicDataModelCopyWithImpl;
@override @useResult
$Res call({
 String month, double kwh, double cost, double emission
});




}
/// @nodoc
class __$EmissionGraphicDataModelCopyWithImpl<$Res>
    implements _$EmissionGraphicDataModelCopyWith<$Res> {
  __$EmissionGraphicDataModelCopyWithImpl(this._self, this._then);

  final _EmissionGraphicDataModel _self;
  final $Res Function(_EmissionGraphicDataModel) _then;

/// Create a copy of EmissionGraphicDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? month = null,Object? kwh = null,Object? cost = null,Object? emission = null,}) {
  return _then(_EmissionGraphicDataModel(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,kwh: null == kwh ? _self.kwh : kwh // ignore: cast_nullable_to_non_nullable
as double,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as double,emission: null == emission ? _self.emission : emission // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$EmissionSummaryModel {

 EmissionAverageSummaryModel get average;@JsonKey(name: 'last_month') EmissionMonthlySummaryModel get lastMonth;@JsonKey(name: 'current_month') EmissionMonthlySummaryModel get currentMonth;
/// Create a copy of EmissionSummaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmissionSummaryModelCopyWith<EmissionSummaryModel> get copyWith => _$EmissionSummaryModelCopyWithImpl<EmissionSummaryModel>(this as EmissionSummaryModel, _$identity);

  /// Serializes this EmissionSummaryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmissionSummaryModel&&(identical(other.average, average) || other.average == average)&&(identical(other.lastMonth, lastMonth) || other.lastMonth == lastMonth)&&(identical(other.currentMonth, currentMonth) || other.currentMonth == currentMonth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,average,lastMonth,currentMonth);

@override
String toString() {
  return 'EmissionSummaryModel(average: $average, lastMonth: $lastMonth, currentMonth: $currentMonth)';
}


}

/// @nodoc
abstract mixin class $EmissionSummaryModelCopyWith<$Res>  {
  factory $EmissionSummaryModelCopyWith(EmissionSummaryModel value, $Res Function(EmissionSummaryModel) _then) = _$EmissionSummaryModelCopyWithImpl;
@useResult
$Res call({
 EmissionAverageSummaryModel average,@JsonKey(name: 'last_month') EmissionMonthlySummaryModel lastMonth,@JsonKey(name: 'current_month') EmissionMonthlySummaryModel currentMonth
});


$EmissionAverageSummaryModelCopyWith<$Res> get average;$EmissionMonthlySummaryModelCopyWith<$Res> get lastMonth;$EmissionMonthlySummaryModelCopyWith<$Res> get currentMonth;

}
/// @nodoc
class _$EmissionSummaryModelCopyWithImpl<$Res>
    implements $EmissionSummaryModelCopyWith<$Res> {
  _$EmissionSummaryModelCopyWithImpl(this._self, this._then);

  final EmissionSummaryModel _self;
  final $Res Function(EmissionSummaryModel) _then;

/// Create a copy of EmissionSummaryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? average = null,Object? lastMonth = null,Object? currentMonth = null,}) {
  return _then(_self.copyWith(
average: null == average ? _self.average : average // ignore: cast_nullable_to_non_nullable
as EmissionAverageSummaryModel,lastMonth: null == lastMonth ? _self.lastMonth : lastMonth // ignore: cast_nullable_to_non_nullable
as EmissionMonthlySummaryModel,currentMonth: null == currentMonth ? _self.currentMonth : currentMonth // ignore: cast_nullable_to_non_nullable
as EmissionMonthlySummaryModel,
  ));
}
/// Create a copy of EmissionSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmissionAverageSummaryModelCopyWith<$Res> get average {
  
  return $EmissionAverageSummaryModelCopyWith<$Res>(_self.average, (value) {
    return _then(_self.copyWith(average: value));
  });
}/// Create a copy of EmissionSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmissionMonthlySummaryModelCopyWith<$Res> get lastMonth {
  
  return $EmissionMonthlySummaryModelCopyWith<$Res>(_self.lastMonth, (value) {
    return _then(_self.copyWith(lastMonth: value));
  });
}/// Create a copy of EmissionSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmissionMonthlySummaryModelCopyWith<$Res> get currentMonth {
  
  return $EmissionMonthlySummaryModelCopyWith<$Res>(_self.currentMonth, (value) {
    return _then(_self.copyWith(currentMonth: value));
  });
}
}


/// Adds pattern-matching-related methods to [EmissionSummaryModel].
extension EmissionSummaryModelPatterns on EmissionSummaryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmissionSummaryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmissionSummaryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmissionSummaryModel value)  $default,){
final _that = this;
switch (_that) {
case _EmissionSummaryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmissionSummaryModel value)?  $default,){
final _that = this;
switch (_that) {
case _EmissionSummaryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( EmissionAverageSummaryModel average, @JsonKey(name: 'last_month')  EmissionMonthlySummaryModel lastMonth, @JsonKey(name: 'current_month')  EmissionMonthlySummaryModel currentMonth)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmissionSummaryModel() when $default != null:
return $default(_that.average,_that.lastMonth,_that.currentMonth);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( EmissionAverageSummaryModel average, @JsonKey(name: 'last_month')  EmissionMonthlySummaryModel lastMonth, @JsonKey(name: 'current_month')  EmissionMonthlySummaryModel currentMonth)  $default,) {final _that = this;
switch (_that) {
case _EmissionSummaryModel():
return $default(_that.average,_that.lastMonth,_that.currentMonth);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( EmissionAverageSummaryModel average, @JsonKey(name: 'last_month')  EmissionMonthlySummaryModel lastMonth, @JsonKey(name: 'current_month')  EmissionMonthlySummaryModel currentMonth)?  $default,) {final _that = this;
switch (_that) {
case _EmissionSummaryModel() when $default != null:
return $default(_that.average,_that.lastMonth,_that.currentMonth);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmissionSummaryModel implements EmissionSummaryModel {
  const _EmissionSummaryModel({required this.average, @JsonKey(name: 'last_month') required this.lastMonth, @JsonKey(name: 'current_month') required this.currentMonth});
  factory _EmissionSummaryModel.fromJson(Map<String, dynamic> json) => _$EmissionSummaryModelFromJson(json);

@override final  EmissionAverageSummaryModel average;
@override@JsonKey(name: 'last_month') final  EmissionMonthlySummaryModel lastMonth;
@override@JsonKey(name: 'current_month') final  EmissionMonthlySummaryModel currentMonth;

/// Create a copy of EmissionSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmissionSummaryModelCopyWith<_EmissionSummaryModel> get copyWith => __$EmissionSummaryModelCopyWithImpl<_EmissionSummaryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmissionSummaryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmissionSummaryModel&&(identical(other.average, average) || other.average == average)&&(identical(other.lastMonth, lastMonth) || other.lastMonth == lastMonth)&&(identical(other.currentMonth, currentMonth) || other.currentMonth == currentMonth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,average,lastMonth,currentMonth);

@override
String toString() {
  return 'EmissionSummaryModel(average: $average, lastMonth: $lastMonth, currentMonth: $currentMonth)';
}


}

/// @nodoc
abstract mixin class _$EmissionSummaryModelCopyWith<$Res> implements $EmissionSummaryModelCopyWith<$Res> {
  factory _$EmissionSummaryModelCopyWith(_EmissionSummaryModel value, $Res Function(_EmissionSummaryModel) _then) = __$EmissionSummaryModelCopyWithImpl;
@override @useResult
$Res call({
 EmissionAverageSummaryModel average,@JsonKey(name: 'last_month') EmissionMonthlySummaryModel lastMonth,@JsonKey(name: 'current_month') EmissionMonthlySummaryModel currentMonth
});


@override $EmissionAverageSummaryModelCopyWith<$Res> get average;@override $EmissionMonthlySummaryModelCopyWith<$Res> get lastMonth;@override $EmissionMonthlySummaryModelCopyWith<$Res> get currentMonth;

}
/// @nodoc
class __$EmissionSummaryModelCopyWithImpl<$Res>
    implements _$EmissionSummaryModelCopyWith<$Res> {
  __$EmissionSummaryModelCopyWithImpl(this._self, this._then);

  final _EmissionSummaryModel _self;
  final $Res Function(_EmissionSummaryModel) _then;

/// Create a copy of EmissionSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? average = null,Object? lastMonth = null,Object? currentMonth = null,}) {
  return _then(_EmissionSummaryModel(
average: null == average ? _self.average : average // ignore: cast_nullable_to_non_nullable
as EmissionAverageSummaryModel,lastMonth: null == lastMonth ? _self.lastMonth : lastMonth // ignore: cast_nullable_to_non_nullable
as EmissionMonthlySummaryModel,currentMonth: null == currentMonth ? _self.currentMonth : currentMonth // ignore: cast_nullable_to_non_nullable
as EmissionMonthlySummaryModel,
  ));
}

/// Create a copy of EmissionSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmissionAverageSummaryModelCopyWith<$Res> get average {
  
  return $EmissionAverageSummaryModelCopyWith<$Res>(_self.average, (value) {
    return _then(_self.copyWith(average: value));
  });
}/// Create a copy of EmissionSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmissionMonthlySummaryModelCopyWith<$Res> get lastMonth {
  
  return $EmissionMonthlySummaryModelCopyWith<$Res>(_self.lastMonth, (value) {
    return _then(_self.copyWith(lastMonth: value));
  });
}/// Create a copy of EmissionSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmissionMonthlySummaryModelCopyWith<$Res> get currentMonth {
  
  return $EmissionMonthlySummaryModelCopyWith<$Res>(_self.currentMonth, (value) {
    return _then(_self.copyWith(currentMonth: value));
  });
}
}


/// @nodoc
mixin _$EmissionAverageSummaryModel {

 double get kwh; double get cost; double get emission;
/// Create a copy of EmissionAverageSummaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmissionAverageSummaryModelCopyWith<EmissionAverageSummaryModel> get copyWith => _$EmissionAverageSummaryModelCopyWithImpl<EmissionAverageSummaryModel>(this as EmissionAverageSummaryModel, _$identity);

  /// Serializes this EmissionAverageSummaryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmissionAverageSummaryModel&&(identical(other.kwh, kwh) || other.kwh == kwh)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.emission, emission) || other.emission == emission));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kwh,cost,emission);

@override
String toString() {
  return 'EmissionAverageSummaryModel(kwh: $kwh, cost: $cost, emission: $emission)';
}


}

/// @nodoc
abstract mixin class $EmissionAverageSummaryModelCopyWith<$Res>  {
  factory $EmissionAverageSummaryModelCopyWith(EmissionAverageSummaryModel value, $Res Function(EmissionAverageSummaryModel) _then) = _$EmissionAverageSummaryModelCopyWithImpl;
@useResult
$Res call({
 double kwh, double cost, double emission
});




}
/// @nodoc
class _$EmissionAverageSummaryModelCopyWithImpl<$Res>
    implements $EmissionAverageSummaryModelCopyWith<$Res> {
  _$EmissionAverageSummaryModelCopyWithImpl(this._self, this._then);

  final EmissionAverageSummaryModel _self;
  final $Res Function(EmissionAverageSummaryModel) _then;

/// Create a copy of EmissionAverageSummaryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kwh = null,Object? cost = null,Object? emission = null,}) {
  return _then(_self.copyWith(
kwh: null == kwh ? _self.kwh : kwh // ignore: cast_nullable_to_non_nullable
as double,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as double,emission: null == emission ? _self.emission : emission // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [EmissionAverageSummaryModel].
extension EmissionAverageSummaryModelPatterns on EmissionAverageSummaryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmissionAverageSummaryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmissionAverageSummaryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmissionAverageSummaryModel value)  $default,){
final _that = this;
switch (_that) {
case _EmissionAverageSummaryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmissionAverageSummaryModel value)?  $default,){
final _that = this;
switch (_that) {
case _EmissionAverageSummaryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double kwh,  double cost,  double emission)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmissionAverageSummaryModel() when $default != null:
return $default(_that.kwh,_that.cost,_that.emission);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double kwh,  double cost,  double emission)  $default,) {final _that = this;
switch (_that) {
case _EmissionAverageSummaryModel():
return $default(_that.kwh,_that.cost,_that.emission);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double kwh,  double cost,  double emission)?  $default,) {final _that = this;
switch (_that) {
case _EmissionAverageSummaryModel() when $default != null:
return $default(_that.kwh,_that.cost,_that.emission);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmissionAverageSummaryModel implements EmissionAverageSummaryModel {
  const _EmissionAverageSummaryModel({required this.kwh, required this.cost, required this.emission});
  factory _EmissionAverageSummaryModel.fromJson(Map<String, dynamic> json) => _$EmissionAverageSummaryModelFromJson(json);

@override final  double kwh;
@override final  double cost;
@override final  double emission;

/// Create a copy of EmissionAverageSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmissionAverageSummaryModelCopyWith<_EmissionAverageSummaryModel> get copyWith => __$EmissionAverageSummaryModelCopyWithImpl<_EmissionAverageSummaryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmissionAverageSummaryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmissionAverageSummaryModel&&(identical(other.kwh, kwh) || other.kwh == kwh)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.emission, emission) || other.emission == emission));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kwh,cost,emission);

@override
String toString() {
  return 'EmissionAverageSummaryModel(kwh: $kwh, cost: $cost, emission: $emission)';
}


}

/// @nodoc
abstract mixin class _$EmissionAverageSummaryModelCopyWith<$Res> implements $EmissionAverageSummaryModelCopyWith<$Res> {
  factory _$EmissionAverageSummaryModelCopyWith(_EmissionAverageSummaryModel value, $Res Function(_EmissionAverageSummaryModel) _then) = __$EmissionAverageSummaryModelCopyWithImpl;
@override @useResult
$Res call({
 double kwh, double cost, double emission
});




}
/// @nodoc
class __$EmissionAverageSummaryModelCopyWithImpl<$Res>
    implements _$EmissionAverageSummaryModelCopyWith<$Res> {
  __$EmissionAverageSummaryModelCopyWithImpl(this._self, this._then);

  final _EmissionAverageSummaryModel _self;
  final $Res Function(_EmissionAverageSummaryModel) _then;

/// Create a copy of EmissionAverageSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kwh = null,Object? cost = null,Object? emission = null,}) {
  return _then(_EmissionAverageSummaryModel(
kwh: null == kwh ? _self.kwh : kwh // ignore: cast_nullable_to_non_nullable
as double,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as double,emission: null == emission ? _self.emission : emission // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$EmissionMonthlySummaryModel {

 String get month; double get kwh; double get cost; double get emission;
/// Create a copy of EmissionMonthlySummaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmissionMonthlySummaryModelCopyWith<EmissionMonthlySummaryModel> get copyWith => _$EmissionMonthlySummaryModelCopyWithImpl<EmissionMonthlySummaryModel>(this as EmissionMonthlySummaryModel, _$identity);

  /// Serializes this EmissionMonthlySummaryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmissionMonthlySummaryModel&&(identical(other.month, month) || other.month == month)&&(identical(other.kwh, kwh) || other.kwh == kwh)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.emission, emission) || other.emission == emission));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,month,kwh,cost,emission);

@override
String toString() {
  return 'EmissionMonthlySummaryModel(month: $month, kwh: $kwh, cost: $cost, emission: $emission)';
}


}

/// @nodoc
abstract mixin class $EmissionMonthlySummaryModelCopyWith<$Res>  {
  factory $EmissionMonthlySummaryModelCopyWith(EmissionMonthlySummaryModel value, $Res Function(EmissionMonthlySummaryModel) _then) = _$EmissionMonthlySummaryModelCopyWithImpl;
@useResult
$Res call({
 String month, double kwh, double cost, double emission
});




}
/// @nodoc
class _$EmissionMonthlySummaryModelCopyWithImpl<$Res>
    implements $EmissionMonthlySummaryModelCopyWith<$Res> {
  _$EmissionMonthlySummaryModelCopyWithImpl(this._self, this._then);

  final EmissionMonthlySummaryModel _self;
  final $Res Function(EmissionMonthlySummaryModel) _then;

/// Create a copy of EmissionMonthlySummaryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? month = null,Object? kwh = null,Object? cost = null,Object? emission = null,}) {
  return _then(_self.copyWith(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,kwh: null == kwh ? _self.kwh : kwh // ignore: cast_nullable_to_non_nullable
as double,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as double,emission: null == emission ? _self.emission : emission // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [EmissionMonthlySummaryModel].
extension EmissionMonthlySummaryModelPatterns on EmissionMonthlySummaryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmissionMonthlySummaryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmissionMonthlySummaryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmissionMonthlySummaryModel value)  $default,){
final _that = this;
switch (_that) {
case _EmissionMonthlySummaryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmissionMonthlySummaryModel value)?  $default,){
final _that = this;
switch (_that) {
case _EmissionMonthlySummaryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String month,  double kwh,  double cost,  double emission)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmissionMonthlySummaryModel() when $default != null:
return $default(_that.month,_that.kwh,_that.cost,_that.emission);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String month,  double kwh,  double cost,  double emission)  $default,) {final _that = this;
switch (_that) {
case _EmissionMonthlySummaryModel():
return $default(_that.month,_that.kwh,_that.cost,_that.emission);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String month,  double kwh,  double cost,  double emission)?  $default,) {final _that = this;
switch (_that) {
case _EmissionMonthlySummaryModel() when $default != null:
return $default(_that.month,_that.kwh,_that.cost,_that.emission);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmissionMonthlySummaryModel implements EmissionMonthlySummaryModel {
  const _EmissionMonthlySummaryModel({required this.month, required this.kwh, required this.cost, required this.emission});
  factory _EmissionMonthlySummaryModel.fromJson(Map<String, dynamic> json) => _$EmissionMonthlySummaryModelFromJson(json);

@override final  String month;
@override final  double kwh;
@override final  double cost;
@override final  double emission;

/// Create a copy of EmissionMonthlySummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmissionMonthlySummaryModelCopyWith<_EmissionMonthlySummaryModel> get copyWith => __$EmissionMonthlySummaryModelCopyWithImpl<_EmissionMonthlySummaryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmissionMonthlySummaryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmissionMonthlySummaryModel&&(identical(other.month, month) || other.month == month)&&(identical(other.kwh, kwh) || other.kwh == kwh)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.emission, emission) || other.emission == emission));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,month,kwh,cost,emission);

@override
String toString() {
  return 'EmissionMonthlySummaryModel(month: $month, kwh: $kwh, cost: $cost, emission: $emission)';
}


}

/// @nodoc
abstract mixin class _$EmissionMonthlySummaryModelCopyWith<$Res> implements $EmissionMonthlySummaryModelCopyWith<$Res> {
  factory _$EmissionMonthlySummaryModelCopyWith(_EmissionMonthlySummaryModel value, $Res Function(_EmissionMonthlySummaryModel) _then) = __$EmissionMonthlySummaryModelCopyWithImpl;
@override @useResult
$Res call({
 String month, double kwh, double cost, double emission
});




}
/// @nodoc
class __$EmissionMonthlySummaryModelCopyWithImpl<$Res>
    implements _$EmissionMonthlySummaryModelCopyWith<$Res> {
  __$EmissionMonthlySummaryModelCopyWithImpl(this._self, this._then);

  final _EmissionMonthlySummaryModel _self;
  final $Res Function(_EmissionMonthlySummaryModel) _then;

/// Create a copy of EmissionMonthlySummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? month = null,Object? kwh = null,Object? cost = null,Object? emission = null,}) {
  return _then(_EmissionMonthlySummaryModel(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,kwh: null == kwh ? _self.kwh : kwh // ignore: cast_nullable_to_non_nullable
as double,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as double,emission: null == emission ? _self.emission : emission // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$EmissionDailySummaryModel {

 double get kwh; double get cost; double get emission;@JsonKey(name: 'active_devices') int get activeDevices;
/// Create a copy of EmissionDailySummaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmissionDailySummaryModelCopyWith<EmissionDailySummaryModel> get copyWith => _$EmissionDailySummaryModelCopyWithImpl<EmissionDailySummaryModel>(this as EmissionDailySummaryModel, _$identity);

  /// Serializes this EmissionDailySummaryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmissionDailySummaryModel&&(identical(other.kwh, kwh) || other.kwh == kwh)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.emission, emission) || other.emission == emission)&&(identical(other.activeDevices, activeDevices) || other.activeDevices == activeDevices));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kwh,cost,emission,activeDevices);

@override
String toString() {
  return 'EmissionDailySummaryModel(kwh: $kwh, cost: $cost, emission: $emission, activeDevices: $activeDevices)';
}


}

/// @nodoc
abstract mixin class $EmissionDailySummaryModelCopyWith<$Res>  {
  factory $EmissionDailySummaryModelCopyWith(EmissionDailySummaryModel value, $Res Function(EmissionDailySummaryModel) _then) = _$EmissionDailySummaryModelCopyWithImpl;
@useResult
$Res call({
 double kwh, double cost, double emission,@JsonKey(name: 'active_devices') int activeDevices
});




}
/// @nodoc
class _$EmissionDailySummaryModelCopyWithImpl<$Res>
    implements $EmissionDailySummaryModelCopyWith<$Res> {
  _$EmissionDailySummaryModelCopyWithImpl(this._self, this._then);

  final EmissionDailySummaryModel _self;
  final $Res Function(EmissionDailySummaryModel) _then;

/// Create a copy of EmissionDailySummaryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kwh = null,Object? cost = null,Object? emission = null,Object? activeDevices = null,}) {
  return _then(_self.copyWith(
kwh: null == kwh ? _self.kwh : kwh // ignore: cast_nullable_to_non_nullable
as double,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as double,emission: null == emission ? _self.emission : emission // ignore: cast_nullable_to_non_nullable
as double,activeDevices: null == activeDevices ? _self.activeDevices : activeDevices // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [EmissionDailySummaryModel].
extension EmissionDailySummaryModelPatterns on EmissionDailySummaryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmissionDailySummaryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmissionDailySummaryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmissionDailySummaryModel value)  $default,){
final _that = this;
switch (_that) {
case _EmissionDailySummaryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmissionDailySummaryModel value)?  $default,){
final _that = this;
switch (_that) {
case _EmissionDailySummaryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double kwh,  double cost,  double emission, @JsonKey(name: 'active_devices')  int activeDevices)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmissionDailySummaryModel() when $default != null:
return $default(_that.kwh,_that.cost,_that.emission,_that.activeDevices);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double kwh,  double cost,  double emission, @JsonKey(name: 'active_devices')  int activeDevices)  $default,) {final _that = this;
switch (_that) {
case _EmissionDailySummaryModel():
return $default(_that.kwh,_that.cost,_that.emission,_that.activeDevices);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double kwh,  double cost,  double emission, @JsonKey(name: 'active_devices')  int activeDevices)?  $default,) {final _that = this;
switch (_that) {
case _EmissionDailySummaryModel() when $default != null:
return $default(_that.kwh,_that.cost,_that.emission,_that.activeDevices);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmissionDailySummaryModel implements EmissionDailySummaryModel {
  const _EmissionDailySummaryModel({required this.kwh, required this.cost, required this.emission, @JsonKey(name: 'active_devices') required this.activeDevices});
  factory _EmissionDailySummaryModel.fromJson(Map<String, dynamic> json) => _$EmissionDailySummaryModelFromJson(json);

@override final  double kwh;
@override final  double cost;
@override final  double emission;
@override@JsonKey(name: 'active_devices') final  int activeDevices;

/// Create a copy of EmissionDailySummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmissionDailySummaryModelCopyWith<_EmissionDailySummaryModel> get copyWith => __$EmissionDailySummaryModelCopyWithImpl<_EmissionDailySummaryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmissionDailySummaryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmissionDailySummaryModel&&(identical(other.kwh, kwh) || other.kwh == kwh)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.emission, emission) || other.emission == emission)&&(identical(other.activeDevices, activeDevices) || other.activeDevices == activeDevices));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kwh,cost,emission,activeDevices);

@override
String toString() {
  return 'EmissionDailySummaryModel(kwh: $kwh, cost: $cost, emission: $emission, activeDevices: $activeDevices)';
}


}

/// @nodoc
abstract mixin class _$EmissionDailySummaryModelCopyWith<$Res> implements $EmissionDailySummaryModelCopyWith<$Res> {
  factory _$EmissionDailySummaryModelCopyWith(_EmissionDailySummaryModel value, $Res Function(_EmissionDailySummaryModel) _then) = __$EmissionDailySummaryModelCopyWithImpl;
@override @useResult
$Res call({
 double kwh, double cost, double emission,@JsonKey(name: 'active_devices') int activeDevices
});




}
/// @nodoc
class __$EmissionDailySummaryModelCopyWithImpl<$Res>
    implements _$EmissionDailySummaryModelCopyWith<$Res> {
  __$EmissionDailySummaryModelCopyWithImpl(this._self, this._then);

  final _EmissionDailySummaryModel _self;
  final $Res Function(_EmissionDailySummaryModel) _then;

/// Create a copy of EmissionDailySummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kwh = null,Object? cost = null,Object? emission = null,Object? activeDevices = null,}) {
  return _then(_EmissionDailySummaryModel(
kwh: null == kwh ? _self.kwh : kwh // ignore: cast_nullable_to_non_nullable
as double,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as double,emission: null == emission ? _self.emission : emission // ignore: cast_nullable_to_non_nullable
as double,activeDevices: null == activeDevices ? _self.activeDevices : activeDevices // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
