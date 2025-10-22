// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserModel {

@JsonKey(name: 'karyawan_id') String get karyawanId;@JsonKey(name: 'nama_lengkap') String get namaLengkap; String get email; Role get role; String get departemen; String get jabatan;@JsonKey(name: 'nomor_telepon') String get nomorTelepon;@JsonKey(name: 'face_embedding') String? get faceEmbedding;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.karyawanId, karyawanId) || other.karyawanId == karyawanId)&&(identical(other.namaLengkap, namaLengkap) || other.namaLengkap == namaLengkap)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.departemen, departemen) || other.departemen == departemen)&&(identical(other.jabatan, jabatan) || other.jabatan == jabatan)&&(identical(other.nomorTelepon, nomorTelepon) || other.nomorTelepon == nomorTelepon)&&(identical(other.faceEmbedding, faceEmbedding) || other.faceEmbedding == faceEmbedding));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,karyawanId,namaLengkap,email,role,departemen,jabatan,nomorTelepon,faceEmbedding);

@override
String toString() {
  return 'UserModel(karyawanId: $karyawanId, namaLengkap: $namaLengkap, email: $email, role: $role, departemen: $departemen, jabatan: $jabatan, nomorTelepon: $nomorTelepon, faceEmbedding: $faceEmbedding)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'karyawan_id') String karyawanId,@JsonKey(name: 'nama_lengkap') String namaLengkap, String email, Role role, String departemen, String jabatan,@JsonKey(name: 'nomor_telepon') String nomorTelepon,@JsonKey(name: 'face_embedding') String? faceEmbedding
});


$RoleCopyWith<$Res> get role;

}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? karyawanId = null,Object? namaLengkap = null,Object? email = null,Object? role = null,Object? departemen = null,Object? jabatan = null,Object? nomorTelepon = null,Object? faceEmbedding = freezed,}) {
  return _then(_self.copyWith(
karyawanId: null == karyawanId ? _self.karyawanId : karyawanId // ignore: cast_nullable_to_non_nullable
as String,namaLengkap: null == namaLengkap ? _self.namaLengkap : namaLengkap // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as Role,departemen: null == departemen ? _self.departemen : departemen // ignore: cast_nullable_to_non_nullable
as String,jabatan: null == jabatan ? _self.jabatan : jabatan // ignore: cast_nullable_to_non_nullable
as String,nomorTelepon: null == nomorTelepon ? _self.nomorTelepon : nomorTelepon // ignore: cast_nullable_to_non_nullable
as String,faceEmbedding: freezed == faceEmbedding ? _self.faceEmbedding : faceEmbedding // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoleCopyWith<$Res> get role {
  
  return $RoleCopyWith<$Res>(_self.role, (value) {
    return _then(_self.copyWith(role: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserModel value)  $default,){
final _that = this;
switch (_that) {
case _UserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'karyawan_id')  String karyawanId, @JsonKey(name: 'nama_lengkap')  String namaLengkap,  String email,  Role role,  String departemen,  String jabatan, @JsonKey(name: 'nomor_telepon')  String nomorTelepon, @JsonKey(name: 'face_embedding')  String? faceEmbedding)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.karyawanId,_that.namaLengkap,_that.email,_that.role,_that.departemen,_that.jabatan,_that.nomorTelepon,_that.faceEmbedding);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'karyawan_id')  String karyawanId, @JsonKey(name: 'nama_lengkap')  String namaLengkap,  String email,  Role role,  String departemen,  String jabatan, @JsonKey(name: 'nomor_telepon')  String nomorTelepon, @JsonKey(name: 'face_embedding')  String? faceEmbedding)  $default,) {final _that = this;
switch (_that) {
case _UserModel():
return $default(_that.karyawanId,_that.namaLengkap,_that.email,_that.role,_that.departemen,_that.jabatan,_that.nomorTelepon,_that.faceEmbedding);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'karyawan_id')  String karyawanId, @JsonKey(name: 'nama_lengkap')  String namaLengkap,  String email,  Role role,  String departemen,  String jabatan, @JsonKey(name: 'nomor_telepon')  String nomorTelepon, @JsonKey(name: 'face_embedding')  String? faceEmbedding)?  $default,) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.karyawanId,_that.namaLengkap,_that.email,_that.role,_that.departemen,_that.jabatan,_that.nomorTelepon,_that.faceEmbedding);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserModel implements UserModel {
  const _UserModel({@JsonKey(name: 'karyawan_id') required this.karyawanId, @JsonKey(name: 'nama_lengkap') required this.namaLengkap, required this.email, required this.role, required this.departemen, required this.jabatan, @JsonKey(name: 'nomor_telepon') required this.nomorTelepon, @JsonKey(name: 'face_embedding') this.faceEmbedding});
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override@JsonKey(name: 'karyawan_id') final  String karyawanId;
@override@JsonKey(name: 'nama_lengkap') final  String namaLengkap;
@override final  String email;
@override final  Role role;
@override final  String departemen;
@override final  String jabatan;
@override@JsonKey(name: 'nomor_telepon') final  String nomorTelepon;
@override@JsonKey(name: 'face_embedding') final  String? faceEmbedding;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.karyawanId, karyawanId) || other.karyawanId == karyawanId)&&(identical(other.namaLengkap, namaLengkap) || other.namaLengkap == namaLengkap)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.departemen, departemen) || other.departemen == departemen)&&(identical(other.jabatan, jabatan) || other.jabatan == jabatan)&&(identical(other.nomorTelepon, nomorTelepon) || other.nomorTelepon == nomorTelepon)&&(identical(other.faceEmbedding, faceEmbedding) || other.faceEmbedding == faceEmbedding));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,karyawanId,namaLengkap,email,role,departemen,jabatan,nomorTelepon,faceEmbedding);

@override
String toString() {
  return 'UserModel(karyawanId: $karyawanId, namaLengkap: $namaLengkap, email: $email, role: $role, departemen: $departemen, jabatan: $jabatan, nomorTelepon: $nomorTelepon, faceEmbedding: $faceEmbedding)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'karyawan_id') String karyawanId,@JsonKey(name: 'nama_lengkap') String namaLengkap, String email, Role role, String departemen, String jabatan,@JsonKey(name: 'nomor_telepon') String nomorTelepon,@JsonKey(name: 'face_embedding') String? faceEmbedding
});


@override $RoleCopyWith<$Res> get role;

}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? karyawanId = null,Object? namaLengkap = null,Object? email = null,Object? role = null,Object? departemen = null,Object? jabatan = null,Object? nomorTelepon = null,Object? faceEmbedding = freezed,}) {
  return _then(_UserModel(
karyawanId: null == karyawanId ? _self.karyawanId : karyawanId // ignore: cast_nullable_to_non_nullable
as String,namaLengkap: null == namaLengkap ? _self.namaLengkap : namaLengkap // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as Role,departemen: null == departemen ? _self.departemen : departemen // ignore: cast_nullable_to_non_nullable
as String,jabatan: null == jabatan ? _self.jabatan : jabatan // ignore: cast_nullable_to_non_nullable
as String,nomorTelepon: null == nomorTelepon ? _self.nomorTelepon : nomorTelepon // ignore: cast_nullable_to_non_nullable
as String,faceEmbedding: freezed == faceEmbedding ? _self.faceEmbedding : faceEmbedding // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoleCopyWith<$Res> get role {
  
  return $RoleCopyWith<$Res>(_self.role, (value) {
    return _then(_self.copyWith(role: value));
  });
}
}


/// @nodoc
mixin _$Role {

@JsonKey(name: 'role_id') String get roleId; String get name;@JsonKey(name: 'guard_name') String get guardName;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'updated_at') String get updatedAt;
/// Create a copy of Role
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoleCopyWith<Role> get copyWith => _$RoleCopyWithImpl<Role>(this as Role, _$identity);

  /// Serializes this Role to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Role&&(identical(other.roleId, roleId) || other.roleId == roleId)&&(identical(other.name, name) || other.name == name)&&(identical(other.guardName, guardName) || other.guardName == guardName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,roleId,name,guardName,createdAt,updatedAt);

@override
String toString() {
  return 'Role(roleId: $roleId, name: $name, guardName: $guardName, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $RoleCopyWith<$Res>  {
  factory $RoleCopyWith(Role value, $Res Function(Role) _then) = _$RoleCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'role_id') String roleId, String name,@JsonKey(name: 'guard_name') String guardName,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});




}
/// @nodoc
class _$RoleCopyWithImpl<$Res>
    implements $RoleCopyWith<$Res> {
  _$RoleCopyWithImpl(this._self, this._then);

  final Role _self;
  final $Res Function(Role) _then;

/// Create a copy of Role
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roleId = null,Object? name = null,Object? guardName = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
roleId: null == roleId ? _self.roleId : roleId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,guardName: null == guardName ? _self.guardName : guardName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Role].
extension RolePatterns on Role {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Role value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Role() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Role value)  $default,){
final _that = this;
switch (_that) {
case _Role():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Role value)?  $default,){
final _that = this;
switch (_that) {
case _Role() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'role_id')  String roleId,  String name, @JsonKey(name: 'guard_name')  String guardName, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Role() when $default != null:
return $default(_that.roleId,_that.name,_that.guardName,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'role_id')  String roleId,  String name, @JsonKey(name: 'guard_name')  String guardName, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Role():
return $default(_that.roleId,_that.name,_that.guardName,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'role_id')  String roleId,  String name, @JsonKey(name: 'guard_name')  String guardName, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Role() when $default != null:
return $default(_that.roleId,_that.name,_that.guardName,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Role implements Role {
  const _Role({@JsonKey(name: 'role_id') required this.roleId, required this.name, @JsonKey(name: 'guard_name') required this.guardName, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt});
  factory _Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);

@override@JsonKey(name: 'role_id') final  String roleId;
@override final  String name;
@override@JsonKey(name: 'guard_name') final  String guardName;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'updated_at') final  String updatedAt;

/// Create a copy of Role
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoleCopyWith<_Role> get copyWith => __$RoleCopyWithImpl<_Role>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RoleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Role&&(identical(other.roleId, roleId) || other.roleId == roleId)&&(identical(other.name, name) || other.name == name)&&(identical(other.guardName, guardName) || other.guardName == guardName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,roleId,name,guardName,createdAt,updatedAt);

@override
String toString() {
  return 'Role(roleId: $roleId, name: $name, guardName: $guardName, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$RoleCopyWith<$Res> implements $RoleCopyWith<$Res> {
  factory _$RoleCopyWith(_Role value, $Res Function(_Role) _then) = __$RoleCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'role_id') String roleId, String name,@JsonKey(name: 'guard_name') String guardName,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});




}
/// @nodoc
class __$RoleCopyWithImpl<$Res>
    implements _$RoleCopyWith<$Res> {
  __$RoleCopyWithImpl(this._self, this._then);

  final _Role _self;
  final $Res Function(_Role) _then;

/// Create a copy of Role
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roleId = null,Object? name = null,Object? guardName = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Role(
roleId: null == roleId ? _self.roleId : roleId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,guardName: null == guardName ? _self.guardName : guardName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
