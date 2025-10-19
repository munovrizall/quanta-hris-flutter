import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/features/home/data/datasources/home_remote_data_source.dart';
import 'package:quanta_hris/src/features/home/data/models/post_power_state_request.dart';
import 'package:quanta_hris/src/features/home/domain/entities/emission_entity.dart';
import 'package:quanta_hris/src/features/home/domain/entities/placement_acsm_entity.dart';
import 'package:quanta_hris/src/features/home/domain/entities/site_dropdown_entity.dart';
import 'package:quanta_hris/src/features/home/domain/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource _remoteDataSource;

  HomeRepositoryImpl(this._remoteDataSource);

  @override
  Future<EmissionEntity> getEmission() async {
    try {
      final response = await _remoteDataSource.getEmission();
      final data = response.data;

      final graphicData = data.graphicData
          .map(
            (item) => EmissionGraphicPointEntity(
              month: item.month,
              kwh: item.kwh,
              cost: item.cost,
              emission: item.emission,
            ),
          )
          .toList(growable: false);

      final summary = EmissionSummaryEntity(
        average: EmissionAverageEntity(
          kwh: data.summary.average.kwh,
          cost: data.summary.average.cost,
          emission: data.summary.average.emission,
        ),
        lastMonth: EmissionMonthlySummaryEntity(
          month: data.summary.lastMonth.month,
          kwh: data.summary.lastMonth.kwh,
          cost: data.summary.lastMonth.cost,
          emission: data.summary.lastMonth.emission,
        ),
        currentMonth: EmissionMonthlySummaryEntity(
          month: data.summary.currentMonth.month,
          kwh: data.summary.currentMonth.kwh,
          cost: data.summary.currentMonth.cost,
          emission: data.summary.currentMonth.emission,
        ),
      );

      final dailySummary = EmissionDailySummaryEntity(
        kwh: data.dailySummary.kwh,
        cost: data.dailySummary.cost,
        emission: data.dailySummary.emission,
        activeDevices: data.dailySummary.activeDevices,
      );

      return EmissionEntity(
        graphicData: graphicData,
        summary: summary,
        dailySummary: dailySummary,
      );
    } on ApiException {
      rethrow;
    } catch (_) {
      throw ApiException('An unexpected error occurred in the repository.');
    }
  }

  @override
  Future<SiteDropdownEntity> getSiteDropdown() async {
    try {
      final response = await _remoteDataSource.getSiteDropdown();
      final data = response.data;

      final sites = data.sites
          .map(
            (item) => SiteDropdownItemEntity(
              siteId: item.siteId,
              siteName: item.siteName,
              clientId: item.clientId,
              placementCount: item.placementCount,
            ),
          )
          .toList(growable: false);

      return SiteDropdownEntity(sites: sites);
    } on ApiException {
      rethrow;
    } catch (_) {
      throw ApiException('An unexpected error occurred in the repository.');
    }
  }

  @override
  Future<List<PlacementAcsmEntity>> getPlacementAcsmsBySite({
    required int clientId,
    required int siteId,
  }) async {
    try {
      final response = await _remoteDataSource.getPlacementAcsmsBySite(
        clientId: clientId,
        siteId: siteId,
      );
      final data = response.data;

      return data
          .map(
            (site) => PlacementAcsmEntity(
              siteId: site.siteId,
              siteName: site.siteName,
              rooms: site.rooms
                  .map(
                    (room) => PlacementRoomEntity(
                      roomId: room.roomId,
                      roomName: room.roomName,
                      placements: room.placements
                          .map(
                            (placement) => PlacementItemEntity(
                              placementId: placement.placementId,
                              device: PlacementDeviceEntity(
                                deviceId: placement.device.deviceId,
                                deviceName: placement.device.deviceName,
                                hardware: placement.device.hardware,
                                chipId: placement.device.chipId,
                              ),
                              ac: PlacementAcEntity(
                                acId: placement.ac.acId,
                                acName: placement.ac.acName,
                                pkAc: placement.ac.pkAc,
                                anomaly: placement.ac.anomaly,
                                lockTempSetting: placement.ac.lockTempSetting,
                                timerId: placement.ac.timerId,
                                timerName: placement.ac.timerName,
                                remoteId: placement.ac.remoteId,
                                categoryId: placement.ac.categoryId,
                                categoryName: placement.ac.categoryName,
                                categoryImage: placement.ac.categoryImage,
                                brandId: placement.ac.brandId,
                                brandName: placement.ac.brandName,
                                brandImage: placement.ac.brandImage,
                                autoOnSettings: placement.ac.autoOnSettings,
                                data: placement.ac.data == null
                                    ? null
                                    : PlacementAcDataEntity(
                                        current: placement.ac.data!.current,
                                        watt: placement.ac.data!.watt,
                                        returnTemp:
                                            placement.ac.data!.returnTemp,
                                        supplyTemp:
                                            placement.ac.data!.supplyTemp,
                                        condition: placement.ac.data!.condition,
                                        status: placement.ac.data!.status,
                                        onState: placement.ac.data!.onState,
                                        isOnline: placement.ac.data!.isOnline,
                                        setPoint: placement.ac.data!.setPoint,
                                      ),
                              ),
                            ),
                          )
                          .toList(growable: false),
                    ),
                  )
                  .toList(growable: false),
            ),
          )
          .toList(growable: false);
    } on ApiException {
      rethrow;
    } catch (_) {
      throw ApiException('An unexpected error occurred in the repository.');
    }
  }

  @override
  Future<String> postPowerStateByAc({
    required int acId,
    required bool powerState,
  }) async {
    try {
      final requestModel = PostPowerStateRequest(powerState: powerState);

      final response = await _remoteDataSource.postPowerStateByAc(
        acId: acId,
        requestBody: requestModel,
      );

      return response.message;
    } on ApiException {
      rethrow;
    } catch (_) {
      throw ApiException('An unexpected error occurred in the repository.');
    }
  }
}
