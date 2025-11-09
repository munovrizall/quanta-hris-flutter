import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quanta_hris/src/features/overtime/domain/entities/overtime_history_entity.dart';
import 'package:quanta_hris/src/features/overtime/domain/entities/submit_overtime_result_entity.dart';

part 'overtime_state.freezed.dart';

@freezed
abstract class OvertimeState with _$OvertimeState {
  const factory OvertimeState({
    @Default(false) bool isLoading,
    @Default(false) bool isSubmitLoading,
    List<OvertimeHistoryEntity>? histories,
    String? error,
    SubmitOvertimeResultEntity? submissionResult,
    String? submitError,
    String? submitSuccessMessage,
  }) = _OvertimeState;
}
