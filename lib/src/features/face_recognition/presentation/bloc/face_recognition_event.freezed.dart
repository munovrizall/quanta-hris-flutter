// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'face_recognition_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FaceRecognitionEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FaceRecognitionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FaceRecognitionEvent()';
}


}

/// @nodoc
class $FaceRecognitionEventCopyWith<$Res>  {
$FaceRecognitionEventCopyWith(FaceRecognitionEvent _, $Res Function(FaceRecognitionEvent) __);
}


/// Adds pattern-matching-related methods to [FaceRecognitionEvent].
extension FaceRecognitionEventPatterns on FaceRecognitionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchCompanyBranches value)?  fetchCompanyBranches,TResult Function( _UpdateProfileRegisterFace value)?  updateProfileRegisterFace,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchCompanyBranches() when fetchCompanyBranches != null:
return fetchCompanyBranches(_that);case _UpdateProfileRegisterFace() when updateProfileRegisterFace != null:
return updateProfileRegisterFace(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchCompanyBranches value)  fetchCompanyBranches,required TResult Function( _UpdateProfileRegisterFace value)  updateProfileRegisterFace,}){
final _that = this;
switch (_that) {
case _FetchCompanyBranches():
return fetchCompanyBranches(_that);case _UpdateProfileRegisterFace():
return updateProfileRegisterFace(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchCompanyBranches value)?  fetchCompanyBranches,TResult? Function( _UpdateProfileRegisterFace value)?  updateProfileRegisterFace,}){
final _that = this;
switch (_that) {
case _FetchCompanyBranches() when fetchCompanyBranches != null:
return fetchCompanyBranches(_that);case _UpdateProfileRegisterFace() when updateProfileRegisterFace != null:
return updateProfileRegisterFace(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchCompanyBranches,TResult Function( String embedding,  XFile? image)?  updateProfileRegisterFace,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchCompanyBranches() when fetchCompanyBranches != null:
return fetchCompanyBranches();case _UpdateProfileRegisterFace() when updateProfileRegisterFace != null:
return updateProfileRegisterFace(_that.embedding,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchCompanyBranches,required TResult Function( String embedding,  XFile? image)  updateProfileRegisterFace,}) {final _that = this;
switch (_that) {
case _FetchCompanyBranches():
return fetchCompanyBranches();case _UpdateProfileRegisterFace():
return updateProfileRegisterFace(_that.embedding,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchCompanyBranches,TResult? Function( String embedding,  XFile? image)?  updateProfileRegisterFace,}) {final _that = this;
switch (_that) {
case _FetchCompanyBranches() when fetchCompanyBranches != null:
return fetchCompanyBranches();case _UpdateProfileRegisterFace() when updateProfileRegisterFace != null:
return updateProfileRegisterFace(_that.embedding,_that.image);case _:
  return null;

}
}

}

/// @nodoc


class _FetchCompanyBranches implements FaceRecognitionEvent {
  const _FetchCompanyBranches();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchCompanyBranches);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FaceRecognitionEvent.fetchCompanyBranches()';
}


}




/// @nodoc


class _UpdateProfileRegisterFace implements FaceRecognitionEvent {
  const _UpdateProfileRegisterFace(this.embedding, this.image);
  

 final  String embedding;
 final  XFile? image;

/// Create a copy of FaceRecognitionEvent
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
  return 'FaceRecognitionEvent.updateProfileRegisterFace(embedding: $embedding, image: $image)';
}


}

/// @nodoc
abstract mixin class _$UpdateProfileRegisterFaceCopyWith<$Res> implements $FaceRecognitionEventCopyWith<$Res> {
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

/// Create a copy of FaceRecognitionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? embedding = null,Object? image = freezed,}) {
  return _then(_UpdateProfileRegisterFace(
null == embedding ? _self.embedding : embedding // ignore: cast_nullable_to_non_nullable
as String,freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as XFile?,
  ));
}


}

// dart format on
