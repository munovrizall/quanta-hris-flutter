import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/features/attendance/data/datasources/attendance_remote_data_source.dart';
import 'package:quanta_hris/src/features/attendance/data/models/post_clock_in_request.dart';
import 'package:quanta_hris/src/features/attendance/data/models/update_profile_request.dart';
import 'package:quanta_hris/src/features/attendance/domain/entities/clock_in_entity.dart';
import 'package:quanta_hris/src/features/attendance/domain/entities/company_branches_entity.dart';
import 'package:quanta_hris/src/features/attendance/domain/repositories/attendance_repository.dart';
import 'package:quanta_hris/src/features/authentication/domain/entities/auth_entity.dart';

class AttendanceRepositoryImpl implements AttendanceRepository {
  final AttendanceRemoteDataSource _remoteDataSource;

  AttendanceRepositoryImpl(this._remoteDataSource);

  @override
  Future<CompanyBranchesEntity> getCompanyBranches() async {
    try {
      final responseModel = await _remoteDataSource.getCompanyBranches();
      final data = responseModel.data;

      return CompanyBranchesEntity(
        company: CompanyEntity(
          companyId: data.company.companyId,
          companyName: data.company.companyName,
        ),
        branches: data.branches
            .map(
              (branch) => BranchEntity(
                branchId: branch.branchId,
                branchName: branch.branchName,
                address: branch.address,
                latitude: branch.latitude,
                longitude: branch.longitude,
                radiusLocation: branch.radiusLocation,
              ),
            )
            .toList(),
      );
    } on ApiException {
      rethrow;
    } catch (_) {
      throw ApiException('An unexpected error occurred in the repository.');
    }
  }

  @override
  Future<UserEntity> postUpdateProfile({required String faceEmbedding}) async {
    try {
      final requestModel = UpdateProfileRequest(faceEmbedding: faceEmbedding);

      final responseModel = await _remoteDataSource.postUpdateProfile(
        requestModel: requestModel,
      );

      final data = responseModel.data;

      return UserEntity(
        karyawanId: data.karyawanId,
        namaLengkap: data.namaLengkap,
        email: data.email,
        role: RoleEntity(
          roleId: data.role.roleId,
          name: data.role.name,
          guardName: data.role.guardName,
          createdAt: data.role.createdAt,
          updatedAt: data.role.updatedAt,
        ),
        departemen: data.departemen,
        jabatan: data.jabatan,
        nomorTelepon: data.nomorTelepon,
        faceEmbedding: data.faceEmbedding ?? '',
      );
    } on ApiException {
      rethrow;
    } catch (error) {
      throw ApiException('An unexpected error occurred in the repository.');
    }
  }

  @override
  Future<ClockInSubmissionEntity> postClockIn({
    required double latitude,
    required double longitude,
    String? fotoMasuk,
  }) async {
    try {
      final request = PostClockInRequest(
        latitude: latitude,
        longitude: longitude,
        fotoMasuk: fotoMasuk,
      );

      final responseModel = await _remoteDataSource.postClockIn(
        request: request,
      );

      final data = responseModel.data;

      final clockIn = ClockInEntity(
        absensiId: data.absensiId,
        karyawanId: data.karyawanId,
        tanggal: data.tanggal,
        waktuMasuk: data.waktuMasuk,
        statusMasuk: data.statusMasuk,
        statusAbsensi: data.statusAbsensi,
        durasiTelat: data.durasiTelat,
        fotoMasuk: data.fotoMasuk,
        distanceFromBranch: data.distanceFromBranch,
        cabang: ClockInBranchEntity(
          cabangId: data.cabang.cabangId,
          namaCabang: data.cabang.namaCabang,
          alamat: data.cabang.alamat,
        ),
      );

      return ClockInSubmissionEntity(
        clockIn: clockIn,
        message: responseModel.message,
      );
    } on ApiException {
      rethrow;
    } catch (_) {
      throw ApiException('An unexpected error occurred in the repository.');
    }
  }
}
