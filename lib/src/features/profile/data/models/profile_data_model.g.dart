// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileDataModel _$ProfileDataModelFromJson(Map<String, dynamic> json) =>
    _ProfileDataModel(
      id: (json['id'] as num).toInt(),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String?,
      email: json['email'] as String,
      phoneNumber: json['phone_number'] as String?,
    );

Map<String, dynamic> _$ProfileDataModelToJson(_ProfileDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
    };
