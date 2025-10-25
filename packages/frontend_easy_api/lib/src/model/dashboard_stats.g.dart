// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DashboardStats _$DashboardStatsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'DashboardStats',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'date',
            'active_buses',
            'total_buses',
            'students_boarded_today',
            'total_events_today',
            'last_updated',
          ],
        );
        final val = DashboardStats(
          date: $checkedConvert('date', (v) => DateTime.parse(v as String)),
          activeBuses: $checkedConvert(
            'active_buses',
            (v) => (v as num).toInt(),
          ),
          totalBuses: $checkedConvert('total_buses', (v) => (v as num).toInt()),
          studentsBoardedToday: $checkedConvert(
            'students_boarded_today',
            (v) => (v as num).toInt(),
          ),
          totalEventsToday: $checkedConvert(
            'total_events_today',
            (v) => (v as num).toInt(),
          ),
          lastUpdated: $checkedConvert(
            'last_updated',
            (v) => DateTime.parse(v as String),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'activeBuses': 'active_buses',
        'totalBuses': 'total_buses',
        'studentsBoardedToday': 'students_boarded_today',
        'totalEventsToday': 'total_events_today',
        'lastUpdated': 'last_updated',
      },
    );

Map<String, dynamic> _$DashboardStatsToJson(DashboardStats instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'active_buses': instance.activeBuses,
      'total_buses': instance.totalBuses,
      'students_boarded_today': instance.studentsBoardedToday,
      'total_events_today': instance.totalEventsToday,
      'last_updated': instance.lastUpdated.toIso8601String(),
    };
