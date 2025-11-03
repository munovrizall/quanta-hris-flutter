import 'package:quanta_hris/src/features/leave/domain/entities/leave_submission_entity.dart';

abstract class LeaveRepository {
  Future<LeaveSubmissionEntity> submitLeave({
    required String jenisCuti,
    required String tanggalMulai,
    required String tanggalSelesai,
    required String keterangan,
    String? dokumenPendukungPath,
  });
}
