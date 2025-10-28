// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedRoute _$PatchedRouteFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PatchedRoute',
      json,
      ($checkedConvert) {
        final val = PatchedRoute(
          routeId: $checkedConvert('route_id', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          isActive: $checkedConvert('is_active', (v) => v as bool?),
          stopCount: $checkedConvert('stop_count', (v) => (v as num?)?.toInt()),
          totalStudents: $checkedConvert(
            'total_students',
            (v) => (v as num?)?.toInt(),
          ),
          routeStops: $checkedConvert(
            'route_stops',
            (v) => (v as List<dynamic>?)
                ?.map((e) => RouteStop.fromJson(e as Map<String, dynamic>))
                .toList(),
          ),
          createdAt: $checkedConvert(
            'created_at',
            (v) => v == null ? null : DateTime.parse(v as String),
          ),
          updatedAt: $checkedConvert(
            'updated_at',
            (v) => v == null ? null : DateTime.parse(v as String),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'routeId': 'route_id',
        'isActive': 'is_active',
        'stopCount': 'stop_count',
        'totalStudents': 'total_students',
        'routeStops': 'route_stops',
        'createdAt': 'created_at',
        'updatedAt': 'updated_at',
      },
    );

Map<String, dynamic> _$PatchedRouteToJson(
  PatchedRoute instance,
) => <String, dynamic>{
  if (instance.routeId case final value?) 'route_id': value,
  if (instance.name case final value?) 'name': value,
  if (instance.description case final value?) 'description': value,
  if (instance.isActive case final value?) 'is_active': value,
  if (instance.stopCount case final value?) 'stop_count': value,
  if (instance.totalStudents case final value?) 'total_students': value,
  if (instance.routeStops?.map((e) => e.toJson()).toList() case final value?)
    'route_stops': value,
  if (instance.createdAt?.toIso8601String() case final value?)
    'created_at': value,
  if (instance.updatedAt?.toIso8601String() case final value?)
    'updated_at': value,
};
