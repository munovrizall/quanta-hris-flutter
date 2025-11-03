import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quanta_hris/src/features/attendance/domain/entities/clock_in_entity.dart';
import 'package:quanta_hris/src/features/attendance/domain/entities/clock_out_entity.dart';
import 'package:quanta_hris/src/features/attendance/domain/entities/company_branches_entity.dart';
import 'package:quanta_hris/src/features/authentication/domain/entities/auth_entity.dart';

part 'attendance_state.freezed.dart';

@freezed
abstract class AttendanceState with _$AttendanceState {
  const factory AttendanceState({
    // Company branches
    @Default(null) CompanyBranchesEntity? companyBranches,
    @Default(false) bool isCompanyBranchesLoading,
    @Default(null) String? companyBranchesError,

    // Face registration
    @Default(null) UserEntity? registeredFaceData,
    @Default(false) bool isRegisterFaceLoading,
    @Default(null) String? registerFaceError,

    // Clock-in
    @Default(null) ClockInEntity? clockInData,
    @Default(false) bool isClockInLoading,
    @Default(null) String? clockInError,
    @Default(null) String? clockInSuccessMessage,

    // Clock-out
    @Default(null) ClockOutEntity? clockOutData,
    @Default(false) bool isClockOutLoading,
    @Default(null) String? clockOutError,
    @Default(null) String? clockOutSuccessMessage,
  }) = _AttendanceState;

  const AttendanceState._();

  bool get isLoadingAny =>
      isCompanyBranchesLoading ||
      isRegisterFaceLoading ||
      isClockInLoading ||
      isClockOutLoading;

  bool get hasAnyError =>
      companyBranchesError != null ||
      registerFaceError != null ||
      clockInError != null ||
      clockOutError != null;
}
