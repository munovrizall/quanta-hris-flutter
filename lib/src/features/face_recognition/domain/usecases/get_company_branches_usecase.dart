import 'package:quanta_hris/src/features/face_recognition/domain/entities/company_branches_entity.dart';
import 'package:quanta_hris/src/features/face_recognition/domain/repositories/face_recognition_repository.dart';

class GetCompanyBranchesUseCase {
  final FaceRecognitionRepository _repository;

  GetCompanyBranchesUseCase(this._repository);

  Future<CompanyBranchesEntity> call() {
    return _repository.getCompanyBranches();
  }
}
