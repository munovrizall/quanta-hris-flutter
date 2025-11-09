import 'package:quanta_hris/src/features/history/domain/entities/attendance_history_entity.dart';

abstract class HistoryRepository {
  Future<AttendanceHistoryListEntity> getAttendanceHistory();
}
