import 'package:quanta_hris/src/features/overtime/domain/entities/submit_overtime_params.dart';
import 'package:quanta_hris/src/features/overtime/domain/entities/submit_overtime_result_entity.dart';
import 'package:quanta_hris/src/features/overtime/domain/repositories/overtime_repository.dart';

class SubmitOvertimeUseCase {
  final OvertimeRepository _repository;

  SubmitOvertimeUseCase(this._repository);

  Future<SubmitOvertimeResultEntity> call({
    required SubmitOvertimeParams params,
  }) {
    return _repository.submitOvertime(params: params);
  }
}
