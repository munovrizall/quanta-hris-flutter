import 'package:quanta_hris/src/features/overtime/domain/entities/overtime_history_entity.dart';

abstract class OvertimeRepository {
  Future<List<OvertimeHistoryEntity>> getOvertimeHistory();
}
