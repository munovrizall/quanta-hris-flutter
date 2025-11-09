import 'package:quanta_hris/src/features/history/domain/entities/attendance_history_entity.dart';
import 'package:quanta_hris/src/features/history/domain/repositories/history_repository.dart';

/// UseCase untuk mendapatkan riwayat attendance karyawan.
class GetAttendanceHistoryUseCase {
  final HistoryRepository _repository;

  const GetAttendanceHistoryUseCase(this._repository);

  Future<AttendanceHistoryListEntity> call() async {
    return _repository.getAttendanceHistory();
  }
}
