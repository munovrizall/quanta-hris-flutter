import 'package:quanta_hris/src/core/storage/session_storage_repository.dart';
import 'package:quanta_hris/src/features/authentication/domain/entities/auth_entity.dart';
import 'package:quanta_hris/src/features/face_recognition/domain/repositories/face_recognition_repository.dart';

class UpdateProfileUseCase {
  final FaceRecognitionRepository _repository;
  final SessionStorageRepository _sessionStorageRepository;

  UpdateProfileUseCase(this._repository, this._sessionStorageRepository);

  Future<UserEntity> call({required String faceEmbedding}) async {
    // Panggil repository untuk update profile
    final updatedUser = await _repository.postUpdateProfile(
      faceEmbedding: faceEmbedding,
    );

    // Jika berhasil, langsung save user ke session storage
    await _sessionStorageRepository.saveUser(updatedUser);

    return updatedUser;
  }
}
