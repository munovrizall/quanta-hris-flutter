import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response_model.freezed.dart';
part 'api_response_model.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class ApiResponseModel<T> with _$ApiResponseModel<T> {
  const factory ApiResponseModel({
    required bool success,
    required int code,
    required String message,
    required T data,
    PaginationMetaModel? meta,
    PaginationLinksModel? links,
  }) = _ApiResponseModel;

  factory ApiResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$ApiResponseModelFromJson(json, fromJsonT);
}

@freezed
abstract class PaginationMetaModel with _$PaginationMetaModel {
  const factory PaginationMetaModel({
    @JsonKey(name: 'current_page') int? currentPage,
    int? from,
    @JsonKey(name: 'last_page') int? lastPage,
    @JsonKey(name: 'per_page') int? perPage,
    int? to,
    int? total,
  }) = _PaginationMetaModel;

  factory PaginationMetaModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationMetaModelFromJson(json);
}

@freezed
abstract class PaginationLinksModel with _$PaginationLinksModel {
  const factory PaginationLinksModel({
    String? first,
    String? last,
    String? prev,
    String? next,
  }) = _PaginationLinksModel;

  factory PaginationLinksModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationLinksModelFromJson(json);
}
