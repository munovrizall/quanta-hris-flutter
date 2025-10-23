import 'package:quanta_hris/src/features/home/domain/entities/is_clocked_in_entity.dart';
import 'package:quanta_hris/src/features/home/domain/repositories/home_repository.dart';

class GetIsClockedInUsecase {
  final HomeRepository _repository;

  GetIsClockedInUsecase(this._repository);

  Future<IsClockedInEntity> call() async {
    return await _repository.getIsClockedIn();
  }
}
