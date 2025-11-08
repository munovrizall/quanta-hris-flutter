import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_leave_history_response.freezed.dart';
part 'get_leave_history_response.g.dart';

/// Response model untuk wrapper riwayat cuti
@freezed
abstract class GetLeaveHistoryResponse with _$GetLeaveHistoryResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GetLeaveHistoryResponse({
    required String karyawanId,
    required int totalPengajuan,
    required int sisaKuotaCuti,
    required List<LeaveHistoryItemResponse> riwayat,
  }) = _GetLeaveHistoryResponse;

  factory GetLeaveHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$GetLeaveHistoryResponseFromJson(json);
}

/// Response model untuk item riwayat cuti
@freezed
abstract class LeaveHistoryItemResponse with _$LeaveHistoryItemResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LeaveHistoryItemResponse({
    required String cutiId,
    required String jenisCuti,
    required String tanggalMulai,
    required String tanggalSelesai,
    required int durasiHari,
    required String statusCuti,
    String? alasanPenolakan,
    String? dokumenPendukung,
    String? diprosesOleh,
    String? diprosesPada,
    required String dibuatPada,
    required String diperbaruiPada,
  }) = _LeaveHistoryItemResponse;

  factory LeaveHistoryItemResponse.fromJson(Map<String, dynamic> json) =>
      _$LeaveHistoryItemResponseFromJson(json);
}
