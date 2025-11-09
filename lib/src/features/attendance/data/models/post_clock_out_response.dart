import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_clock_out_response.freezed.dart';
part 'post_clock_out_response.g.dart';

@freezed
abstract class PostClockOutResponse with _$PostClockOutResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PostClockOutResponse({
    String? absensiId,
    String? karyawanId,
    String? tanggal,
    String? waktuPulang,
    String? statusPulang,
    String? statusAbsensi,
    String? durasiPulangCepat,
    String? fotoPulang,
    ClockOutBranchResponse? cabang,
    String? distanceFromBranch,
    bool? isEligibleLembur,
  }) = _PostClockOutResponse;

  factory PostClockOutResponse.fromJson(Map<String, dynamic> json) =>
      _$PostClockOutResponseFromJson(json);
}

@freezed
abstract class ClockOutBranchResponse with _$ClockOutBranchResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ClockOutBranchResponse({
    String? cabangId,
    String? namaCabang,
    String? alamat,
  }) = _ClockOutBranchResponse;

  factory ClockOutBranchResponse.fromJson(Map<String, dynamic> json) =>
      _$ClockOutBranchResponseFromJson(json);
}
