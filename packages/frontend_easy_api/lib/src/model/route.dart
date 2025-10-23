//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:frontend_easy_api/src/model/route_stop.dart';
import 'package:json_annotation/json_annotation.dart';

part 'route.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Route {
  /// Returns a new [Route] instance.
  Route({

    required  this.routeId,

    required  this.name,

     this.description,

     this.colorCode,

     this.linePattern,

     this.isActive,

    required  this.stopCount,

    required  this.totalStudents,

    required  this.routeStops,

    required  this.createdAt,

    required  this.updatedAt,
  });

      /// UUID primary key
  @JsonKey(
    
    name: r'route_id',
    required: true,
    includeIfNull: false,
  )


  final String routeId;



      /// Route name (e.g., 'Route A', 'North Loop')
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



      /// Detailed description of the route
  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false,
  )


  final String? description;



      /// Hex color for map display (e.g., #FF5733)
  @JsonKey(
    
    name: r'color_code',
    required: false,
    includeIfNull: false,
  )


  final String? colorCode;



      /// Line pattern for map visualization  * `solid` - Solid Line * `dashed` - Dashed Line
  @JsonKey(
    
    name: r'line_pattern',
    required: false,
    includeIfNull: false,
  )


  final RouteLinePatternEnum? linePattern;



      /// Whether this route is currently active
  @JsonKey(
    
    name: r'is_active',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;



  @JsonKey(
    
    name: r'stop_count',
    required: true,
    includeIfNull: false,
  )


  final String stopCount;



  @JsonKey(
    
    name: r'total_students',
    required: true,
    includeIfNull: false,
  )


  final String totalStudents;



  @JsonKey(
    
    name: r'route_stops',
    required: true,
    includeIfNull: false,
  )


  final List<RouteStop> routeStops;



      /// When this route was created
  @JsonKey(
    
    name: r'created_at',
    required: true,
    includeIfNull: false,
  )


  final DateTime createdAt;



      /// When this route was last updated
  @JsonKey(
    
    name: r'updated_at',
    required: true,
    includeIfNull: false,
  )


  final DateTime updatedAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is Route &&
      other.routeId == routeId &&
      other.name == name &&
      other.description == description &&
      other.colorCode == colorCode &&
      other.linePattern == linePattern &&
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
        colorCode.hashCode +
        linePattern.hashCode +
        isActive.hashCode +
        stopCount.hashCode +
        totalStudents.hashCode +
        routeStops.hashCode +
        createdAt.hashCode +
        updatedAt.hashCode;

  factory Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);

  Map<String, dynamic> toJson() => _$RouteToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// Line pattern for map visualization  * `solid` - Solid Line * `dashed` - Dashed Line
enum RouteLinePatternEnum {
    /// Line pattern for map visualization  * `solid` - Solid Line * `dashed` - Dashed Line
@JsonValue(r'solid')
solid(r'solid'),
    /// Line pattern for map visualization  * `solid` - Solid Line * `dashed` - Dashed Line
@JsonValue(r'dashed')
dashed(r'dashed');

const RouteLinePatternEnum(this.value);

final String value;

@override
String toString() => value;
}


