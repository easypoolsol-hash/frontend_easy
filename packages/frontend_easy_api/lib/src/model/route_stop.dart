//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'route_stop.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class RouteStop {
  /// Returns a new [RouteStop] instance.
  RouteStop({

    required  this.busStop,

    required  this.busStopName,

    required  this.latitude,

    required  this.longitude,

    required  this.sequence,

     this.waypoints,
  });

      /// Bus stop on this route
  @JsonKey(
    
    name: r'bus_stop',
    required: true,
    includeIfNull: false,
  )


  final String busStop;



  @JsonKey(
    
    name: r'bus_stop_name',
    required: true,
    includeIfNull: false,
  )


  final String busStopName;



  @JsonKey(
    
    name: r'latitude',
    required: true,
    includeIfNull: false,
  )


  final double latitude;



  @JsonKey(
    
    name: r'longitude',
    required: true,
    includeIfNull: false,
  )


  final double longitude;



      /// Order of this stop in the route (1-based)
          // minimum: 0
          // maximum: 9223372036854775807
  @JsonKey(
    
    name: r'sequence',
    required: true,
    includeIfNull: false,
  )


  final int sequence;



      /// Path coordinates to NEXT stop: [{lat, lon}, ...]
  @JsonKey(
    
    name: r'waypoints',
    required: false,
    includeIfNull: false,
  )


  final Object? waypoints;





    @override
    bool operator ==(Object other) => identical(this, other) || other is RouteStop &&
      other.busStop == busStop &&
      other.busStopName == busStopName &&
      other.latitude == latitude &&
      other.longitude == longitude &&
      other.sequence == sequence &&
      other.waypoints == waypoints;

    @override
    int get hashCode =>
        busStop.hashCode +
        busStopName.hashCode +
        latitude.hashCode +
        longitude.hashCode +
        sequence.hashCode +
        (waypoints == null ? 0 : waypoints.hashCode);

  factory RouteStop.fromJson(Map<String, dynamic> json) => _$RouteStopFromJson(json);

  Map<String, dynamic> toJson() => _$RouteStopToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

