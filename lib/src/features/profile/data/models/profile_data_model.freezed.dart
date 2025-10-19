// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileDataModel {

 int get id;@JsonKey(name: 'first_name') String get firstName;@JsonKey(name: 'last_name') String? get lastName;@JsonKey(name: 'email') String get email;@JsonKey(name: 'phone_number') String? get phoneNumber;
/// Create a copy of ProfileDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileDataModelCopyWith<ProfileDataModel> get copyWith => _$ProfileDataModelCopyWithImpl<ProfileDataModel>(this as ProfileDataModel, _$identity);

  /// Serializes this ProfileDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileDataModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,email,phoneNumber);

@override
String toString() {
  return 'ProfileDataModel(id: $id, firstName: $firstName, lastName: $lastName, email: $email, phoneNumber: $phoneNumber)';
}


}

/// @nodoc
abstract mixin class $ProfileDataModelCopyWith<$Res>  {
  factory $ProfileDataModelCopyWith(ProfileDataModel value, $Res Function(ProfileDataModel) _then) = _$ProfileDataModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String? lastName,@JsonKey(name: 'email') String email,@JsonKey(name: 'phone_number') String? phoneNumber
});




}
/// @nodoc
class _$ProfileDataModelCopyWithImpl<$Res>
    implements $ProfileDataModelCopyWith<$Res> {
  _$ProfileDataModelCopyWithImpl(this._self, this._then);

  final ProfileDataModel _self;
  final $Res Function(ProfileDataModel) _then;

/// Create a copy of ProfileDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = freezed,Object? email = null,Object? phoneNumber = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileDataModel].
extension ProfileDataModelPatterns on ProfileDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileDataModel value)  $default,){
final _that = this;
switch (_that) {
case _ProfileDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'email')  String email, @JsonKey(name: 'phone_number')  String? phoneNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileDataModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.email,_that.phoneNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'email')  String email, @JsonKey(name: 'phone_number')  String? phoneNumber)  $default,) {final _that = this;
switch (_that) {
case _ProfileDataModel():
return $default(_that.id,_that.firstName,_that.lastName,_that.email,_that.phoneNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'email')  String email, @JsonKey(name: 'phone_number')  String? phoneNumber)?  $default,) {final _that = this;
switch (_that) {
case _ProfileDataModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.email,_that.phoneNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileDataModel implements ProfileDataModel {
  const _ProfileDataModel({required this.id, @JsonKey(name: 'first_name') required this.firstName, @JsonKey(name: 'last_name') this.lastName, @JsonKey(name: 'email') required this.email, @JsonKey(name: 'phone_number') this.phoneNumber});
  factory _ProfileDataModel.fromJson(Map<String, dynamic> json) => _$ProfileDataModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'first_name') final  String firstName;
@override@JsonKey(name: 'last_name') final  String? lastName;
@override@JsonKey(name: 'email') final  String email;
@override@JsonKey(name: 'phone_number') final  String? phoneNumber;

/// Create a copy of ProfileDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileDataModelCopyWith<_ProfileDataModel> get copyWith => __$ProfileDataModelCopyWithImpl<_ProfileDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileDataModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,email,phoneNumber);

@override
String toString() {
  return 'ProfileDataModel(id: $id, firstName: $firstName, lastName: $lastName, email: $email, phoneNumber: $phoneNumber)';
}


}

/// @nodoc
abstract mixin class _$ProfileDataModelCopyWith<$Res> implements $ProfileDataModelCopyWith<$Res> {
  factory _$ProfileDataModelCopyWith(_ProfileDataModel value, $Res Function(_ProfileDataModel) _then) = __$ProfileDataModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String? lastName,@JsonKey(name: 'email') String email,@JsonKey(name: 'phone_number') String? phoneNumber
});




}
/// @nodoc
class __$ProfileDataModelCopyWithImpl<$Res>
    implements _$ProfileDataModelCopyWith<$Res> {
  __$ProfileDataModelCopyWithImpl(this._self, this._then);

  final _ProfileDataModel _self;
  final $Res Function(_ProfileDataModel) _then;

/// Create a copy of ProfileDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = freezed,Object? email = null,Object? phoneNumber = freezed,}) {
  return _then(_ProfileDataModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
