import 'package:quanta_hris/src/features/home/domain/entities/placement_acsm_entity.dart';
import 'package:quanta_hris/src/features/home/domain/repositories/home_repository.dart';

class GetPlacementAcsmBySiteUseCase {
  final HomeRepository _repository;

  GetPlacementAcsmBySiteUseCase(this._repository);

  Future<List<PlacementAcsmEntity>> call({
    required int clientId,
    required int siteId,
  }) async {
    return _repository.getPlacementAcsmsBySite(
      clientId: clientId,
      siteId: siteId,
    );
  }
}
