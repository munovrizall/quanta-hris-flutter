import 'package:quanta_hris/src/features/home/domain/entities/attendance_status_entity.dart';
import 'package:quanta_hris/src/features/home/domain/entities/operational_hour_entity.dart';
import 'package:quanta_hris/src/features/home/domain/entities/today_leaves_entity.dart';

abstract class HomeRepository {
  Future<OperationalHourEntity> getOperationalHours();
  Future<TodayLeavesEntity> getTodayLeaves();
  Future<AttendanceStatusEntity> getAttendanceStatus();
}
