import 'package:quanta_hris/src/features/home/domain/entities/site_dropdown_entity.dart';
import 'package:quanta_hris/src/features/home/domain/repositories/home_repository.dart';

class GetSiteDropdownUseCase {
  final HomeRepository _repository;

  GetSiteDropdownUseCase(this._repository);

  Future<SiteDropdownEntity> call() {
    return _repository.getSiteDropdown();
  }
}
