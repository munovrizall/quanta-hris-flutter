import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'submit_permission_request.freezed.dart';
part 'submit_permission_request.g.dart';

@freezed
abstract class SubmitPermissionRequest with _$SubmitPermissionRequest {
  const SubmitPermissionRequest._();

  const factory SubmitPermissionRequest({
    @JsonKey(name: 'jenis_izin') required String jenisCuti,
    @JsonKey(name: 'tanggal_mulai') required String tanggalMulai,
    @JsonKey(name: 'tanggal_selesai') required String tanggalSelesai,
    required String keterangan,
    @JsonKey(ignore: true) File? dokumenPendukung,
  }) = _SubmitPermissionRequest;

  factory SubmitPermissionRequest.fromJson(Map<String, dynamic> json) =>
      _$SubmitPermissionRequestFromJson(json);

  Future<FormData> toFormData() async {
    final formData = FormData.fromMap({
      'jenis_izin': jenisCuti,
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
