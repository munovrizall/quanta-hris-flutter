import 'package:freezed_annotation/freezed_annotation.dart';

part 'submit_leave_params.freezed.dart';

/// Entity untuk parameter submit leave request
/// Digunakan untuk mengelompokkan parameter agar tidak terlalu panjang
@freezed
abstract class SubmitLeaveParams with _$SubmitLeaveParams {
  const factory SubmitLeaveParams({
    required String jenisCuti,
    required String tanggalMulai,
    required String tanggalSelesai,
    required String keterangan,
    String? dokumenPendukungPath,
  }) = _SubmitLeaveParams;
}
