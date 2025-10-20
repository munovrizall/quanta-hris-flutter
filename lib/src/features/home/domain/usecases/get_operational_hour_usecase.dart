import 'package:quanta_hris/src/features/home/domain/entities/operational_hour_entity.dart';
import 'package:quanta_hris/src/features/home/domain/repositories/home_repository.dart';


class GetOperationalHourUseCase {
  final HomeRepository _repository;

  GetOperationalHourUseCase(this._repository);
 
  Future<OperationalHourEntity> call() async {
    return await _repository.getOperationalHours();
  }
}