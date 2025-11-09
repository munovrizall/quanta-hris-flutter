import 'package:freezed_annotation/freezed_annotation.dart';

part 'submit_permission_response.freezed.dart';
part 'submit_permission_response.g.dart';

@freezed
abstract class SubmitPermissionResponse with _$SubmitPermissionResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SubmitPermissionResponse({
    required String izinId,
    required String karyawanId,
    required String jenisIzin,
    required String tanggalMulai,
    required String tanggalSelesai,
    required String keterangan,
    required String statusIzin,
    required String createdAt,
  }) = _SubmitPermissionResponse;

  factory SubmitPermissionResponse.fromJson(Map<String, dynamic> json) =>
      _$SubmitPermissionResponseFromJson(json);
}
