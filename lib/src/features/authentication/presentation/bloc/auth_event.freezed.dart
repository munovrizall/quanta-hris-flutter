// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoginButtonPressed value)?  loginButtonPressed,TResult Function( _RegisterButtonPressed value)?  registerButtonPressed,TResult Function( _LogoutButtonPressed value)?  logoutButtonPressed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginButtonPressed() when loginButtonPressed != null:
return loginButtonPressed(_that);case _RegisterButtonPressed() when registerButtonPressed != null:
return registerButtonPressed(_that);case _LogoutButtonPressed() when logoutButtonPressed != null:
return logoutButtonPressed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoginButtonPressed value)  loginButtonPressed,required TResult Function( _RegisterButtonPressed value)  registerButtonPressed,required TResult Function( _LogoutButtonPressed value)  logoutButtonPressed,}){
final _that = this;
switch (_that) {
case _LoginButtonPressed():
return loginButtonPressed(_that);case _RegisterButtonPressed():
return registerButtonPressed(_that);case _LogoutButtonPressed():
return logoutButtonPressed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoginButtonPressed value)?  loginButtonPressed,TResult? Function( _RegisterButtonPressed value)?  registerButtonPressed,TResult? Function( _LogoutButtonPressed value)?  logoutButtonPressed,}){
final _that = this;
switch (_that) {
case _LoginButtonPressed() when loginButtonPressed != null:
return loginButtonPressed(_that);case _RegisterButtonPressed() when registerButtonPressed != null:
return registerButtonPressed(_that);case _LogoutButtonPressed() when logoutButtonPressed != null:
return logoutButtonPressed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String login,  String password)?  loginButtonPressed,TResult Function( String title,  String fullName,  String email,  String password,  String passwordConfirmation)?  registerButtonPressed,TResult Function()?  logoutButtonPressed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginButtonPressed() when loginButtonPressed != null:
return loginButtonPressed(_that.login,_that.password);case _RegisterButtonPressed() when registerButtonPressed != null:
return registerButtonPressed(_that.title,_that.fullName,_that.email,_that.password,_that.passwordConfirmation);case _LogoutButtonPressed() when logoutButtonPressed != null:
return logoutButtonPressed();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String login,  String password)  loginButtonPressed,required TResult Function( String title,  String fullName,  String email,  String password,  String passwordConfirmation)  registerButtonPressed,required TResult Function()  logoutButtonPressed,}) {final _that = this;
switch (_that) {
case _LoginButtonPressed():
return loginButtonPressed(_that.login,_that.password);case _RegisterButtonPressed():
return registerButtonPressed(_that.title,_that.fullName,_that.email,_that.password,_that.passwordConfirmation);case _LogoutButtonPressed():
return logoutButtonPressed();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String login,  String password)?  loginButtonPressed,TResult? Function( String title,  String fullName,  String email,  String password,  String passwordConfirmation)?  registerButtonPressed,TResult? Function()?  logoutButtonPressed,}) {final _that = this;
switch (_that) {
case _LoginButtonPressed() when loginButtonPressed != null:
return loginButtonPressed(_that.login,_that.password);case _RegisterButtonPressed() when registerButtonPressed != null:
return registerButtonPressed(_that.title,_that.fullName,_that.email,_that.password,_that.passwordConfirmation);case _LogoutButtonPressed() when logoutButtonPressed != null:
return logoutButtonPressed();case _:
  return null;

}
}

}

/// @nodoc


class _LoginButtonPressed implements AuthEvent {
  const _LoginButtonPressed({required this.login, required this.password});
  

 final  String login;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginButtonPressedCopyWith<_LoginButtonPressed> get copyWith => __$LoginButtonPressedCopyWithImpl<_LoginButtonPressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginButtonPressed&&(identical(other.login, login) || other.login == login)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,login,password);

@override
String toString() {
  return 'AuthEvent.loginButtonPressed(login: $login, password: $password)';
}


}

/// @nodoc
abstract mixin class _$LoginButtonPressedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$LoginButtonPressedCopyWith(_LoginButtonPressed value, $Res Function(_LoginButtonPressed) _then) = __$LoginButtonPressedCopyWithImpl;
@useResult
$Res call({
 String login, String password
});




}
/// @nodoc
class __$LoginButtonPressedCopyWithImpl<$Res>
    implements _$LoginButtonPressedCopyWith<$Res> {
  __$LoginButtonPressedCopyWithImpl(this._self, this._then);

  final _LoginButtonPressed _self;
  final $Res Function(_LoginButtonPressed) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? login = null,Object? password = null,}) {
  return _then(_LoginButtonPressed(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _RegisterButtonPressed implements AuthEvent {
  const _RegisterButtonPressed({required this.title, required this.fullName, required this.email, required this.password, required this.passwordConfirmation});
  

 final  String title;
 final  String fullName;
 final  String email;
 final  String password;
 final  String passwordConfirmation;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterButtonPressedCopyWith<_RegisterButtonPressed> get copyWith => __$RegisterButtonPressedCopyWithImpl<_RegisterButtonPressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterButtonPressed&&(identical(other.title, title) || other.title == title)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.passwordConfirmation, passwordConfirmation) || other.passwordConfirmation == passwordConfirmation));
}


@override
int get hashCode => Object.hash(runtimeType,title,fullName,email,password,passwordConfirmation);

@override
String toString() {
  return 'AuthEvent.registerButtonPressed(title: $title, fullName: $fullName, email: $email, password: $password, passwordConfirmation: $passwordConfirmation)';
}


}

/// @nodoc
abstract mixin class _$RegisterButtonPressedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$RegisterButtonPressedCopyWith(_RegisterButtonPressed value, $Res Function(_RegisterButtonPressed) _then) = __$RegisterButtonPressedCopyWithImpl;
@useResult
$Res call({
 String title, String fullName, String email, String password, String passwordConfirmation
});




}
/// @nodoc
class __$RegisterButtonPressedCopyWithImpl<$Res>
    implements _$RegisterButtonPressedCopyWith<$Res> {
  __$RegisterButtonPressedCopyWithImpl(this._self, this._then);

  final _RegisterButtonPressed _self;
  final $Res Function(_RegisterButtonPressed) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,Object? fullName = null,Object? email = null,Object? password = null,Object? passwordConfirmation = null,}) {
  return _then(_RegisterButtonPressed(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,passwordConfirmation: null == passwordConfirmation ? _self.passwordConfirmation : passwordConfirmation // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LogoutButtonPressed implements AuthEvent {
  const _LogoutButtonPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LogoutButtonPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.logoutButtonPressed()';
}


}




// dart format on
