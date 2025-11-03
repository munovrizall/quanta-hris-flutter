import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'submit_leave_request.freezed.dart';
part 'submit_leave_request.g.dart';

@freezed
abstract class SubmitLeaveRequest with _$SubmitLeaveRequest {
  const SubmitLeaveRequest._();

  const factory SubmitLeaveRequest({
    @JsonKey(name: 'jenis_cuti') required String jenisCuti,
    @JsonKey(name: 'tanggal_mulai') required String tanggalMulai,
    @JsonKey(name: 'tanggal_selesai') required String tanggalSelesai,
    required String keterangan,
    @JsonKey(ignore: true) File? dokumenPendukung,
  }) = _SubmitLeaveRequest;

  factory SubmitLeaveRequest.fromJson(Map<String, dynamic> json) =>
      _$SubmitLeaveRequestFromJson(json);

  Future<FormData> toFormData() async {
    final formData = FormData.fromMap({
      'jenis_cuti': jenisCuti,
      'tanggal_mulai': tanggalMulai,
      'tanggal_selesai': tanggalSelesai,
      'keterangan': keterangan,
    });

    final attachment = dokumenPendukung;
    if (attachment != null) {
      final segments = attachment.uri.pathSegments;
      final fileName = segments.isNotEmpty
          ? segments.last
          : 'dokumen_pendukung';

      formData.files.add(
        MapEntry(
          'dokumen_pendukung',
          await MultipartFile.fromFile(attachment.path, filename: fileName),
        ),
      );
    }

    return formData;
  }
}
