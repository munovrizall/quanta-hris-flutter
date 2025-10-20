import 'package:quanta_hris/src/features/home/domain/entities/today_leaves_entity.dart';
import 'package:quanta_hris/src/features/home/domain/repositories/home_repository.dart';


class GetTodayLeavesUseCase {
  final HomeRepository _repository;

  GetTodayLeavesUseCase(this._repository);

  Future<TodayLeavesEntity> call() async {
    return await _repository.getTodayLeaves();
  }
}