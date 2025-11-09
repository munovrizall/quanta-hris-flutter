import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_overtime_history_response.freezed.dart';
part 'get_overtime_history_response.g.dart';

@freezed
abstract class OvertimeHistoryResponse with _$OvertimeHistoryResponse {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory OvertimeHistoryResponse({
    required String tanggal,
    String? absensiId,
    String? jamMasuk,
    String? statusMasuk,
    String? jamPulang,
    String? statusPulang,
    required String statusAbsensi,
    required bool eligibleLembur,
    String? durasiLemburTerhitung,
    required String jamPulangPerusahaan,
    OvertimeSubmissionResponse? lemburPengajuan,
  }) = _OvertimeHistoryResponse;

  factory OvertimeHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$OvertimeHistoryResponseFromJson(json);
}

@freezed
abstract class OvertimeSubmissionResponse with _$OvertimeSubmissionResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory OvertimeSubmissionResponse({
    required String lemburId,
    required String statusLembur,
    required String durasiLembur,
    required int upahLembur,
    String? processedAt,
  }) = _OvertimeSubmissionResponse;

  factory OvertimeSubmissionResponse.fromJson(Map<String, dynamic> json) =>
      _$OvertimeSubmissionResponseFromJson(json);
}
