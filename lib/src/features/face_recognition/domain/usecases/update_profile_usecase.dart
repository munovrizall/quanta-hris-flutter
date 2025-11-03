import 'package:quanta_hris/src/core/storage/session_storage_repository.dart';
import 'package:quanta_hris/src/core/utils/app_logger.dart';
import 'package:quanta_hris/src/features/authentication/domain/entities/auth_entity.dart';
import 'package:quanta_hris/src/features/face_recognition/domain/repositories/face_recognition_repository.dart';

class UpdateProfileUseCase {
  final FaceRecognitionRepository _repository;
  final SessionStorageRepository _sessionStorageRepository;

  UpdateProfileUseCase(this._repository, this._sessionStorageRepository);

  Future<UserEntity> call({required String faceEmbedding}) async {
    AppLogger.d('🎯 UseCase: Calling repository to update profile');
    
    // Panggil repository untuk update profile
    final updatedUser = await _repository.postUpdateProfile(
      faceEmbedding: faceEmbedding,
    );

    AppLogger.d('✅ UseCase: Got updated user, saving to session');
    
    // Jika berhasil, langsung save user ke session storage
    await _sessionStorageRepository.saveUser(updatedUser);

    AppLogger.d('✅ UseCase: User saved to session');
    
    return updatedUser;
  }
}