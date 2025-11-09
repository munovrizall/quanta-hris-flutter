import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_permission_history_response.freezed.dart';
part 'get_permission_history_response.g.dart';

@freezed
abstract class GetPermissionHistoryResponse with _$GetPermissionHistoryResponse {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory GetPermissionHistoryResponse({
    required String karyawanId,
    required int totalPengajuan,
    required List<PermissionHistoryItemResponse> riwayat,
  }) = _GetPermissionHistoryResponse;

  factory GetPermissionHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$GetPermissionHistoryResponseFromJson(json);
}

@freezed
abstract class PermissionHistoryItemResponse with _$PermissionHistoryItemResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PermissionHistoryItemResponse({
    required String izinId,
    required String jenisIzin,
    required String tanggalMulai,
    required String tanggalSelesai,
    required String statusIzin,
    String? alasanPenolakan,
    String? dokumenPendukung,
    String? diprosesOleh,
    String? diprosesPada,
    required String dibuatPada,
    required String diperbaruiPada,
  }) = _PermissionHistoryItemResponse;

  factory PermissionHistoryItemResponse.fromJson(Map<String, dynamic> json) =>
      _$PermissionHistoryItemResponseFromJson(json);
}
