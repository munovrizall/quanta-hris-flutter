import 'package:quanta_hris/src/features/authentication/domain/entities/auth_entity.dart';

abstract class FaceRecognitionRepository {
  Future<UserEntity> postUpdateProfile({required String faceEmbedding});
}
