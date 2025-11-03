import 'package:freezed_annotation/freezed_annotation.dart';

part 'leave_event.freezed.dart';

@freezed
abstract class LeaveEvent with _$LeaveEvent {
  /// Submit permohonan cuti baru.
  const factory LeaveEvent.submitLeave({
    required String jenisCuti,
    required String tanggalMulai,
    required String tanggalSelesai,
    required String keterangan,
    String? dokumenPendukungPath,
  }) = _SubmitLeave;
}
