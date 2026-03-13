// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StatsPeriod _$StatsPeriodFromJson(Map<String, dynamic> json) => _StatsPeriod(
  paid: json['paid'] as String?,
  unpaid: json['unpaid'] as String?,
  overdue: json['overdue'] as String?,
);

Map<String, dynamic> _$StatsPeriodToJson(_StatsPeriod instance) =>
    <String, dynamic>{
      'paid': instance.paid,
      'unpaid': instance.unpaid,
      'overdue': instance.overdue,
    };

_StatsTotals _$StatsTotalsFromJson(Map<String, dynamic> json) => _StatsTotals(
  allTime: json['all_time'] == null
      ? null
      : StatsPeriod.fromJson(json['all_time'] as Map<String, dynamic>),
  year: json['year'] == null
      ? null
      : StatsPeriod.fromJson(json['year'] as Map<String, dynamic>),
  month: json['month'] == null
      ? null
      : StatsPeriod.fromJson(json['month'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StatsTotalsToJson(_StatsTotals instance) =>
    <String, dynamic>{
      'all_time': instance.allTime,
      'year': instance.year,
      'month': instance.month,
    };

_StatsGraphPoint _$StatsGraphPointFromJson(Map<String, dynamic> json) =>
    _StatsGraphPoint(
      date: json['date'] as String?,
      amount: json['amount'] as String?,
    );

Map<String, dynamic> _$StatsGraphPointToJson(_StatsGraphPoint instance) =>
    <String, dynamic>{'date': instance.date, 'amount': instance.amount};

_StatsGraphs _$StatsGraphsFromJson(Map<String, dynamic> json) => _StatsGraphs(
  revenue: (json['revenue'] as List<dynamic>?)
      ?.map((e) => StatsGraphPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$StatsGraphsToJson(_StatsGraphs instance) =>
    <String, dynamic>{'revenue': instance.revenue};

_Stats _$StatsFromJson(Map<String, dynamic> json) => _Stats(
  totals: json['totals'] == null
      ? null
      : StatsTotals.fromJson(json['totals'] as Map<String, dynamic>),
  graphs: json['graphs'] == null
      ? null
      : StatsGraphs.fromJson(json['graphs'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StatsToJson(_Stats instance) => <String, dynamic>{
  'totals': instance.totals,
  'graphs': instance.graphs,
};
