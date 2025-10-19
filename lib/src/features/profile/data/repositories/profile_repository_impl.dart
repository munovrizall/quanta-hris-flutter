import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/features/profile/data/datasources/profile_remote_data_source.dart';
import 'package:quanta_hris/src/features/profile/domain/entities/profile_entity.dart';
import 'package:quanta_hris/src/features/profile/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteDataSource _remoteDataSource;

  ProfileRepositoryImpl(this._remoteDataSource);

  @override
  Future<ProfileEntity> getProfile() async {
    try {
      final responseModel = await _remoteDataSource.getProfile();

      // Proses mapping dari ProfileDataModel (data) ke Entities (domain)
      return ProfileEntity(
        id: responseModel.data.id,
        firstName: responseModel.data.firstName,
        lastName: responseModel.data.lastName,
        email: responseModel.data.email,
        phoneNumber: responseModel.data.phoneNumber,
      );
    } on ApiException {
      // Jika error sudah berupa ApiException, lempar kembali agar bisa ditangani oleh BLoC
      rethrow;
    } catch (e) {
      // Menangkap error tak terduga lainnya
      throw ApiException("An unexpected error occurred in the repository.");
    }
  }
}
