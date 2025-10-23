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
          stopCount: $checkedConvert('stop_count', (v) => v as String?),
          totalStudents: $checkedConvert('total_students', (v) => v as String?),
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

Map<String, dynamic> _$PatchedRouteToJson(PatchedRoute instance) =>
    <String, dynamic>{
      'route_id': ?instance.routeId,
      'name': ?instance.name,
      'description': ?instance.description,
      'is_active': ?instance.isActive,
      'stop_count': ?instance.stopCount,
      'total_students': ?instance.totalStudents,
      'route_stops': ?instance.routeStops?.map((e) => e.toJson()).toList(),
      'created_at': ?instance.createdAt?.toIso8601String(),
      'updated_at': ?instance.updatedAt?.toIso8601String(),
    };
