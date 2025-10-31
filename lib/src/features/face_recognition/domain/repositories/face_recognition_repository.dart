import 'package:quanta_hris/src/features/authentication/domain/entities/auth_entity.dart';
import 'package:quanta_hris/src/features/face_recognition/domain/entities/company_branches_entity.dart';

abstract class FaceRecognitionRepository {
  Future<CompanyBranchesEntity> getCompanyBranches();
  Future<UserEntity> postUpdateProfile({required String faceEmbedding});
}
