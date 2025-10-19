import 'package:quanta_hris/src/features/home/domain/entities/emission_entity.dart';
import 'package:quanta_hris/src/features/home/domain/entities/placement_acsm_entity.dart';
import 'package:quanta_hris/src/features/home/domain/entities/site_dropdown_entity.dart';

abstract class HomeRepository {
  Future<EmissionEntity> getEmission();

  Future<SiteDropdownEntity> getSiteDropdown();

  Future<List<PlacementAcsmEntity>> getPlacementAcsmsBySite({
    required int clientId,
    required int siteId,
  });

  Future<String> postPowerStateByAc({
    required int acId,
    required bool powerState,
  });
}
