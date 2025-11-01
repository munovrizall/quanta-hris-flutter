import 'package:quanta_hris/src/features/face_recognition/domain/entities/company_branches_entity.dart';
import 'package:quanta_hris/src/features/attendance/domain/repositories/attendance_repository.dart';

class GetCompanyBranchesUseCase {
  final AttendanceRepository _repository;

  GetCompanyBranchesUseCase(this._repository);

  Future<CompanyBranchesEntity> call() {
    return _repository.getCompanyBranches();
  }
}
