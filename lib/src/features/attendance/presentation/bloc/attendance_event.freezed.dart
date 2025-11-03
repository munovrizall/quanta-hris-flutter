// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AttendanceEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AttendanceEvent()';
}


}

/// @nodoc
class $AttendanceEventCopyWith<$Res>  {
$AttendanceEventCopyWith(AttendanceEvent _, $Res Function(AttendanceEvent) __);
}


/// Adds pattern-matching-related methods to [AttendanceEvent].
extension AttendanceEventPatterns on AttendanceEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchCompanyBranches value)?  fetchCompanyBranches,TResult Function( _UpdateProfileRegisterFace value)?  updateProfileRegisterFace,TResult Function( _PostClockIn value)?  postClockIn,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchCompanyBranches() when fetchCompanyBranches != null:
return fetchCompanyBranches(_that);case _UpdateProfileRegisterFace() when updateProfileRegisterFace != null:
return updateProfileRegisterFace(_that);case _PostClockIn() when postClockIn != null:
return postClockIn(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchCompanyBranches value)  fetchCompanyBranches,required TResult Function( _UpdateProfileRegisterFace value)  updateProfileRegisterFace,required TResult Function( _PostClockIn value)  postClockIn,}){
final _that = this;
switch (_that) {
case _FetchCompanyBranches():
return fetchCompanyBranches(_that);case _UpdateProfileRegisterFace():
return updateProfileRegisterFace(_that);case _PostClockIn():
return postClockIn(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchCompanyBranches value)?  fetchCompanyBranches,TResult? Function( _UpdateProfileRegisterFace value)?  updateProfileRegisterFace,TResult? Function( _PostClockIn value)?  postClockIn,}){
final _that = this;
switch (_that) {
case _FetchCompanyBranches() when fetchCompanyBranches != null:
return fetchCompanyBranches(_that);case _UpdateProfileRegisterFace() when updateProfileRegisterFace != null:
return updateProfileRegisterFace(_that);case _PostClockIn() when postClockIn != null:
return postClockIn(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchCompanyBranches,TResult Function( String embedding,  XFile? image)?  updateProfileRegisterFace,TResult Function( double latitude,  double longitude,  String? fotoMasuk)?  postClockIn,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchCompanyBranches() when fetchCompanyBranches != null:
return fetchCompanyBranches();case _UpdateProfileRegisterFace() when updateProfileRegisterFace != null:
return updateProfileRegisterFace(_that.embedding,_that.image);case _PostClockIn() when postClockIn != null:
return postClockIn(_that.latitude,_that.longitude,_that.fotoMasuk);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchCompanyBranches,required TResult Function( String embedding,  XFile? image)  updateProfileRegisterFace,required TResult Function( double latitude,  double longitude,  String? fotoMasuk)  postClockIn,}) {final _that = this;
switch (_that) {
case _FetchCompanyBranches():
return fetchCompanyBranches();case _UpdateProfileRegisterFace():
return updateProfileRegisterFace(_that.embedding,_that.image);case _PostClockIn():
return postClockIn(_that.latitude,_that.longitude,_that.fotoMasuk);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchCompanyBranches,TResult? Function( String embedding,  XFile? image)?  updateProfileRegisterFace,TResult? Function( double latitude,  double longitude,  String? fotoMasuk)?  postClockIn,}) {final _that = this;
switch (_that) {
case _FetchCompanyBranches() when fetchCompanyBranches != null:
return fetchCompanyBranches();case _UpdateProfileRegisterFace() when updateProfileRegisterFace != null:
return updateProfileRegisterFace(_that.embedding,_that.image);case _PostClockIn() when postClockIn != null:
return postClockIn(_that.latitude,_that.longitude,_that.fotoMasuk);case _:
  return null;

}
}

}

/// @nodoc


class _FetchCompanyBranches implements AttendanceEvent {
  const _FetchCompanyBranches();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchCompanyBranches);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AttendanceEvent.fetchCompanyBranches()';
}


}




/// @nodoc


class _UpdateProfileRegisterFace implements AttendanceEvent {
  const _UpdateProfileRegisterFace(this.embedding, this.image);
  

 final  String embedding;
 final  XFile? image;

/// Create a copy of AttendanceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProfileRegisterFaceCopyWith<_UpdateProfileRegisterFace> get copyWith => __$UpdateProfileRegisterFaceCopyWithImpl<_UpdateProfileRegisterFace>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProfileRegisterFace&&(identical(other.embedding, embedding) || other.embedding == embedding)&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,embedding,image);

@override
String toString() {
  return 'AttendanceEvent.updateProfileRegisterFace(embedding: $embedding, image: $image)';
}


}

/// @nodoc
abstract mixin class _$UpdateProfileRegisterFaceCopyWith<$Res> implements $AttendanceEventCopyWith<$Res> {
  factory _$UpdateProfileRegisterFaceCopyWith(_UpdateProfileRegisterFace value, $Res Function(_UpdateProfileRegisterFace) _then) = __$UpdateProfileRegisterFaceCopyWithImpl;
@useResult
$Res call({
 String embedding, XFile? image
});




}
/// @nodoc
class __$UpdateProfileRegisterFaceCopyWithImpl<$Res>
    implements _$UpdateProfileRegisterFaceCopyWith<$Res> {
  __$UpdateProfileRegisterFaceCopyWithImpl(this._self, this._then);

  final _UpdateProfileRegisterFace _self;
  final $Res Function(_UpdateProfileRegisterFace) _then;

/// Create a copy of AttendanceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? embedding = null,Object? image = freezed,}) {
  return _then(_UpdateProfileRegisterFace(
null == embedding ? _self.embedding : embedding // ignore: cast_nullable_to_non_nullable
as String,freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as XFile?,
  ));
}


}

/// @nodoc


class _PostClockIn implements AttendanceEvent {
  const _PostClockIn({required this.latitude, required this.longitude, this.fotoMasuk});
  

 final  double latitude;
 final  double longitude;
 final  String? fotoMasuk;

/// Create a copy of AttendanceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostClockInCopyWith<_PostClockIn> get copyWith => __$PostClockInCopyWithImpl<_PostClockIn>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostClockIn&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.fotoMasuk, fotoMasuk) || other.fotoMasuk == fotoMasuk));
}


@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,fotoMasuk);

@override
String toString() {
  return 'AttendanceEvent.postClockIn(latitude: $latitude, longitude: $longitude, fotoMasuk: $fotoMasuk)';
}


}

/// @nodoc
abstract mixin class _$PostClockInCopyWith<$Res> implements $AttendanceEventCopyWith<$Res> {
  factory _$PostClockInCopyWith(_PostClockIn value, $Res Function(_PostClockIn) _then) = __$PostClockInCopyWithImpl;
@useResult
$Res call({
 double latitude, double longitude, String? fotoMasuk
});




}
/// @nodoc
class __$PostClockInCopyWithImpl<$Res>
    implements _$PostClockInCopyWith<$Res> {
  __$PostClockInCopyWithImpl(this._self, this._then);

  final _PostClockIn _self;
  final $Res Function(_PostClockIn) _then;

/// Create a copy of AttendanceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? latitude = null,Object? longitude = null,Object? fotoMasuk = freezed,}) {
  return _then(_PostClockIn(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,fotoMasuk: freezed == fotoMasuk ? _self.fotoMasuk : fotoMasuk // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
