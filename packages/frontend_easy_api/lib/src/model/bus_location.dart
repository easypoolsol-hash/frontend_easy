//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'bus_location.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BusLocation {
  /// Returns a new [BusLocation] instance.
  BusLocation({
    required this.locationId,
    required this.latitude,
    required this.longitude,
    this.accuracy,
    this.speed,
    this.heading,
    required this.timestamp,
  });

  /// Auto-incrementing location entry ID
  @JsonKey(
    name: r'location_id',
    required: true,
    includeIfNull: false,
  )
  final int locationId;

  /// GPS latitude coordinate
  @JsonKey(
    name: r'latitude',
    required: true,
    includeIfNull: false,
  )
  final double latitude;

  /// GPS longitude coordinate
  @JsonKey(
    name: r'longitude',
    required: true,
    includeIfNull: false,
  )
  final double longitude;

  /// GPS accuracy in meters
  @JsonKey(
    name: r'accuracy',
    required: false,
    includeIfNull: false,
  )
  final double? accuracy;

  /// Speed in km/h
  @JsonKey(
    name: r'speed',
    required: false,
    includeIfNull: false,
  )
  final double? speed;

  /// Heading/bearing in degrees (0-360)
  @JsonKey(
    name: r'heading',
    required: false,
    includeIfNull: false,
  )
  final double? heading;

  /// When this location was recorded by the kiosk
  @JsonKey(
    name: r'timestamp',
    required: true,
    includeIfNull: false,
  )
  final DateTime timestamp;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BusLocation &&
          other.locationId == locationId &&
          other.latitude == latitude &&
          other.longitude == longitude &&
          other.accuracy == accuracy &&
          other.speed == speed &&
          other.heading == heading &&
          other.timestamp == timestamp;

  @override
  int get hashCode =>
      locationId.hashCode +
      latitude.hashCode +
      longitude.hashCode +
      (accuracy == null ? 0 : accuracy.hashCode) +
      (speed == null ? 0 : speed.hashCode) +
      (heading == null ? 0 : heading.hashCode) +
      timestamp.hashCode;

  factory BusLocation.fromJson(Map<String, dynamic> json) =>
      _$BusLocationFromJson(json);

  Map<String, dynamic> toJson() => _$BusLocationToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
