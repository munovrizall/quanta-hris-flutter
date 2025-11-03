import 'package:freezed_annotation/freezed_annotation.dart';

part 'submit_leave_response.freezed.dart';
part 'submit_leave_response.g.dart';

@freezed
abstract class SubmitLeaveResponse with _$SubmitLeaveResponse {
  const factory SubmitLeaveResponse({
    @JsonKey(name: 'cuti_id') required String cutiId,
    @JsonKey(name: 'karyawan_id') required String karyawanId,
    @JsonKey(name: 'jenis_cuti') required String jenisCuti,
    @JsonKey(name: 'tanggal_mulai') required String tanggalMulai,
    @JsonKey(name: 'tanggal_selesai') required String tanggalSelesai,
    required String keterangan,
    @JsonKey(name: 'status_cuti') required String statusCuti,
    @JsonKey(name: 'dokumen_pendukung') String? dokumenPendukung,
    @JsonKey(name: 'durasi_hari') required int durasiHari,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _SubmitLeaveResponse;

  factory SubmitLeaveResponse.fromJson(Map<String, dynamic> json) =>
      _$SubmitLeaveResponseFromJson(json);
}
