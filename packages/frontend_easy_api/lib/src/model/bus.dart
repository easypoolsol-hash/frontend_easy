//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'bus.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Bus {
  /// Returns a new [Bus] instance.
  Bus({

    required  this.busId,

    required  this.licensePlate,

     this.route,

    required  this.routeName,

    required  this.capacity,

     this.deviceId,

     this.status,

     this.manufacturer,

     this.model,

     this.year,

     this.lastMaintenance,

    required  this.assignedStudentsCount,

    required  this.utilizationPercentage,

    required  this.isAvailable,

    required  this.createdAt,

    required  this.updatedAt,
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



      /// Route this bus is assigned to
  @JsonKey(
    
    name: r'route',
    required: false,
    includeIfNull: false,
  )


  final String? route;



  @JsonKey(
    
    name: r'route_name',
    required: true,
    includeIfNull: false,
  )


  final String routeName;



      /// Maximum number of passengers
          // minimum: 1
          // maximum: 9223372036854775807
  @JsonKey(
    
    name: r'capacity',
    required: true,
    includeIfNull: false,
  )


  final int capacity;



      /// Kiosk device identifier installed on this bus
  @JsonKey(
    
    name: r'device_id',
    required: false,
    includeIfNull: false,
  )


  final String? deviceId;



      /// Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false,
  )


  final BusStatusEnum? status;



      /// Bus manufacturer
  @JsonKey(
    
    name: r'manufacturer',
    required: false,
    includeIfNull: false,
  )


  final String? manufacturer;



      /// Bus model
  @JsonKey(
    
    name: r'model',
    required: false,
    includeIfNull: false,
  )


  final String? model;



      /// Manufacturing year
          // minimum: 0
          // maximum: 9223372036854775807
  @JsonKey(
    
    name: r'year',
    required: false,
    includeIfNull: false,
  )


  final int? year;



      /// Date of last maintenance
  @JsonKey(
    
    name: r'last_maintenance',
    required: false,
    includeIfNull: false,
  )


  final DateTime? lastMaintenance;



  @JsonKey(
    
    name: r'assigned_students_count',
    required: true,
    includeIfNull: false,
  )


  final int assignedStudentsCount;



  @JsonKey(
    
    name: r'utilization_percentage',
    required: true,
    includeIfNull: false,
  )


  final double utilizationPercentage;



  @JsonKey(
    
    name: r'is_available',
    required: true,
    includeIfNull: false,
  )


  final bool isAvailable;



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
    bool operator ==(Object other) => identical(this, other) || other is Bus &&
      other.busId == busId &&
      other.licensePlate == licensePlate &&
      other.route == route &&
      other.routeName == routeName &&
      other.capacity == capacity &&
      other.deviceId == deviceId &&
      other.status == status &&
      other.manufacturer == manufacturer &&
      other.model == model &&
      other.year == year &&
      other.lastMaintenance == lastMaintenance &&
      other.assignedStudentsCount == assignedStudentsCount &&
      other.utilizationPercentage == utilizationPercentage &&
      other.isAvailable == isAvailable &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt;

    @override
    int get hashCode =>
        busId.hashCode +
        licensePlate.hashCode +
        (route == null ? 0 : route.hashCode) +
        routeName.hashCode +
        capacity.hashCode +
        (deviceId == null ? 0 : deviceId.hashCode) +
        status.hashCode +
        manufacturer.hashCode +
        model.hashCode +
        (year == null ? 0 : year.hashCode) +
        (lastMaintenance == null ? 0 : lastMaintenance.hashCode) +
        assignedStudentsCount.hashCode +
        utilizationPercentage.hashCode +
        isAvailable.hashCode +
        createdAt.hashCode +
        updatedAt.hashCode;

  factory Bus.fromJson(Map<String, dynamic> json) => _$BusFromJson(json);

  Map<String, dynamic> toJson() => _$BusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
enum BusStatusEnum {
    /// Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
@JsonValue(r'active')
active(r'active'),
    /// Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
@JsonValue(r'maintenance')
maintenance(r'maintenance'),
    /// Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
@JsonValue(r'retired')
retired(r'retired');

const BusStatusEnum(this.value);

final String value;

@override
String toString() => value;
}


