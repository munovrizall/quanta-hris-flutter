import 'package:quanta_hris/src/features/home/domain/entities/attendance_status_entity.dart';
import 'package:quanta_hris/src/features/home/domain/repositories/home_repository.dart';

class GetAttendanceStatusUsecase {
  final HomeRepository _repository;

  GetAttendanceStatusUsecase(this._repository);

  Future<AttendanceStatusEntity> call() async {
    return await _repository.getAttendanceStatus();
  }
}
