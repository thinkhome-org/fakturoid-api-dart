import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats.freezed.dart';
part 'stats.g.dart';

@freezed
abstract class StatsPeriod with _$StatsPeriod {
  const factory StatsPeriod({String? paid, String? unpaid, String? overdue}) =
      _StatsPeriod;

  factory StatsPeriod.fromJson(Map<String, dynamic> json) =>
      _$StatsPeriodFromJson(json);
}

@freezed
abstract class StatsTotals with _$StatsTotals {
  const factory StatsTotals({
    @JsonKey(name: 'all_time') StatsPeriod? allTime,
    StatsPeriod? year,
    StatsPeriod? month,
  }) = _StatsTotals;

  factory StatsTotals.fromJson(Map<String, dynamic> json) =>
      _$StatsTotalsFromJson(json);
}

@freezed
abstract class StatsGraphPoint with _$StatsGraphPoint {
  const factory StatsGraphPoint({String? date, String? amount}) =
      _StatsGraphPoint;

  factory StatsGraphPoint.fromJson(Map<String, dynamic> json) =>
      _$StatsGraphPointFromJson(json);
}

@freezed
abstract class StatsGraphs with _$StatsGraphs {
  const factory StatsGraphs({List<StatsGraphPoint>? revenue}) = _StatsGraphs;

  factory StatsGraphs.fromJson(Map<String, dynamic> json) =>
      _$StatsGraphsFromJson(json);
}

@freezed
abstract class Stats with _$Stats {
  const factory Stats({StatsTotals? totals, StatsGraphs? graphs}) = _Stats;

  factory Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);
}
