// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApiResponseModel<T> {

 bool get success; int get code; String get message; T get data; PaginationMetaModel? get meta; PaginationLinksModel? get links;
/// Create a copy of ApiResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiResponseModelCopyWith<T, ApiResponseModel<T>> get copyWith => _$ApiResponseModelCopyWithImpl<T, ApiResponseModel<T>>(this as ApiResponseModel<T>, _$identity);

  /// Serializes this ApiResponseModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiResponseModel<T>&&(identical(other.success, success) || other.success == success)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.links, links) || other.links == links));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,code,message,const DeepCollectionEquality().hash(data),meta,links);

@override
String toString() {
  return 'ApiResponseModel<$T>(success: $success, code: $code, message: $message, data: $data, meta: $meta, links: $links)';
}


}

/// @nodoc
abstract mixin class $ApiResponseModelCopyWith<T,$Res>  {
  factory $ApiResponseModelCopyWith(ApiResponseModel<T> value, $Res Function(ApiResponseModel<T>) _then) = _$ApiResponseModelCopyWithImpl;
@useResult
$Res call({
 bool success, int code, String message, T data, PaginationMetaModel? meta, PaginationLinksModel? links
});


$PaginationMetaModelCopyWith<$Res>? get meta;$PaginationLinksModelCopyWith<$Res>? get links;

}
/// @nodoc
class _$ApiResponseModelCopyWithImpl<T,$Res>
    implements $ApiResponseModelCopyWith<T, $Res> {
  _$ApiResponseModelCopyWithImpl(this._self, this._then);

  final ApiResponseModel<T> _self;
  final $Res Function(ApiResponseModel<T>) _then;

/// Create a copy of ApiResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? code = null,Object? message = null,Object? data = freezed,Object? meta = freezed,Object? links = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as PaginationMetaModel?,links: freezed == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as PaginationLinksModel?,
  ));
}
/// Create a copy of ApiResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationMetaModelCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $PaginationMetaModelCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of ApiResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationLinksModelCopyWith<$Res>? get links {
    if (_self.links == null) {
    return null;
  }

  return $PaginationLinksModelCopyWith<$Res>(_self.links!, (value) {
    return _then(_self.copyWith(links: value));
  });
}
}


/// Adds pattern-matching-related methods to [ApiResponseModel].
extension ApiResponseModelPatterns<T> on ApiResponseModel<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiResponseModel<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiResponseModel<T> value)  $default,){
final _that = this;
switch (_that) {
case _ApiResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiResponseModel<T> value)?  $default,){
final _that = this;
switch (_that) {
case _ApiResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  int code,  String message,  T data,  PaginationMetaModel? meta,  PaginationLinksModel? links)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiResponseModel() when $default != null:
return $default(_that.success,_that.code,_that.message,_that.data,_that.meta,_that.links);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  int code,  String message,  T data,  PaginationMetaModel? meta,  PaginationLinksModel? links)  $default,) {final _that = this;
switch (_that) {
case _ApiResponseModel():
return $default(_that.success,_that.code,_that.message,_that.data,_that.meta,_that.links);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  int code,  String message,  T data,  PaginationMetaModel? meta,  PaginationLinksModel? links)?  $default,) {final _that = this;
switch (_that) {
case _ApiResponseModel() when $default != null:
return $default(_that.success,_that.code,_that.message,_that.data,_that.meta,_that.links);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _ApiResponseModel<T> implements ApiResponseModel<T> {
  const _ApiResponseModel({required this.success, required this.code, required this.message, required this.data, this.meta, this.links});
  factory _ApiResponseModel.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$ApiResponseModelFromJson(json,fromJsonT);

@override final  bool success;
@override final  int code;
@override final  String message;
@override final  T data;
@override final  PaginationMetaModel? meta;
@override final  PaginationLinksModel? links;

/// Create a copy of ApiResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiResponseModelCopyWith<T, _ApiResponseModel<T>> get copyWith => __$ApiResponseModelCopyWithImpl<T, _ApiResponseModel<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$ApiResponseModelToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiResponseModel<T>&&(identical(other.success, success) || other.success == success)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.links, links) || other.links == links));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,code,message,const DeepCollectionEquality().hash(data),meta,links);

@override
String toString() {
  return 'ApiResponseModel<$T>(success: $success, code: $code, message: $message, data: $data, meta: $meta, links: $links)';
}


}

/// @nodoc
abstract mixin class _$ApiResponseModelCopyWith<T,$Res> implements $ApiResponseModelCopyWith<T, $Res> {
  factory _$ApiResponseModelCopyWith(_ApiResponseModel<T> value, $Res Function(_ApiResponseModel<T>) _then) = __$ApiResponseModelCopyWithImpl;
@override @useResult
$Res call({
 bool success, int code, String message, T data, PaginationMetaModel? meta, PaginationLinksModel? links
});


@override $PaginationMetaModelCopyWith<$Res>? get meta;@override $PaginationLinksModelCopyWith<$Res>? get links;

}
/// @nodoc
class __$ApiResponseModelCopyWithImpl<T,$Res>
    implements _$ApiResponseModelCopyWith<T, $Res> {
  __$ApiResponseModelCopyWithImpl(this._self, this._then);

  final _ApiResponseModel<T> _self;
  final $Res Function(_ApiResponseModel<T>) _then;

/// Create a copy of ApiResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? code = null,Object? message = null,Object? data = freezed,Object? meta = freezed,Object? links = freezed,}) {
  return _then(_ApiResponseModel<T>(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as PaginationMetaModel?,links: freezed == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as PaginationLinksModel?,
  ));
}

/// Create a copy of ApiResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationMetaModelCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $PaginationMetaModelCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of ApiResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationLinksModelCopyWith<$Res>? get links {
    if (_self.links == null) {
    return null;
  }

  return $PaginationLinksModelCopyWith<$Res>(_self.links!, (value) {
    return _then(_self.copyWith(links: value));
  });
}
}


/// @nodoc
mixin _$PaginationMetaModel {

@JsonKey(name: 'current_page') int? get currentPage; int? get from;@JsonKey(name: 'last_page') int? get lastPage;@JsonKey(name: 'per_page') int? get perPage; int? get to; int? get total;
/// Create a copy of PaginationMetaModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationMetaModelCopyWith<PaginationMetaModel> get copyWith => _$PaginationMetaModelCopyWithImpl<PaginationMetaModel>(this as PaginationMetaModel, _$identity);

  /// Serializes this PaginationMetaModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginationMetaModel&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.from, from) || other.from == from)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.to, to) || other.to == to)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,from,lastPage,perPage,to,total);

@override
String toString() {
  return 'PaginationMetaModel(currentPage: $currentPage, from: $from, lastPage: $lastPage, perPage: $perPage, to: $to, total: $total)';
}


}

/// @nodoc
abstract mixin class $PaginationMetaModelCopyWith<$Res>  {
  factory $PaginationMetaModelCopyWith(PaginationMetaModel value, $Res Function(PaginationMetaModel) _then) = _$PaginationMetaModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'current_page') int? currentPage, int? from,@JsonKey(name: 'last_page') int? lastPage,@JsonKey(name: 'per_page') int? perPage, int? to, int? total
});




}
/// @nodoc
class _$PaginationMetaModelCopyWithImpl<$Res>
    implements $PaginationMetaModelCopyWith<$Res> {
  _$PaginationMetaModelCopyWithImpl(this._self, this._then);

  final PaginationMetaModel _self;
  final $Res Function(PaginationMetaModel) _then;

/// Create a copy of PaginationMetaModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPage = freezed,Object? from = freezed,Object? lastPage = freezed,Object? perPage = freezed,Object? to = freezed,Object? total = freezed,}) {
  return _then(_self.copyWith(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int?,lastPage: freezed == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginationMetaModel].
extension PaginationMetaModelPatterns on PaginationMetaModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginationMetaModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginationMetaModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginationMetaModel value)  $default,){
final _that = this;
switch (_that) {
case _PaginationMetaModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginationMetaModel value)?  $default,){
final _that = this;
switch (_that) {
case _PaginationMetaModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int? currentPage,  int? from, @JsonKey(name: 'last_page')  int? lastPage, @JsonKey(name: 'per_page')  int? perPage,  int? to,  int? total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginationMetaModel() when $default != null:
return $default(_that.currentPage,_that.from,_that.lastPage,_that.perPage,_that.to,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int? currentPage,  int? from, @JsonKey(name: 'last_page')  int? lastPage, @JsonKey(name: 'per_page')  int? perPage,  int? to,  int? total)  $default,) {final _that = this;
switch (_that) {
case _PaginationMetaModel():
return $default(_that.currentPage,_that.from,_that.lastPage,_that.perPage,_that.to,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'current_page')  int? currentPage,  int? from, @JsonKey(name: 'last_page')  int? lastPage, @JsonKey(name: 'per_page')  int? perPage,  int? to,  int? total)?  $default,) {final _that = this;
switch (_that) {
case _PaginationMetaModel() when $default != null:
return $default(_that.currentPage,_that.from,_that.lastPage,_that.perPage,_that.to,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaginationMetaModel implements PaginationMetaModel {
  const _PaginationMetaModel({@JsonKey(name: 'current_page') this.currentPage, this.from, @JsonKey(name: 'last_page') this.lastPage, @JsonKey(name: 'per_page') this.perPage, this.to, this.total});
  factory _PaginationMetaModel.fromJson(Map<String, dynamic> json) => _$PaginationMetaModelFromJson(json);

@override@JsonKey(name: 'current_page') final  int? currentPage;
@override final  int? from;
@override@JsonKey(name: 'last_page') final  int? lastPage;
@override@JsonKey(name: 'per_page') final  int? perPage;
@override final  int? to;
@override final  int? total;

/// Create a copy of PaginationMetaModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationMetaModelCopyWith<_PaginationMetaModel> get copyWith => __$PaginationMetaModelCopyWithImpl<_PaginationMetaModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginationMetaModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginationMetaModel&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.from, from) || other.from == from)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.to, to) || other.to == to)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,from,lastPage,perPage,to,total);

@override
String toString() {
  return 'PaginationMetaModel(currentPage: $currentPage, from: $from, lastPage: $lastPage, perPage: $perPage, to: $to, total: $total)';
}


}

/// @nodoc
abstract mixin class _$PaginationMetaModelCopyWith<$Res> implements $PaginationMetaModelCopyWith<$Res> {
  factory _$PaginationMetaModelCopyWith(_PaginationMetaModel value, $Res Function(_PaginationMetaModel) _then) = __$PaginationMetaModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'current_page') int? currentPage, int? from,@JsonKey(name: 'last_page') int? lastPage,@JsonKey(name: 'per_page') int? perPage, int? to, int? total
});




}
/// @nodoc
class __$PaginationMetaModelCopyWithImpl<$Res>
    implements _$PaginationMetaModelCopyWith<$Res> {
  __$PaginationMetaModelCopyWithImpl(this._self, this._then);

  final _PaginationMetaModel _self;
  final $Res Function(_PaginationMetaModel) _then;

/// Create a copy of PaginationMetaModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = freezed,Object? from = freezed,Object? lastPage = freezed,Object? perPage = freezed,Object? to = freezed,Object? total = freezed,}) {
  return _then(_PaginationMetaModel(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int?,lastPage: freezed == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$PaginationLinksModel {

 String? get first; String? get last; String? get prev; String? get next;
/// Create a copy of PaginationLinksModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationLinksModelCopyWith<PaginationLinksModel> get copyWith => _$PaginationLinksModelCopyWithImpl<PaginationLinksModel>(this as PaginationLinksModel, _$identity);

  /// Serializes this PaginationLinksModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginationLinksModel&&(identical(other.first, first) || other.first == first)&&(identical(other.last, last) || other.last == last)&&(identical(other.prev, prev) || other.prev == prev)&&(identical(other.next, next) || other.next == next));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,first,last,prev,next);

@override
String toString() {
  return 'PaginationLinksModel(first: $first, last: $last, prev: $prev, next: $next)';
}


}

/// @nodoc
abstract mixin class $PaginationLinksModelCopyWith<$Res>  {
  factory $PaginationLinksModelCopyWith(PaginationLinksModel value, $Res Function(PaginationLinksModel) _then) = _$PaginationLinksModelCopyWithImpl;
@useResult
$Res call({
 String? first, String? last, String? prev, String? next
});




}
/// @nodoc
class _$PaginationLinksModelCopyWithImpl<$Res>
    implements $PaginationLinksModelCopyWith<$Res> {
  _$PaginationLinksModelCopyWithImpl(this._self, this._then);

  final PaginationLinksModel _self;
  final $Res Function(PaginationLinksModel) _then;

/// Create a copy of PaginationLinksModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? first = freezed,Object? last = freezed,Object? prev = freezed,Object? next = freezed,}) {
  return _then(_self.copyWith(
first: freezed == first ? _self.first : first // ignore: cast_nullable_to_non_nullable
as String?,last: freezed == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as String?,prev: freezed == prev ? _self.prev : prev // ignore: cast_nullable_to_non_nullable
as String?,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginationLinksModel].
extension PaginationLinksModelPatterns on PaginationLinksModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginationLinksModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginationLinksModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginationLinksModel value)  $default,){
final _that = this;
switch (_that) {
case _PaginationLinksModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginationLinksModel value)?  $default,){
final _that = this;
switch (_that) {
case _PaginationLinksModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? first,  String? last,  String? prev,  String? next)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginationLinksModel() when $default != null:
return $default(_that.first,_that.last,_that.prev,_that.next);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? first,  String? last,  String? prev,  String? next)  $default,) {final _that = this;
switch (_that) {
case _PaginationLinksModel():
return $default(_that.first,_that.last,_that.prev,_that.next);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? first,  String? last,  String? prev,  String? next)?  $default,) {final _that = this;
switch (_that) {
case _PaginationLinksModel() when $default != null:
return $default(_that.first,_that.last,_that.prev,_that.next);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaginationLinksModel implements PaginationLinksModel {
  const _PaginationLinksModel({this.first, this.last, this.prev, this.next});
  factory _PaginationLinksModel.fromJson(Map<String, dynamic> json) => _$PaginationLinksModelFromJson(json);

@override final  String? first;
@override final  String? last;
@override final  String? prev;
@override final  String? next;

/// Create a copy of PaginationLinksModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationLinksModelCopyWith<_PaginationLinksModel> get copyWith => __$PaginationLinksModelCopyWithImpl<_PaginationLinksModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginationLinksModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginationLinksModel&&(identical(other.first, first) || other.first == first)&&(identical(other.last, last) || other.last == last)&&(identical(other.prev, prev) || other.prev == prev)&&(identical(other.next, next) || other.next == next));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,first,last,prev,next);

@override
String toString() {
  return 'PaginationLinksModel(first: $first, last: $last, prev: $prev, next: $next)';
}


}

/// @nodoc
abstract mixin class _$PaginationLinksModelCopyWith<$Res> implements $PaginationLinksModelCopyWith<$Res> {
  factory _$PaginationLinksModelCopyWith(_PaginationLinksModel value, $Res Function(_PaginationLinksModel) _then) = __$PaginationLinksModelCopyWithImpl;
@override @useResult
$Res call({
 String? first, String? last, String? prev, String? next
});




}
/// @nodoc
class __$PaginationLinksModelCopyWithImpl<$Res>
    implements _$PaginationLinksModelCopyWith<$Res> {
  __$PaginationLinksModelCopyWithImpl(this._self, this._then);

  final _PaginationLinksModel _self;
  final $Res Function(_PaginationLinksModel) _then;

/// Create a copy of PaginationLinksModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? first = freezed,Object? last = freezed,Object? prev = freezed,Object? next = freezed,}) {
  return _then(_PaginationLinksModel(
first: freezed == first ? _self.first : first // ignore: cast_nullable_to_non_nullable
as String?,last: freezed == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as String?,prev: freezed == prev ? _self.prev : prev // ignore: cast_nullable_to_non_nullable
as String?,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
