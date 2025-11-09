import 'package:quanta_hris/src/features/overtime/domain/entities/overtime_history_entity.dart';
import 'package:quanta_hris/src/features/overtime/domain/repositories/overtime_repository.dart';

class GetOvertimeHistoryUseCase {
  final OvertimeRepository _repository;

  GetOvertimeHistoryUseCase(this._repository);

  Future<List<OvertimeHistoryEntity>> call() {
    return _repository.getOvertimeHistory();
  }
}
