import 'package:freezed_annotation/freezed_annotation.dart';

part 'submit_permission_params.freezed.dart';

@freezed
abstract class SubmitPermissionParams with _$SubmitPermissionParams {
  const factory SubmitPermissionParams({
    required String jenisIzin,
    required String tanggalMulai,
    required String tanggalSelesai,
    required String keterangan,
    String? dokumenPendukungPath,
  }) = _SubmitPermissionParams;
}
