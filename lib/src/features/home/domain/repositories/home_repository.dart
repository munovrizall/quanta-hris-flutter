import 'package:quanta_hris/src/features/home/domain/entities/operational_hour_entity.dart';

abstract class HomeRepository {
  Future<OperationalHourEntity> getOperationalHours();
}
