import 'package:quanta_hris/src/features/authentication/domain/entities/auth_entity.dart';
import 'package:quanta_hris/src/features/attendance/domain/entities/clock_in_entity.dart';
import 'package:quanta_hris/src/features/attendance/domain/entities/company_branches_entity.dart';

abstract class AttendanceRepository {
  Future<CompanyBranchesEntity> getCompanyBranches();
  Future<UserEntity> postUpdateProfile({required String faceEmbedding});
  Future<ClockInSubmissionEntity> postClockIn({
    required double latitude,
    required double longitude,
    String? fotoMasuk,
  });
}
