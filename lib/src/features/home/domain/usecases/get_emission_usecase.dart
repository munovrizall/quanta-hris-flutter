import 'package:quanta_hris/src/features/home/domain/entities/emission_entity.dart';
import 'package:quanta_hris/src/features/home/domain/repositories/home_repository.dart';

class GetEmissionUseCase {
  final HomeRepository _repository;

  GetEmissionUseCase(this._repository);

  Future<EmissionEntity> call() {
    return _repository.getEmission();
  }
}
