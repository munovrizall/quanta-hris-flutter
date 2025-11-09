import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quanta_hris/src/features/overtime/domain/entities/overtime_history_entity.dart';

part 'overtime_state.freezed.dart';

@freezed
abstract class OvertimeState with _$OvertimeState {
  const factory OvertimeState({
    @Default(false) bool isLoading,
    List<OvertimeHistoryEntity>? histories,
    String? error,
  }) = _OvertimeState;
}
