import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quanta_hris/src/features/authentication/domain/entities/auth_entity.dart';
import 'package:quanta_hris/src/features/attendance/domain/entities/company_branches_entity.dart';

part 'attendance_state.freezed.dart';

@freezed
abstract class AttendanceState with _$AttendanceState {
  const factory AttendanceState({
    @Default(null) CompanyBranchesEntity? companyBranches,
    @Default(false) bool isCompanyBranchesLoading,
    @Default(null) String? companyBranchesError,
    @Default(null) UserEntity? registeredFaceData,
    @Default(false) bool isRegisterFaceLoading,
    @Default(null) String? registerFaceError,
  }) = _AttendanceState;

  const AttendanceState._();

  bool get isLoadingAny => isCompanyBranchesLoading || isRegisterFaceLoading;

  bool get hasAnyError =>
      companyBranchesError != null || registerFaceError != null;
}
