import 'package:freezed_annotation/freezed_annotation.dart';

part 'submit_overtime_response.freezed.dart';
part 'submit_overtime_response.g.dart';

@freezed
abstract class SubmitOvertimeResponse with _$SubmitOvertimeResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SubmitOvertimeResponse({
    required String lemburId,
    required String karyawanId,
    required String absensiId,
    required String tanggalLembur,
    required String durasiLembur,
    required String deskripsiPekerjaan,
    required String statusLembur,
    String? dokumenPendukung,
    required String createdAt,
  }) = _SubmitOvertimeResponse;

  factory SubmitOvertimeResponse.fromJson(Map<String, dynamic> json) =>
      _$SubmitOvertimeResponseFromJson(json);
}
