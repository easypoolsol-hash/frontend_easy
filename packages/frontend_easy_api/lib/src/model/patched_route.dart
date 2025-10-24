//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:frontend_easy_api/src/model/route_stop.dart';
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

     this.isActive,

     this.stopCount,

     this.totalStudents,

     this.routeStops,

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


  final int? stopCount;



  @JsonKey(
    
    name: r'total_students',
    required: false,
    includeIfNull: false,
  )


  final int? totalStudents;



  @JsonKey(
    
    name: r'route_stops',
    required: false,
    includeIfNull: false,
  )


  final List<RouteStop>? routeStops;



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
      other.isActive == isActive &&
      other.stopCount == stopCount &&
      other.totalStudents == totalStudents &&
      other.routeStops == routeStops &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt;

    @override
    int get hashCode =>
        routeId.hashCode +
        name.hashCode +
        description.hashCode +
        isActive.hashCode +
        stopCount.hashCode +
        totalStudents.hashCode +
        routeStops.hashCode +
        createdAt.hashCode +
        updatedAt.hashCode;

  factory PatchedRoute.fromJson(Map<String, dynamic> json) => _$PatchedRouteFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedRouteToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

