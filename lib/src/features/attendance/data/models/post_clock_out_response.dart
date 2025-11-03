import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_clock_out_response.freezed.dart';
part 'post_clock_out_response.g.dart';

@freezed
abstract class PostClockOutResponse with _$PostClockOutResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PostClockOutResponse({
    required String absensiId,
    required String karyawanId,
    required String tanggal,
    required String waktuMasuk,
    required String statusMasuk,
    required String statusAbsensi,
    required String durasiTelat,
    required String fotoMasuk,
    required ClockInBranchResponse cabang,
    required String distanceFromBranch,
  }) = _PostClockOutResponse;

  factory PostClockOutResponse.fromJson(Map<String, dynamic> json) =>
      _$PostClockOutResponseFromJson(json);
}

@freezed
abstract class ClockInBranchResponse with _$ClockInBranchResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ClockInBranchResponse({
    required String cabangId,
    required String namaCabang,
    required String alamat,
  }) = _ClockInBranchResponse;

  factory ClockInBranchResponse.fromJson(Map<String, dynamic> json) =>
      _$ClockInBranchResponseFromJson(json);
}
