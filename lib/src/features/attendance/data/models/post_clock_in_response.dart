import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_clock_in_response.freezed.dart';
part 'post_clock_in_response.g.dart';

@freezed
abstract class PostClockInResponse with _$PostClockInResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PostClockInResponse({
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
  }) = _PostClockInResponse;

  factory PostClockInResponse.fromJson(Map<String, dynamic> json) =>
      _$PostClockInResponseFromJson(json);
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
