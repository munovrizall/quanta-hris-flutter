import 'package:quanta_hris/src/core/utils/app_logger.dart';
import 'package:quanta_hris/src/features/leave/domain/entities/leave_submission_entity.dart';
import 'package:quanta_hris/src/features/leave/domain/repositories/leave_repository.dart';

class SubmitLeaveUseCase {
  final LeaveRepository _repository;

  SubmitLeaveUseCase(this._repository);

  Future<LeaveSubmissionEntity> call({
    required String jenisCuti,
    required String tanggalMulai,
    required String tanggalSelesai,
    required String keterangan,
    String? dokumenPendukungPath,
  }) async {
    AppLogger.d(
      '🎯 SubmitLeaveUseCase: Submit leave $jenisCuti $tanggalMulai - $tanggalSelesai',
    );

    final result = await _repository.submitLeave(
      jenisCuti: jenisCuti,
      tanggalMulai: tanggalMulai,
      tanggalSelesai: tanggalSelesai,
      keterangan: keterangan,
      dokumenPendukungPath: dokumenPendukungPath,
    );

    AppLogger.d(
      '✅ SubmitLeaveUseCase: Leave submitted with ID ${result.leave.cutiId}',
    );

    return result;
  }
}
