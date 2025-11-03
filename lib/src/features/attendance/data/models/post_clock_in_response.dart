import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_clock_in_response.freezed.dart';
part 'post_clock_in_response.g.dart';

@freezed
abstract class PostClockInResponse with _$PostClockInResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PostClockInResponse({
    String? absensiId,
    String? karyawanId,
    String? tanggal,
    String? waktuMasuk,
    String? statusMasuk,
    String? statusAbsensi,
    String? durasiTelat,
    String? fotoMasuk,
    ClockInBranchResponse? cabang,
    String? distanceFromBranch,
  }) = _PostClockInResponse;

  factory PostClockInResponse.fromJson(Map<String, dynamic> json) =>
      _$PostClockInResponseFromJson(json);
}

@freezed
abstract class ClockInBranchResponse with _$ClockInBranchResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ClockInBranchResponse({
    String? cabangId,
    String? namaCabang,
    String? alamat,
  }) = _ClockInBranchResponse;

  factory ClockInBranchResponse.fromJson(Map<String, dynamic> json) =>
      _$ClockInBranchResponseFromJson(json);
}
