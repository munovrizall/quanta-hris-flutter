// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emission_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EmissionEntity {

 List<EmissionGraphicPointEntity> get graphicData; EmissionSummaryEntity get summary; EmissionDailySummaryEntity get dailySummary;
/// Create a copy of EmissionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmissionEntityCopyWith<EmissionEntity> get copyWith => _$EmissionEntityCopyWithImpl<EmissionEntity>(this as EmissionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmissionEntity&&const DeepCollectionEquality().equals(other.graphicData, graphicData)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.dailySummary, dailySummary) || other.dailySummary == dailySummary));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(graphicData),summary,dailySummary);

@override
String toString() {
  return 'EmissionEntity(graphicData: $graphicData, summary: $summary, dailySummary: $dailySummary)';
}


}

/// @nodoc
abstract mixin class $EmissionEntityCopyWith<$Res>  {
  factory $EmissionEntityCopyWith(EmissionEntity value, $Res Function(EmissionEntity) _then) = _$EmissionEntityCopyWithImpl;
@useResult
$Res call({
 List<EmissionGraphicPointEntity> graphicData, EmissionSummaryEntity summary, EmissionDailySummaryEntity dailySummary
});


$EmissionSummaryEntityCopyWith<$Res> get summary;$EmissionDailySummaryEntityCopyWith<$Res> get dailySummary;

}
/// @nodoc
class _$EmissionEntityCopyWithImpl<$Res>
    implements $EmissionEntityCopyWith<$Res> {
  _$EmissionEntityCopyWithImpl(this._self, this._then);

  final EmissionEntity _self;
  final $Res Function(EmissionEntity) _then;

/// Create a copy of EmissionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? graphicData = null,Object? summary = null,Object? dailySummary = null,}) {
  return _then(_self.copyWith(
graphicData: null == graphicData ? _self.graphicData : graphicData // ignore: cast_nullable_to_non_nullable
as List<EmissionGraphicPointEntity>,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as EmissionSummaryEntity,dailySummary: null == dailySummary ? _self.dailySummary : dailySummary // ignore: cast_nullable_to_non_nullable
as EmissionDailySummaryEntity,
  ));
}
/// Create a copy of EmissionEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmissionSummaryEntityCopyWith<$Res> get summary {
  
  return $EmissionSummaryEntityCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}/// Create a copy of EmissionEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmissionDailySummaryEntityCopyWith<$Res> get dailySummary {
  
  return $EmissionDailySummaryEntityCopyWith<$Res>(_self.dailySummary, (value) {
    return _then(_self.copyWith(dailySummary: value));
  });
}
}


/// Adds pattern-matching-related methods to [EmissionEntity].
extension EmissionEntityPatterns on EmissionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmissionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmissionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmissionEntity value)  $default,){
final _that = this;
switch (_that) {
case _EmissionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmissionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _EmissionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<EmissionGraphicPointEntity> graphicData,  EmissionSummaryEntity summary,  EmissionDailySummaryEntity dailySummary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmissionEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<EmissionGraphicPointEntity> graphicData,  EmissionSummaryEntity summary,  EmissionDailySummaryEntity dailySummary)  $default,) {final _that = this;
switch (_that) {
case _EmissionEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<EmissionGraphicPointEntity> graphicData,  EmissionSummaryEntity summary,  EmissionDailySummaryEntity dailySummary)?  $default,) {final _that = this;
switch (_that) {
case _EmissionEntity() when $default != null:
return $default(_that.graphicData,_that.summary,_that.dailySummary);case _:
  return null;

}
}

}

/// @nodoc


class _EmissionEntity implements EmissionEntity {
  const _EmissionEntity({required final  List<EmissionGraphicPointEntity> graphicData, required this.summary, required this.dailySummary}): _graphicData = graphicData;
  

 final  List<EmissionGraphicPointEntity> _graphicData;
@override List<EmissionGraphicPointEntity> get graphicData {
  if (_graphicData is EqualUnmodifiableListView) return _graphicData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_graphicData);
}

@override final  EmissionSummaryEntity summary;
@override final  EmissionDailySummaryEntity dailySummary;

/// Create a copy of EmissionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmissionEntityCopyWith<_EmissionEntity> get copyWith => __$EmissionEntityCopyWithImpl<_EmissionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmissionEntity&&const DeepCollectionEquality().equals(other._graphicData, _graphicData)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.dailySummary, dailySummary) || other.dailySummary == dailySummary));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_graphicData),summary,dailySummary);

@override
String toString() {
  return 'EmissionEntity(graphicData: $graphicData, summary: $summary, dailySummary: $dailySummary)';
}


}

/// @nodoc
abstract mixin class _$EmissionEntityCopyWith<$Res> implements $EmissionEntityCopyWith<$Res> {
  factory _$EmissionEntityCopyWith(_EmissionEntity value, $Res Function(_EmissionEntity) _then) = __$EmissionEntityCopyWithImpl;
@override @useResult
$Res call({
 List<EmissionGraphicPointEntity> graphicData, EmissionSummaryEntity summary, EmissionDailySummaryEntity dailySummary
});


@override $EmissionSummaryEntityCopyWith<$Res> get summary;@override $EmissionDailySummaryEntityCopyWith<$Res> get dailySummary;

}
/// @nodoc
class __$EmissionEntityCopyWithImpl<$Res>
    implements _$EmissionEntityCopyWith<$Res> {
  __$EmissionEntityCopyWithImpl(this._self, this._then);

  final _EmissionEntity _self;
  final $Res Function(_EmissionEntity) _then;

/// Create a copy of EmissionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? graphicData = null,Object? summary = null,Object? dailySummary = null,}) {
  return _then(_EmissionEntity(
graphicData: null == graphicData ? _self._graphicData : graphicData // ignore: cast_nullable_to_non_nullable
as List<EmissionGraphicPointEntity>,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as EmissionSummaryEntity,dailySummary: null == dailySummary ? _self.dailySummary : dailySummary // ignore: cast_nullable_to_non_nullable
as EmissionDailySummaryEntity,
  ));
}

/// Create a copy of EmissionEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmissionSummaryEntityCopyWith<$Res> get summary {
  
  return $EmissionSummaryEntityCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}/// Create a copy of EmissionEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmissionDailySummaryEntityCopyWith<$Res> get dailySummary {
  
  return $EmissionDailySummaryEntityCopyWith<$Res>(_self.dailySummary, (value) {
    return _then(_self.copyWith(dailySummary: value));
  });
}
}

/// @nodoc
mixin _$EmissionGraphicPointEntity {

 String get month; double get kwh; double get cost; double get emission;
/// Create a copy of EmissionGraphicPointEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmissionGraphicPointEntityCopyWith<EmissionGraphicPointEntity> get copyWith => _$EmissionGraphicPointEntityCopyWithImpl<EmissionGraphicPointEntity>(this as EmissionGraphicPointEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmissionGraphicPointEntity&&(identical(other.month, month) || other.month == month)&&(identical(other.kwh, kwh) || other.kwh == kwh)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.emission, emission) || other.emission == emission));
}


@override
int get hashCode => Object.hash(runtimeType,month,kwh,cost,emission);

@override
String toString() {
  return 'EmissionGraphicPointEntity(month: $month, kwh: $kwh, cost: $cost, emission: $emission)';
}


}

/// @nodoc
abstract mixin class $EmissionGraphicPointEntityCopyWith<$Res>  {
  factory $EmissionGraphicPointEntityCopyWith(EmissionGraphicPointEntity value, $Res Function(EmissionGraphicPointEntity) _then) = _$EmissionGraphicPointEntityCopyWithImpl;
@useResult
$Res call({
 String month, double kwh, double cost, double emission
});




}
/// @nodoc
class _$EmissionGraphicPointEntityCopyWithImpl<$Res>
    implements $EmissionGraphicPointEntityCopyWith<$Res> {
  _$EmissionGraphicPointEntityCopyWithImpl(this._self, this._then);

  final EmissionGraphicPointEntity _self;
  final $Res Function(EmissionGraphicPointEntity) _then;

/// Create a copy of EmissionGraphicPointEntity
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


/// Adds pattern-matching-related methods to [EmissionGraphicPointEntity].
extension EmissionGraphicPointEntityPatterns on EmissionGraphicPointEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmissionGraphicPointEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmissionGraphicPointEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmissionGraphicPointEntity value)  $default,){
final _that = this;
switch (_that) {
case _EmissionGraphicPointEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmissionGraphicPointEntity value)?  $default,){
final _that = this;
switch (_that) {
case _EmissionGraphicPointEntity() when $default != null:
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
case _EmissionGraphicPointEntity() when $default != null:
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
case _EmissionGraphicPointEntity():
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
case _EmissionGraphicPointEntity() when $default != null:
return $default(_that.month,_that.kwh,_that.cost,_that.emission);case _:
  return null;

}
}

}

/// @nodoc


class _EmissionGraphicPointEntity implements EmissionGraphicPointEntity {
  const _EmissionGraphicPointEntity({required this.month, required this.kwh, required this.cost, required this.emission});
  

@override final  String month;
@override final  double kwh;
@override final  double cost;
@override final  double emission;

/// Create a copy of EmissionGraphicPointEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmissionGraphicPointEntityCopyWith<_EmissionGraphicPointEntity> get copyWith => __$EmissionGraphicPointEntityCopyWithImpl<_EmissionGraphicPointEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmissionGraphicPointEntity&&(identical(other.month, month) || other.month == month)&&(identical(other.kwh, kwh) || other.kwh == kwh)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.emission, emission) || other.emission == emission));
}


@override
int get hashCode => Object.hash(runtimeType,month,kwh,cost,emission);

@override
String toString() {
  return 'EmissionGraphicPointEntity(month: $month, kwh: $kwh, cost: $cost, emission: $emission)';
}


}

/// @nodoc
abstract mixin class _$EmissionGraphicPointEntityCopyWith<$Res> implements $EmissionGraphicPointEntityCopyWith<$Res> {
  factory _$EmissionGraphicPointEntityCopyWith(_EmissionGraphicPointEntity value, $Res Function(_EmissionGraphicPointEntity) _then) = __$EmissionGraphicPointEntityCopyWithImpl;
@override @useResult
$Res call({
 String month, double kwh, double cost, double emission
});




}
/// @nodoc
class __$EmissionGraphicPointEntityCopyWithImpl<$Res>
    implements _$EmissionGraphicPointEntityCopyWith<$Res> {
  __$EmissionGraphicPointEntityCopyWithImpl(this._self, this._then);

  final _EmissionGraphicPointEntity _self;
  final $Res Function(_EmissionGraphicPointEntity) _then;

/// Create a copy of EmissionGraphicPointEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? month = null,Object? kwh = null,Object? cost = null,Object? emission = null,}) {
  return _then(_EmissionGraphicPointEntity(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,kwh: null == kwh ? _self.kwh : kwh // ignore: cast_nullable_to_non_nullable
as double,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as double,emission: null == emission ? _self.emission : emission // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$EmissionSummaryEntity {

 EmissionAverageEntity get average; EmissionMonthlySummaryEntity get lastMonth; EmissionMonthlySummaryEntity get currentMonth;
/// Create a copy of EmissionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmissionSummaryEntityCopyWith<EmissionSummaryEntity> get copyWith => _$EmissionSummaryEntityCopyWithImpl<EmissionSummaryEntity>(this as EmissionSummaryEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmissionSummaryEntity&&(identical(other.average, average) || other.average == average)&&(identical(other.lastMonth, lastMonth) || other.lastMonth == lastMonth)&&(identical(other.currentMonth, currentMonth) || other.currentMonth == currentMonth));
}


@override
int get hashCode => Object.hash(runtimeType,average,lastMonth,currentMonth);

@override
String toString() {
  return 'EmissionSummaryEntity(average: $average, lastMonth: $lastMonth, currentMonth: $currentMonth)';
}


}

/// @nodoc
abstract mixin class $EmissionSummaryEntityCopyWith<$Res>  {
  factory $EmissionSummaryEntityCopyWith(EmissionSummaryEntity value, $Res Function(EmissionSummaryEntity) _then) = _$EmissionSummaryEntityCopyWithImpl;
@useResult
$Res call({
 EmissionAverageEntity average, EmissionMonthlySummaryEntity lastMonth, EmissionMonthlySummaryEntity currentMonth
});


$EmissionAverageEntityCopyWith<$Res> get average;$EmissionMonthlySummaryEntityCopyWith<$Res> get lastMonth;$EmissionMonthlySummaryEntityCopyWith<$Res> get currentMonth;

}
/// @nodoc
class _$EmissionSummaryEntityCopyWithImpl<$Res>
    implements $EmissionSummaryEntityCopyWith<$Res> {
  _$EmissionSummaryEntityCopyWithImpl(this._self, this._then);

  final EmissionSummaryEntity _self;
  final $Res Function(EmissionSummaryEntity) _then;

/// Create a copy of EmissionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? average = null,Object? lastMonth = null,Object? currentMonth = null,}) {
  return _then(_self.copyWith(
average: null == average ? _self.average : average // ignore: cast_nullable_to_non_nullable
as EmissionAverageEntity,lastMonth: null == lastMonth ? _self.lastMonth : lastMonth // ignore: cast_nullable_to_non_nullable
as EmissionMonthlySummaryEntity,currentMonth: null == currentMonth ? _self.currentMonth : currentMonth // ignore: cast_nullable_to_non_nullable
as EmissionMonthlySummaryEntity,
  ));
}
/// Create a copy of EmissionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmissionAverageEntityCopyWith<$Res> get average {
  
  return $EmissionAverageEntityCopyWith<$Res>(_self.average, (value) {
    return _then(_self.copyWith(average: value));
  });
}/// Create a copy of EmissionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmissionMonthlySummaryEntityCopyWith<$Res> get lastMonth {
  
  return $EmissionMonthlySummaryEntityCopyWith<$Res>(_self.lastMonth, (value) {
    return _then(_self.copyWith(lastMonth: value));
  });
}/// Create a copy of EmissionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmissionMonthlySummaryEntityCopyWith<$Res> get currentMonth {
  
  return $EmissionMonthlySummaryEntityCopyWith<$Res>(_self.currentMonth, (value) {
    return _then(_self.copyWith(currentMonth: value));
  });
}
}


/// Adds pattern-matching-related methods to [EmissionSummaryEntity].
extension EmissionSummaryEntityPatterns on EmissionSummaryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmissionSummaryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmissionSummaryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmissionSummaryEntity value)  $default,){
final _that = this;
switch (_that) {
case _EmissionSummaryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmissionSummaryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _EmissionSummaryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( EmissionAverageEntity average,  EmissionMonthlySummaryEntity lastMonth,  EmissionMonthlySummaryEntity currentMonth)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmissionSummaryEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( EmissionAverageEntity average,  EmissionMonthlySummaryEntity lastMonth,  EmissionMonthlySummaryEntity currentMonth)  $default,) {final _that = this;
switch (_that) {
case _EmissionSummaryEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( EmissionAverageEntity average,  EmissionMonthlySummaryEntity lastMonth,  EmissionMonthlySummaryEntity currentMonth)?  $default,) {final _that = this;
switch (_that) {
case _EmissionSummaryEntity() when $default != null:
return $default(_that.average,_that.lastMonth,_that.currentMonth);case _:
  return null;

}
}

}

/// @nodoc


class _EmissionSummaryEntity implements EmissionSummaryEntity {
  const _EmissionSummaryEntity({required this.average, required this.lastMonth, required this.currentMonth});
  

@override final  EmissionAverageEntity average;
@override final  EmissionMonthlySummaryEntity lastMonth;
@override final  EmissionMonthlySummaryEntity currentMonth;

/// Create a copy of EmissionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmissionSummaryEntityCopyWith<_EmissionSummaryEntity> get copyWith => __$EmissionSummaryEntityCopyWithImpl<_EmissionSummaryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmissionSummaryEntity&&(identical(other.average, average) || other.average == average)&&(identical(other.lastMonth, lastMonth) || other.lastMonth == lastMonth)&&(identical(other.currentMonth, currentMonth) || other.currentMonth == currentMonth));
}


@override
int get hashCode => Object.hash(runtimeType,average,lastMonth,currentMonth);

@override
String toString() {
  return 'EmissionSummaryEntity(average: $average, lastMonth: $lastMonth, currentMonth: $currentMonth)';
}


}

/// @nodoc
abstract mixin class _$EmissionSummaryEntityCopyWith<$Res> implements $EmissionSummaryEntityCopyWith<$Res> {
  factory _$EmissionSummaryEntityCopyWith(_EmissionSummaryEntity value, $Res Function(_EmissionSummaryEntity) _then) = __$EmissionSummaryEntityCopyWithImpl;
@override @useResult
$Res call({
 EmissionAverageEntity average, EmissionMonthlySummaryEntity lastMonth, EmissionMonthlySummaryEntity currentMonth
});


@override $EmissionAverageEntityCopyWith<$Res> get average;@override $EmissionMonthlySummaryEntityCopyWith<$Res> get lastMonth;@override $EmissionMonthlySummaryEntityCopyWith<$Res> get currentMonth;

}
/// @nodoc
class __$EmissionSummaryEntityCopyWithImpl<$Res>
    implements _$EmissionSummaryEntityCopyWith<$Res> {
  __$EmissionSummaryEntityCopyWithImpl(this._self, this._then);

  final _EmissionSummaryEntity _self;
  final $Res Function(_EmissionSummaryEntity) _then;

/// Create a copy of EmissionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? average = null,Object? lastMonth = null,Object? currentMonth = null,}) {
  return _then(_EmissionSummaryEntity(
average: null == average ? _self.average : average // ignore: cast_nullable_to_non_nullable
as EmissionAverageEntity,lastMonth: null == lastMonth ? _self.lastMonth : lastMonth // ignore: cast_nullable_to_non_nullable
as EmissionMonthlySummaryEntity,currentMonth: null == currentMonth ? _self.currentMonth : currentMonth // ignore: cast_nullable_to_non_nullable
as EmissionMonthlySummaryEntity,
  ));
}

/// Create a copy of EmissionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmissionAverageEntityCopyWith<$Res> get average {
  
  return $EmissionAverageEntityCopyWith<$Res>(_self.average, (value) {
    return _then(_self.copyWith(average: value));
  });
}/// Create a copy of EmissionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmissionMonthlySummaryEntityCopyWith<$Res> get lastMonth {
  
  return $EmissionMonthlySummaryEntityCopyWith<$Res>(_self.lastMonth, (value) {
    return _then(_self.copyWith(lastMonth: value));
  });
}/// Create a copy of EmissionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmissionMonthlySummaryEntityCopyWith<$Res> get currentMonth {
  
  return $EmissionMonthlySummaryEntityCopyWith<$Res>(_self.currentMonth, (value) {
    return _then(_self.copyWith(currentMonth: value));
  });
}
}

/// @nodoc
mixin _$EmissionAverageEntity {

 double get kwh; double get cost; double get emission;
/// Create a copy of EmissionAverageEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmissionAverageEntityCopyWith<EmissionAverageEntity> get copyWith => _$EmissionAverageEntityCopyWithImpl<EmissionAverageEntity>(this as EmissionAverageEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmissionAverageEntity&&(identical(other.kwh, kwh) || other.kwh == kwh)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.emission, emission) || other.emission == emission));
}


@override
int get hashCode => Object.hash(runtimeType,kwh,cost,emission);

@override
String toString() {
  return 'EmissionAverageEntity(kwh: $kwh, cost: $cost, emission: $emission)';
}


}

/// @nodoc
abstract mixin class $EmissionAverageEntityCopyWith<$Res>  {
  factory $EmissionAverageEntityCopyWith(EmissionAverageEntity value, $Res Function(EmissionAverageEntity) _then) = _$EmissionAverageEntityCopyWithImpl;
@useResult
$Res call({
 double kwh, double cost, double emission
});




}
/// @nodoc
class _$EmissionAverageEntityCopyWithImpl<$Res>
    implements $EmissionAverageEntityCopyWith<$Res> {
  _$EmissionAverageEntityCopyWithImpl(this._self, this._then);

  final EmissionAverageEntity _self;
  final $Res Function(EmissionAverageEntity) _then;

/// Create a copy of EmissionAverageEntity
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


/// Adds pattern-matching-related methods to [EmissionAverageEntity].
extension EmissionAverageEntityPatterns on EmissionAverageEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmissionAverageEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmissionAverageEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmissionAverageEntity value)  $default,){
final _that = this;
switch (_that) {
case _EmissionAverageEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmissionAverageEntity value)?  $default,){
final _that = this;
switch (_that) {
case _EmissionAverageEntity() when $default != null:
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
case _EmissionAverageEntity() when $default != null:
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
case _EmissionAverageEntity():
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
case _EmissionAverageEntity() when $default != null:
return $default(_that.kwh,_that.cost,_that.emission);case _:
  return null;

}
}

}

/// @nodoc


class _EmissionAverageEntity implements EmissionAverageEntity {
  const _EmissionAverageEntity({required this.kwh, required this.cost, required this.emission});
  

@override final  double kwh;
@override final  double cost;
@override final  double emission;

/// Create a copy of EmissionAverageEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmissionAverageEntityCopyWith<_EmissionAverageEntity> get copyWith => __$EmissionAverageEntityCopyWithImpl<_EmissionAverageEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmissionAverageEntity&&(identical(other.kwh, kwh) || other.kwh == kwh)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.emission, emission) || other.emission == emission));
}


@override
int get hashCode => Object.hash(runtimeType,kwh,cost,emission);

@override
String toString() {
  return 'EmissionAverageEntity(kwh: $kwh, cost: $cost, emission: $emission)';
}


}

/// @nodoc
abstract mixin class _$EmissionAverageEntityCopyWith<$Res> implements $EmissionAverageEntityCopyWith<$Res> {
  factory _$EmissionAverageEntityCopyWith(_EmissionAverageEntity value, $Res Function(_EmissionAverageEntity) _then) = __$EmissionAverageEntityCopyWithImpl;
@override @useResult
$Res call({
 double kwh, double cost, double emission
});




}
/// @nodoc
class __$EmissionAverageEntityCopyWithImpl<$Res>
    implements _$EmissionAverageEntityCopyWith<$Res> {
  __$EmissionAverageEntityCopyWithImpl(this._self, this._then);

  final _EmissionAverageEntity _self;
  final $Res Function(_EmissionAverageEntity) _then;

/// Create a copy of EmissionAverageEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kwh = null,Object? cost = null,Object? emission = null,}) {
  return _then(_EmissionAverageEntity(
kwh: null == kwh ? _self.kwh : kwh // ignore: cast_nullable_to_non_nullable
as double,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as double,emission: null == emission ? _self.emission : emission // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$EmissionMonthlySummaryEntity {

 String get month; double get kwh; double get cost; double get emission;
/// Create a copy of EmissionMonthlySummaryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmissionMonthlySummaryEntityCopyWith<EmissionMonthlySummaryEntity> get copyWith => _$EmissionMonthlySummaryEntityCopyWithImpl<EmissionMonthlySummaryEntity>(this as EmissionMonthlySummaryEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmissionMonthlySummaryEntity&&(identical(other.month, month) || other.month == month)&&(identical(other.kwh, kwh) || other.kwh == kwh)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.emission, emission) || other.emission == emission));
}


@override
int get hashCode => Object.hash(runtimeType,month,kwh,cost,emission);

@override
String toString() {
  return 'EmissionMonthlySummaryEntity(month: $month, kwh: $kwh, cost: $cost, emission: $emission)';
}


}

/// @nodoc
abstract mixin class $EmissionMonthlySummaryEntityCopyWith<$Res>  {
  factory $EmissionMonthlySummaryEntityCopyWith(EmissionMonthlySummaryEntity value, $Res Function(EmissionMonthlySummaryEntity) _then) = _$EmissionMonthlySummaryEntityCopyWithImpl;
@useResult
$Res call({
 String month, double kwh, double cost, double emission
});




}
/// @nodoc
class _$EmissionMonthlySummaryEntityCopyWithImpl<$Res>
    implements $EmissionMonthlySummaryEntityCopyWith<$Res> {
  _$EmissionMonthlySummaryEntityCopyWithImpl(this._self, this._then);

  final EmissionMonthlySummaryEntity _self;
  final $Res Function(EmissionMonthlySummaryEntity) _then;

/// Create a copy of EmissionMonthlySummaryEntity
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


/// Adds pattern-matching-related methods to [EmissionMonthlySummaryEntity].
extension EmissionMonthlySummaryEntityPatterns on EmissionMonthlySummaryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmissionMonthlySummaryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmissionMonthlySummaryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmissionMonthlySummaryEntity value)  $default,){
final _that = this;
switch (_that) {
case _EmissionMonthlySummaryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmissionMonthlySummaryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _EmissionMonthlySummaryEntity() when $default != null:
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
case _EmissionMonthlySummaryEntity() when $default != null:
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
case _EmissionMonthlySummaryEntity():
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
case _EmissionMonthlySummaryEntity() when $default != null:
return $default(_that.month,_that.kwh,_that.cost,_that.emission);case _:
  return null;

}
}

}

/// @nodoc


class _EmissionMonthlySummaryEntity implements EmissionMonthlySummaryEntity {
  const _EmissionMonthlySummaryEntity({required this.month, required this.kwh, required this.cost, required this.emission});
  

@override final  String month;
@override final  double kwh;
@override final  double cost;
@override final  double emission;

/// Create a copy of EmissionMonthlySummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmissionMonthlySummaryEntityCopyWith<_EmissionMonthlySummaryEntity> get copyWith => __$EmissionMonthlySummaryEntityCopyWithImpl<_EmissionMonthlySummaryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmissionMonthlySummaryEntity&&(identical(other.month, month) || other.month == month)&&(identical(other.kwh, kwh) || other.kwh == kwh)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.emission, emission) || other.emission == emission));
}


@override
int get hashCode => Object.hash(runtimeType,month,kwh,cost,emission);

@override
String toString() {
  return 'EmissionMonthlySummaryEntity(month: $month, kwh: $kwh, cost: $cost, emission: $emission)';
}


}

/// @nodoc
abstract mixin class _$EmissionMonthlySummaryEntityCopyWith<$Res> implements $EmissionMonthlySummaryEntityCopyWith<$Res> {
  factory _$EmissionMonthlySummaryEntityCopyWith(_EmissionMonthlySummaryEntity value, $Res Function(_EmissionMonthlySummaryEntity) _then) = __$EmissionMonthlySummaryEntityCopyWithImpl;
@override @useResult
$Res call({
 String month, double kwh, double cost, double emission
});




}
/// @nodoc
class __$EmissionMonthlySummaryEntityCopyWithImpl<$Res>
    implements _$EmissionMonthlySummaryEntityCopyWith<$Res> {
  __$EmissionMonthlySummaryEntityCopyWithImpl(this._self, this._then);

  final _EmissionMonthlySummaryEntity _self;
  final $Res Function(_EmissionMonthlySummaryEntity) _then;

/// Create a copy of EmissionMonthlySummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? month = null,Object? kwh = null,Object? cost = null,Object? emission = null,}) {
  return _then(_EmissionMonthlySummaryEntity(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,kwh: null == kwh ? _self.kwh : kwh // ignore: cast_nullable_to_non_nullable
as double,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as double,emission: null == emission ? _self.emission : emission // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$EmissionDailySummaryEntity {

 double get kwh; double get cost; double get emission; int get activeDevices;
/// Create a copy of EmissionDailySummaryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmissionDailySummaryEntityCopyWith<EmissionDailySummaryEntity> get copyWith => _$EmissionDailySummaryEntityCopyWithImpl<EmissionDailySummaryEntity>(this as EmissionDailySummaryEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmissionDailySummaryEntity&&(identical(other.kwh, kwh) || other.kwh == kwh)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.emission, emission) || other.emission == emission)&&(identical(other.activeDevices, activeDevices) || other.activeDevices == activeDevices));
}


@override
int get hashCode => Object.hash(runtimeType,kwh,cost,emission,activeDevices);

@override
String toString() {
  return 'EmissionDailySummaryEntity(kwh: $kwh, cost: $cost, emission: $emission, activeDevices: $activeDevices)';
}


}

/// @nodoc
abstract mixin class $EmissionDailySummaryEntityCopyWith<$Res>  {
  factory $EmissionDailySummaryEntityCopyWith(EmissionDailySummaryEntity value, $Res Function(EmissionDailySummaryEntity) _then) = _$EmissionDailySummaryEntityCopyWithImpl;
@useResult
$Res call({
 double kwh, double cost, double emission, int activeDevices
});




}
/// @nodoc
class _$EmissionDailySummaryEntityCopyWithImpl<$Res>
    implements $EmissionDailySummaryEntityCopyWith<$Res> {
  _$EmissionDailySummaryEntityCopyWithImpl(this._self, this._then);

  final EmissionDailySummaryEntity _self;
  final $Res Function(EmissionDailySummaryEntity) _then;

/// Create a copy of EmissionDailySummaryEntity
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


/// Adds pattern-matching-related methods to [EmissionDailySummaryEntity].
extension EmissionDailySummaryEntityPatterns on EmissionDailySummaryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmissionDailySummaryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmissionDailySummaryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmissionDailySummaryEntity value)  $default,){
final _that = this;
switch (_that) {
case _EmissionDailySummaryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmissionDailySummaryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _EmissionDailySummaryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double kwh,  double cost,  double emission,  int activeDevices)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmissionDailySummaryEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double kwh,  double cost,  double emission,  int activeDevices)  $default,) {final _that = this;
switch (_that) {
case _EmissionDailySummaryEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double kwh,  double cost,  double emission,  int activeDevices)?  $default,) {final _that = this;
switch (_that) {
case _EmissionDailySummaryEntity() when $default != null:
return $default(_that.kwh,_that.cost,_that.emission,_that.activeDevices);case _:
  return null;

}
}

}

/// @nodoc


class _EmissionDailySummaryEntity implements EmissionDailySummaryEntity {
  const _EmissionDailySummaryEntity({required this.kwh, required this.cost, required this.emission, required this.activeDevices});
  

@override final  double kwh;
@override final  double cost;
@override final  double emission;
@override final  int activeDevices;

/// Create a copy of EmissionDailySummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmissionDailySummaryEntityCopyWith<_EmissionDailySummaryEntity> get copyWith => __$EmissionDailySummaryEntityCopyWithImpl<_EmissionDailySummaryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmissionDailySummaryEntity&&(identical(other.kwh, kwh) || other.kwh == kwh)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.emission, emission) || other.emission == emission)&&(identical(other.activeDevices, activeDevices) || other.activeDevices == activeDevices));
}


@override
int get hashCode => Object.hash(runtimeType,kwh,cost,emission,activeDevices);

@override
String toString() {
  return 'EmissionDailySummaryEntity(kwh: $kwh, cost: $cost, emission: $emission, activeDevices: $activeDevices)';
}


}

/// @nodoc
abstract mixin class _$EmissionDailySummaryEntityCopyWith<$Res> implements $EmissionDailySummaryEntityCopyWith<$Res> {
  factory _$EmissionDailySummaryEntityCopyWith(_EmissionDailySummaryEntity value, $Res Function(_EmissionDailySummaryEntity) _then) = __$EmissionDailySummaryEntityCopyWithImpl;
@override @useResult
$Res call({
 double kwh, double cost, double emission, int activeDevices
});




}
/// @nodoc
class __$EmissionDailySummaryEntityCopyWithImpl<$Res>
    implements _$EmissionDailySummaryEntityCopyWith<$Res> {
  __$EmissionDailySummaryEntityCopyWithImpl(this._self, this._then);

  final _EmissionDailySummaryEntity _self;
  final $Res Function(_EmissionDailySummaryEntity) _then;

/// Create a copy of EmissionDailySummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kwh = null,Object? cost = null,Object? emission = null,Object? activeDevices = null,}) {
  return _then(_EmissionDailySummaryEntity(
kwh: null == kwh ? _self.kwh : kwh // ignore: cast_nullable_to_non_nullable
as double,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as double,emission: null == emission ? _self.emission : emission // ignore: cast_nullable_to_non_nullable
as double,activeDevices: null == activeDevices ? _self.activeDevices : activeDevices // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
