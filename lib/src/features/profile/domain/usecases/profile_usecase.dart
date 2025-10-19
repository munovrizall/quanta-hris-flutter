import 'package:quanta_hris/src/features/profile/domain/entities/profile_entity.dart';
import 'package:quanta_hris/src/features/profile/domain/repositories/profile_repository.dart';

/// UseCase yang bertanggung jawab untuk satu tugas: mengambil profil pengguna.
class ProfileUseCase {
  final ProfileRepository _repository;

  ProfileUseCase(this._repository);

  /// Method 'call' memungkinkan class ini dipanggil seperti fungsi.
  Future<ProfileEntity> call() {
    return _repository.getProfile();
  }
}
