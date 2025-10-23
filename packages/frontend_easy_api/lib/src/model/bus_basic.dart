//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'bus_basic.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BusBasic {
  /// Returns a new [BusBasic] instance.
  BusBasic({
    required this.busId,
    required this.licensePlate,
    required this.capacity,
    this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  /// UUID primary key
  @JsonKey(
    name: r'bus_id',
    required: true,
    includeIfNull: false,
  )
  final String busId;

  /// Vehicle license plate number
  @JsonKey(
    name: r'license_plate',
    required: true,
    includeIfNull: false,
  )
  final String licensePlate;

  /// Maximum number of passengers
  // minimum: 1
  // maximum: 9223372036854775807
  @JsonKey(
    name: r'capacity',
    required: true,
    includeIfNull: false,
  )
  final int capacity;

  /// Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
  @JsonKey(
    name: r'status',
    required: false,
    includeIfNull: false,
  )
  final BusBasicStatusEnum? status;

  /// When this bus was added to the system
  @JsonKey(
    name: r'created_at',
    required: true,
    includeIfNull: false,
  )
  final DateTime createdAt;

  /// When this bus record was last updated
  @JsonKey(
    name: r'updated_at',
    required: true,
    includeIfNull: false,
  )
  final DateTime updatedAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BusBasic &&
          other.busId == busId &&
          other.licensePlate == licensePlate &&
          other.capacity == capacity &&
          other.status == status &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt;

  @override
  int get hashCode =>
      busId.hashCode +
      licensePlate.hashCode +
      capacity.hashCode +
      status.hashCode +
      createdAt.hashCode +
      updatedAt.hashCode;

  factory BusBasic.fromJson(Map<String, dynamic> json) =>
      _$BusBasicFromJson(json);

  Map<String, dynamic> toJson() => _$BusBasicToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

/// Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
enum BusBasicStatusEnum {
  /// Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
  @JsonValue(r'active')
  active(r'active'),

  /// Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
  @JsonValue(r'maintenance')
  maintenance(r'maintenance'),

  /// Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
  @JsonValue(r'retired')
  retired(r'retired');

  const BusBasicStatusEnum(this.value);

  final String value;

  @override
  String toString() => value;
}
