// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_emission_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetEmissionResponse _$GetEmissionResponseFromJson(Map<String, dynamic> json) =>
    _GetEmissionResponse(
      graphicData: (json['graphic_data'] as List<dynamic>)
          .map(
            (e) => EmissionGraphicDataModel.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      summary: EmissionSummaryModel.fromJson(
        json['summary'] as Map<String, dynamic>,
      ),
      dailySummary: EmissionDailySummaryModel.fromJson(
        json['daily_summary'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$GetEmissionResponseToJson(
  _GetEmissionResponse instance,
) => <String, dynamic>{
  'graphic_data': instance.graphicData,
  'summary': instance.summary,
  'daily_summary': instance.dailySummary,
};

_EmissionGraphicDataModel _$EmissionGraphicDataModelFromJson(
  Map<String, dynamic> json,
) => _EmissionGraphicDataModel(
  month: json['month'] as String,
  kwh: (json['kwh'] as num).toDouble(),
  cost: (json['cost'] as num).toDouble(),
  emission: (json['emission'] as num).toDouble(),
);

Map<String, dynamic> _$EmissionGraphicDataModelToJson(
  _EmissionGraphicDataModel instance,
) => <String, dynamic>{
  'month': instance.month,
  'kwh': instance.kwh,
  'cost': instance.cost,
  'emission': instance.emission,
};

_EmissionSummaryModel _$EmissionSummaryModelFromJson(
  Map<String, dynamic> json,
) => _EmissionSummaryModel(
  average: EmissionAverageSummaryModel.fromJson(
    json['average'] as Map<String, dynamic>,
  ),
  lastMonth: EmissionMonthlySummaryModel.fromJson(
    json['last_month'] as Map<String, dynamic>,
  ),
  currentMonth: EmissionMonthlySummaryModel.fromJson(
    json['current_month'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$EmissionSummaryModelToJson(
  _EmissionSummaryModel instance,
) => <String, dynamic>{
  'average': instance.average,
  'last_month': instance.lastMonth,
  'current_month': instance.currentMonth,
};

_EmissionAverageSummaryModel _$EmissionAverageSummaryModelFromJson(
  Map<String, dynamic> json,
) => _EmissionAverageSummaryModel(
  kwh: (json['kwh'] as num).toDouble(),
  cost: (json['cost'] as num).toDouble(),
  emission: (json['emission'] as num).toDouble(),
);

Map<String, dynamic> _$EmissionAverageSummaryModelToJson(
  _EmissionAverageSummaryModel instance,
) => <String, dynamic>{
  'kwh': instance.kwh,
  'cost': instance.cost,
  'emission': instance.emission,
};

_EmissionMonthlySummaryModel _$EmissionMonthlySummaryModelFromJson(
  Map<String, dynamic> json,
) => _EmissionMonthlySummaryModel(
  month: json['month'] as String,
  kwh: (json['kwh'] as num).toDouble(),
  cost: (json['cost'] as num).toDouble(),
  emission: (json['emission'] as num).toDouble(),
);

Map<String, dynamic> _$EmissionMonthlySummaryModelToJson(
  _EmissionMonthlySummaryModel instance,
) => <String, dynamic>{
  'month': instance.month,
  'kwh': instance.kwh,
  'cost': instance.cost,
  'emission': instance.emission,
};

_EmissionDailySummaryModel _$EmissionDailySummaryModelFromJson(
  Map<String, dynamic> json,
) => _EmissionDailySummaryModel(
  kwh: (json['kwh'] as num).toDouble(),
  cost: (json['cost'] as num).toDouble(),
  emission: (json['emission'] as num).toDouble(),
  activeDevices: (json['active_devices'] as num).toInt(),
);

Map<String, dynamic> _$EmissionDailySummaryModelToJson(
  _EmissionDailySummaryModel instance,
) => <String, dynamic>{
  'kwh': instance.kwh,
  'cost': instance.cost,
  'emission': instance.emission,
  'active_devices': instance.activeDevices,
};
