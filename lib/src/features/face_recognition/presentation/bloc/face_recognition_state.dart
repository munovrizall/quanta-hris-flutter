import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quanta_hris/src/features/authentication/domain/entities/auth_entity.dart';
import 'package:quanta_hris/src/features/face_recognition/domain/entities/company_branches_entity.dart';

part 'face_recognition_state.freezed.dart';

@freezed
abstract class FaceRecognitionState with _$FaceRecognitionState {
  const factory FaceRecognitionState({
    @Default(null) CompanyBranchesEntity? companyBranches,
    @Default(false) bool isCompanyBranchesLoading,
    @Default(null) String? companyBranchesError,
    @Default(null) UserEntity? registeredFaceData,
    @Default(false) bool isRegisterFaceLoading,
    @Default(null) String? registerFaceError,
  }) = _FaceRecognitionState;

  const FaceRecognitionState._();

  bool get isLoadingAny => isCompanyBranchesLoading || isRegisterFaceLoading;

  bool get hasAnyError =>
      companyBranchesError != null || registerFaceError != null;
}
