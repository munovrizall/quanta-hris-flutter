import 'package:quanta_hris/src/features/overtime/domain/entities/overtime_history_entity.dart';
import 'package:quanta_hris/src/features/overtime/domain/entities/submit_overtime_params.dart';
import 'package:quanta_hris/src/features/overtime/domain/entities/submit_overtime_result_entity.dart';

abstract class OvertimeRepository {
  Future<List<OvertimeHistoryEntity>> getOvertimeHistory();
  Future<SubmitOvertimeResultEntity> submitOvertime({
    required SubmitOvertimeParams params,
  });
}
