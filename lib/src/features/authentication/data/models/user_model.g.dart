// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String?,
  firstName: json['first_name'] as String,
  lastName: json['last_name'] as String?,
  clientId: (json['client_id'] as num).toInt(),
  email: json['email'] as String,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'client_id': instance.clientId,
      'email': instance.email,
    };
