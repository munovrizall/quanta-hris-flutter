// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApiResponseModel<T> _$ApiResponseModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _ApiResponseModel<T>(
  success: json['success'] as bool,
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
  data: fromJsonT(json['data']),
  meta: json['meta'] == null
      ? null
      : PaginationMetaModel.fromJson(json['meta'] as Map<String, dynamic>),
  links: json['links'] == null
      ? null
      : PaginationLinksModel.fromJson(json['links'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ApiResponseModelToJson<T>(
  _ApiResponseModel<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'success': instance.success,
  'code': instance.code,
  'message': instance.message,
  'data': toJsonT(instance.data),
  'meta': instance.meta,
  'links': instance.links,
};

_PaginationMetaModel _$PaginationMetaModelFromJson(Map<String, dynamic> json) =>
    _PaginationMetaModel(
      currentPage: (json['current_page'] as num?)?.toInt(),
      from: (json['from'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
      perPage: (json['per_page'] as num?)?.toInt(),
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PaginationMetaModelToJson(
  _PaginationMetaModel instance,
) => <String, dynamic>{
  'current_page': instance.currentPage,
  'from': instance.from,
  'last_page': instance.lastPage,
  'per_page': instance.perPage,
  'to': instance.to,
  'total': instance.total,
};

_PaginationLinksModel _$PaginationLinksModelFromJson(
  Map<String, dynamic> json,
) => _PaginationLinksModel(
  first: json['first'] as String?,
  last: json['last'] as String?,
  prev: json['prev'] as String?,
  next: json['next'] as String?,
);

Map<String, dynamic> _$PaginationLinksModelToJson(
  _PaginationLinksModel instance,
) => <String, dynamic>{
  'first': instance.first,
  'last': instance.last,
  'prev': instance.prev,
  'next': instance.next,
};
