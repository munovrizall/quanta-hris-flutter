import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'submit_overtime_request.freezed.dart';
part 'submit_overtime_request.g.dart';

@freezed
abstract class SubmitOvertimeRequest with _$SubmitOvertimeRequest {
  const SubmitOvertimeRequest._();

  const factory SubmitOvertimeRequest({
    @JsonKey(name: 'absensi_id') required String absensiId,
    @JsonKey(name: 'deskripsi_pekerjaan') required String deskripsiPekerjaan,
    @JsonKey(ignore: true) File? dokumenPendukung,
  }) = _SubmitOvertimeRequest;

  factory SubmitOvertimeRequest.fromJson(Map<String, dynamic> json) =>
      _$SubmitOvertimeRequestFromJson(json);

  Future<FormData> toFormData() async {
    final formData = FormData.fromMap({
      'absensi_id': absensiId,
      'deskripsi_pekerjaan': deskripsiPekerjaan,
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
