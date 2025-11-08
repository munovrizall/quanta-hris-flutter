import 'package:quanta_hris/src/features/leave/domain/entities/leave_history_entity.dart';
import 'package:quanta_hris/src/features/leave/domain/repositories/leave_repository.dart';

/// UseCase untuk mendapatkan riwayat cuti karyawan.
class GetLeaveHistoryUseCase {
  final LeaveRepository _repository;

  const GetLeaveHistoryUseCase(this._repository);

  Future<LeaveHistoryEntity> call() async {
    return _repository.getLeaveHistory();
  }
}
