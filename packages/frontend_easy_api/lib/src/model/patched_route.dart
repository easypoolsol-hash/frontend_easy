//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'patched_route.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedRoute {
  /// Returns a new [PatchedRoute] instance.
  PatchedRoute({

     this.routeId,

     this.name,

     this.description,

     this.stops,

     this.schedule,

     this.isActive,

     this.stopCount,

     this.totalStudents,

     this.createdAt,

     this.updatedAt,
  });

      /// UUID primary key
  @JsonKey(
    
    name: r'route_id',
    required: false,
    includeIfNull: false,
  )


  final String? routeId;



      /// Route name (e.g., 'Route A', 'North Loop')
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Detailed description of the route
  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false,
  )


  final String? description;



      /// Array of stop objects: [{name, lat, lon, sequence, estimated_time}]
  @JsonKey(
    
    name: r'stops',
    required: false,
    includeIfNull: false,
  )


  final Object? stops;



      /// Schedule data: {morning: {start, end}, afternoon: {start, end}}
  @JsonKey(
    
    name: r'schedule',
    required: false,
    includeIfNull: false,
  )


  final Object? schedule;



      /// Whether this route is currently active
  @JsonKey(
    
    name: r'is_active',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;



  @JsonKey(
    
    name: r'stop_count',
    required: false,
    includeIfNull: false,
  )


  final String? stopCount;



  @JsonKey(
    
    name: r'total_students',
    required: false,
    includeIfNull: false,
  )


  final String? totalStudents;



      /// When this route was created
  @JsonKey(
    
    name: r'created_at',
    required: false,
    includeIfNull: false,
  )


  final DateTime? createdAt;



      /// When this route was last updated
  @JsonKey(
    
    name: r'updated_at',
    required: false,
    includeIfNull: false,
  )


  final DateTime? updatedAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PatchedRoute &&
      other.routeId == routeId &&
      other.name == name &&
      other.description == description &&
      other.stops == stops &&
      other.schedule == schedule &&
      other.isActive == isActive &&
      other.stopCount == stopCount &&
      other.totalStudents == totalStudents &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt;

    @override
    int get hashCode =>
        routeId.hashCode +
        name.hashCode +
        description.hashCode +
        (stops == null ? 0 : stops.hashCode) +
        (schedule == null ? 0 : schedule.hashCode) +
        isActive.hashCode +
        stopCount.hashCode +
        totalStudents.hashCode +
        createdAt.hashCode +
        updatedAt.hashCode;

  factory PatchedRoute.fromJson(Map<String, dynamic> json) => _$PatchedRouteFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedRouteToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

