// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'face_recognition_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FaceRecognitionState {

 CompanyBranchesEntity? get companyBranches; bool get isCompanyBranchesLoading; String? get companyBranchesError; UserEntity? get registeredFaceData; bool get isRegisterFaceLoading; String? get registerFaceError;
/// Create a copy of FaceRecognitionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FaceRecognitionStateCopyWith<FaceRecognitionState> get copyWith => _$FaceRecognitionStateCopyWithImpl<FaceRecognitionState>(this as FaceRecognitionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FaceRecognitionState&&(identical(other.companyBranches, companyBranches) || other.companyBranches == companyBranches)&&(identical(other.isCompanyBranchesLoading, isCompanyBranchesLoading) || other.isCompanyBranchesLoading == isCompanyBranchesLoading)&&(identical(other.companyBranchesError, companyBranchesError) || other.companyBranchesError == companyBranchesError)&&(identical(other.registeredFaceData, registeredFaceData) || other.registeredFaceData == registeredFaceData)&&(identical(other.isRegisterFaceLoading, isRegisterFaceLoading) || other.isRegisterFaceLoading == isRegisterFaceLoading)&&(identical(other.registerFaceError, registerFaceError) || other.registerFaceError == registerFaceError));
}


@override
int get hashCode => Object.hash(runtimeType,companyBranches,isCompanyBranchesLoading,companyBranchesError,registeredFaceData,isRegisterFaceLoading,registerFaceError);

@override
String toString() {
  return 'FaceRecognitionState(companyBranches: $companyBranches, isCompanyBranchesLoading: $isCompanyBranchesLoading, companyBranchesError: $companyBranchesError, registeredFaceData: $registeredFaceData, isRegisterFaceLoading: $isRegisterFaceLoading, registerFaceError: $registerFaceError)';
}


}

/// @nodoc
abstract mixin class $FaceRecognitionStateCopyWith<$Res>  {
  factory $FaceRecognitionStateCopyWith(FaceRecognitionState value, $Res Function(FaceRecognitionState) _then) = _$FaceRecognitionStateCopyWithImpl;
@useResult
$Res call({
 CompanyBranchesEntity? companyBranches, bool isCompanyBranchesLoading, String? companyBranchesError, UserEntity? registeredFaceData, bool isRegisterFaceLoading, String? registerFaceError
});


$CompanyBranchesEntityCopyWith<$Res>? get companyBranches;$UserEntityCopyWith<$Res>? get registeredFaceData;

}
/// @nodoc
class _$FaceRecognitionStateCopyWithImpl<$Res>
    implements $FaceRecognitionStateCopyWith<$Res> {
  _$FaceRecognitionStateCopyWithImpl(this._self, this._then);

  final FaceRecognitionState _self;
  final $Res Function(FaceRecognitionState) _then;

/// Create a copy of FaceRecognitionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? companyBranches = freezed,Object? isCompanyBranchesLoading = null,Object? companyBranchesError = freezed,Object? registeredFaceData = freezed,Object? isRegisterFaceLoading = null,Object? registerFaceError = freezed,}) {
  return _then(_self.copyWith(
companyBranches: freezed == companyBranches ? _self.companyBranches : companyBranches // ignore: cast_nullable_to_non_nullable
as CompanyBranchesEntity?,isCompanyBranchesLoading: null == isCompanyBranchesLoading ? _self.isCompanyBranchesLoading : isCompanyBranchesLoading // ignore: cast_nullable_to_non_nullable
as bool,companyBranchesError: freezed == companyBranchesError ? _self.companyBranchesError : companyBranchesError // ignore: cast_nullable_to_non_nullable
as String?,registeredFaceData: freezed == registeredFaceData ? _self.registeredFaceData : registeredFaceData // ignore: cast_nullable_to_non_nullable
as UserEntity?,isRegisterFaceLoading: null == isRegisterFaceLoading ? _self.isRegisterFaceLoading : isRegisterFaceLoading // ignore: cast_nullable_to_non_nullable
as bool,registerFaceError: freezed == registerFaceError ? _self.registerFaceError : registerFaceError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of FaceRecognitionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyBranchesEntityCopyWith<$Res>? get companyBranches {
    if (_self.companyBranches == null) {
    return null;
  }

  return $CompanyBranchesEntityCopyWith<$Res>(_self.companyBranches!, (value) {
    return _then(_self.copyWith(companyBranches: value));
  });
}/// Create a copy of FaceRecognitionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res>? get registeredFaceData {
    if (_self.registeredFaceData == null) {
    return null;
  }

  return $UserEntityCopyWith<$Res>(_self.registeredFaceData!, (value) {
    return _then(_self.copyWith(registeredFaceData: value));
  });
}
}


/// Adds pattern-matching-related methods to [FaceRecognitionState].
extension FaceRecognitionStatePatterns on FaceRecognitionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FaceRecognitionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FaceRecognitionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FaceRecognitionState value)  $default,){
final _that = this;
switch (_that) {
case _FaceRecognitionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FaceRecognitionState value)?  $default,){
final _that = this;
switch (_that) {
case _FaceRecognitionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CompanyBranchesEntity? companyBranches,  bool isCompanyBranchesLoading,  String? companyBranchesError,  UserEntity? registeredFaceData,  bool isRegisterFaceLoading,  String? registerFaceError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FaceRecognitionState() when $default != null:
return $default(_that.companyBranches,_that.isCompanyBranchesLoading,_that.companyBranchesError,_that.registeredFaceData,_that.isRegisterFaceLoading,_that.registerFaceError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CompanyBranchesEntity? companyBranches,  bool isCompanyBranchesLoading,  String? companyBranchesError,  UserEntity? registeredFaceData,  bool isRegisterFaceLoading,  String? registerFaceError)  $default,) {final _that = this;
switch (_that) {
case _FaceRecognitionState():
return $default(_that.companyBranches,_that.isCompanyBranchesLoading,_that.companyBranchesError,_that.registeredFaceData,_that.isRegisterFaceLoading,_that.registerFaceError);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CompanyBranchesEntity? companyBranches,  bool isCompanyBranchesLoading,  String? companyBranchesError,  UserEntity? registeredFaceData,  bool isRegisterFaceLoading,  String? registerFaceError)?  $default,) {final _that = this;
switch (_that) {
case _FaceRecognitionState() when $default != null:
return $default(_that.companyBranches,_that.isCompanyBranchesLoading,_that.companyBranchesError,_that.registeredFaceData,_that.isRegisterFaceLoading,_that.registerFaceError);case _:
  return null;

}
}

}

/// @nodoc


class _FaceRecognitionState extends FaceRecognitionState {
  const _FaceRecognitionState({this.companyBranches = null, this.isCompanyBranchesLoading = false, this.companyBranchesError = null, this.registeredFaceData = null, this.isRegisterFaceLoading = false, this.registerFaceError = null}): super._();
  

@override@JsonKey() final  CompanyBranchesEntity? companyBranches;
@override@JsonKey() final  bool isCompanyBranchesLoading;
@override@JsonKey() final  String? companyBranchesError;
@override@JsonKey() final  UserEntity? registeredFaceData;
@override@JsonKey() final  bool isRegisterFaceLoading;
@override@JsonKey() final  String? registerFaceError;

/// Create a copy of FaceRecognitionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FaceRecognitionStateCopyWith<_FaceRecognitionState> get copyWith => __$FaceRecognitionStateCopyWithImpl<_FaceRecognitionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FaceRecognitionState&&(identical(other.companyBranches, companyBranches) || other.companyBranches == companyBranches)&&(identical(other.isCompanyBranchesLoading, isCompanyBranchesLoading) || other.isCompanyBranchesLoading == isCompanyBranchesLoading)&&(identical(other.companyBranchesError, companyBranchesError) || other.companyBranchesError == companyBranchesError)&&(identical(other.registeredFaceData, registeredFaceData) || other.registeredFaceData == registeredFaceData)&&(identical(other.isRegisterFaceLoading, isRegisterFaceLoading) || other.isRegisterFaceLoading == isRegisterFaceLoading)&&(identical(other.registerFaceError, registerFaceError) || other.registerFaceError == registerFaceError));
}


@override
int get hashCode => Object.hash(runtimeType,companyBranches,isCompanyBranchesLoading,companyBranchesError,registeredFaceData,isRegisterFaceLoading,registerFaceError);

@override
String toString() {
  return 'FaceRecognitionState(companyBranches: $companyBranches, isCompanyBranchesLoading: $isCompanyBranchesLoading, companyBranchesError: $companyBranchesError, registeredFaceData: $registeredFaceData, isRegisterFaceLoading: $isRegisterFaceLoading, registerFaceError: $registerFaceError)';
}


}

/// @nodoc
abstract mixin class _$FaceRecognitionStateCopyWith<$Res> implements $FaceRecognitionStateCopyWith<$Res> {
  factory _$FaceRecognitionStateCopyWith(_FaceRecognitionState value, $Res Function(_FaceRecognitionState) _then) = __$FaceRecognitionStateCopyWithImpl;
@override @useResult
$Res call({
 CompanyBranchesEntity? companyBranches, bool isCompanyBranchesLoading, String? companyBranchesError, UserEntity? registeredFaceData, bool isRegisterFaceLoading, String? registerFaceError
});


@override $CompanyBranchesEntityCopyWith<$Res>? get companyBranches;@override $UserEntityCopyWith<$Res>? get registeredFaceData;

}
/// @nodoc
class __$FaceRecognitionStateCopyWithImpl<$Res>
    implements _$FaceRecognitionStateCopyWith<$Res> {
  __$FaceRecognitionStateCopyWithImpl(this._self, this._then);

  final _FaceRecognitionState _self;
  final $Res Function(_FaceRecognitionState) _then;

/// Create a copy of FaceRecognitionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? companyBranches = freezed,Object? isCompanyBranchesLoading = null,Object? companyBranchesError = freezed,Object? registeredFaceData = freezed,Object? isRegisterFaceLoading = null,Object? registerFaceError = freezed,}) {
  return _then(_FaceRecognitionState(
companyBranches: freezed == companyBranches ? _self.companyBranches : companyBranches // ignore: cast_nullable_to_non_nullable
as CompanyBranchesEntity?,isCompanyBranchesLoading: null == isCompanyBranchesLoading ? _self.isCompanyBranchesLoading : isCompanyBranchesLoading // ignore: cast_nullable_to_non_nullable
as bool,companyBranchesError: freezed == companyBranchesError ? _self.companyBranchesError : companyBranchesError // ignore: cast_nullable_to_non_nullable
as String?,registeredFaceData: freezed == registeredFaceData ? _self.registeredFaceData : registeredFaceData // ignore: cast_nullable_to_non_nullable
as UserEntity?,isRegisterFaceLoading: null == isRegisterFaceLoading ? _self.isRegisterFaceLoading : isRegisterFaceLoading // ignore: cast_nullable_to_non_nullable
as bool,registerFaceError: freezed == registerFaceError ? _self.registerFaceError : registerFaceError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of FaceRecognitionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyBranchesEntityCopyWith<$Res>? get companyBranches {
    if (_self.companyBranches == null) {
    return null;
  }

  return $CompanyBranchesEntityCopyWith<$Res>(_self.companyBranches!, (value) {
    return _then(_self.copyWith(companyBranches: value));
  });
}/// Create a copy of FaceRecognitionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res>? get registeredFaceData {
    if (_self.registeredFaceData == null) {
    return null;
  }

  return $UserEntityCopyWith<$Res>(_self.registeredFaceData!, (value) {
    return _then(_self.copyWith(registeredFaceData: value));
  });
}
}

// dart format on
