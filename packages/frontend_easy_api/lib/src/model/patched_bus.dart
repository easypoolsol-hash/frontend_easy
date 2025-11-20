//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:frontend_easy_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patched_bus.g.dart';

/// Serializer for buses
///
/// Properties:
/// * [busId] - UUID primary key
/// * [busNumber] - School-assigned bus number (e.g., 'BUS-001', 'B-12')
/// * [licensePlate] - Vehicle license plate number
/// * [route] - Route this bus is assigned to
/// * [routeName] 
/// * [capacity] - Maximum number of passengers
/// * [deviceId] - Kiosk device identifier installed on this bus
/// * [status] - Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
/// * [manufacturer] - Bus manufacturer
/// * [model] - Bus model
/// * [year] - Manufacturing year
/// * [lastMaintenance] - Date of last maintenance
/// * [driverName] - Driver's full name
/// * [driverPhone] - Driver's contact number
/// * [driverAddress] - Driver's address
/// * [driverLicenseNumber] - Driver's license number
/// * [conductorName] - Conductor's full name
/// * [conductorPhone] - Conductor's contact number
/// * [conductorAddress] - Conductor's address
/// * [assignedStudentsCount] 
/// * [utilizationPercentage] 
/// * [isAvailable] 
/// * [createdAt] - When this bus was added to the system
/// * [updatedAt] - When this bus record was last updated
@BuiltValue()
abstract class PatchedBus implements Built<PatchedBus, PatchedBusBuilder> {
  /// UUID primary key
  @BuiltValueField(wireName: r'bus_id')
  String? get busId;

  /// School-assigned bus number (e.g., 'BUS-001', 'B-12')
  @BuiltValueField(wireName: r'bus_number')
  String? get busNumber;

  /// Vehicle license plate number
  @BuiltValueField(wireName: r'license_plate')
  String? get licensePlate;

  /// Route this bus is assigned to
  @BuiltValueField(wireName: r'route')
  String? get route;

  @BuiltValueField(wireName: r'route_name')
  String? get routeName;

  /// Maximum number of passengers
  @BuiltValueField(wireName: r'capacity')
  int? get capacity;

  /// Kiosk device identifier installed on this bus
  @BuiltValueField(wireName: r'device_id')
  String? get deviceId;

  /// Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
  @BuiltValueField(wireName: r'status')
  PatchedBusStatusEnum? get status;
  // enum statusEnum {  active,  maintenance,  retired,  };

  /// Bus manufacturer
  @BuiltValueField(wireName: r'manufacturer')
  String? get manufacturer;

  /// Bus model
  @BuiltValueField(wireName: r'model')
  String? get model;

  /// Manufacturing year
  @BuiltValueField(wireName: r'year')
  int? get year;

  /// Date of last maintenance
  @BuiltValueField(wireName: r'last_maintenance')
  Date? get lastMaintenance;

  /// Driver's full name
  @BuiltValueField(wireName: r'driver_name')
  String? get driverName;

  /// Driver's contact number
  @BuiltValueField(wireName: r'driver_phone')
  String? get driverPhone;

  /// Driver's address
  @BuiltValueField(wireName: r'driver_address')
  String? get driverAddress;

  /// Driver's license number
  @BuiltValueField(wireName: r'driver_license_number')
  String? get driverLicenseNumber;

  /// Conductor's full name
  @BuiltValueField(wireName: r'conductor_name')
  String? get conductorName;

  /// Conductor's contact number
  @BuiltValueField(wireName: r'conductor_phone')
  String? get conductorPhone;

  /// Conductor's address
  @BuiltValueField(wireName: r'conductor_address')
  String? get conductorAddress;

  @BuiltValueField(wireName: r'assigned_students_count')
  int? get assignedStudentsCount;

  @BuiltValueField(wireName: r'utilization_percentage')
  double? get utilizationPercentage;

  @BuiltValueField(wireName: r'is_available')
  bool? get isAvailable;

  /// When this bus was added to the system
  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  /// When this bus record was last updated
  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  PatchedBus._();

  factory PatchedBus([void updates(PatchedBusBuilder b)]) = _$PatchedBus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatchedBusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatchedBus> get serializer => _$PatchedBusSerializer();
}

class _$PatchedBusSerializer implements PrimitiveSerializer<PatchedBus> {
  @override
  final Iterable<Type> types = const [PatchedBus, _$PatchedBus];

  @override
  final String wireName = r'PatchedBus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatchedBus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.busId != null) {
      yield r'bus_id';
      yield serializers.serialize(
        object.busId,
        specifiedType: const FullType(String),
      );
    }
    if (object.busNumber != null) {
      yield r'bus_number';
      yield serializers.serialize(
        object.busNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.licensePlate != null) {
      yield r'license_plate';
      yield serializers.serialize(
        object.licensePlate,
        specifiedType: const FullType(String),
      );
    }
    if (object.route != null) {
      yield r'route';
      yield serializers.serialize(
        object.route,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.routeName != null) {
      yield r'route_name';
      yield serializers.serialize(
        object.routeName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.capacity != null) {
      yield r'capacity';
      yield serializers.serialize(
        object.capacity,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.deviceId != null) {
      yield r'device_id';
      yield serializers.serialize(
        object.deviceId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(PatchedBusStatusEnum),
      );
    }
    if (object.manufacturer != null) {
      yield r'manufacturer';
      yield serializers.serialize(
        object.manufacturer,
        specifiedType: const FullType(String),
      );
    }
    if (object.model != null) {
      yield r'model';
      yield serializers.serialize(
        object.model,
        specifiedType: const FullType(String),
      );
    }
    if (object.year != null) {
      yield r'year';
      yield serializers.serialize(
        object.year,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.lastMaintenance != null) {
      yield r'last_maintenance';
      yield serializers.serialize(
        object.lastMaintenance,
        specifiedType: const FullType.nullable(Date),
      );
    }
    if (object.driverName != null) {
      yield r'driver_name';
      yield serializers.serialize(
        object.driverName,
        specifiedType: const FullType(String),
      );
    }
    if (object.driverPhone != null) {
      yield r'driver_phone';
      yield serializers.serialize(
        object.driverPhone,
        specifiedType: const FullType(String),
      );
    }
    if (object.driverAddress != null) {
      yield r'driver_address';
      yield serializers.serialize(
        object.driverAddress,
        specifiedType: const FullType(String),
      );
    }
    if (object.driverLicenseNumber != null) {
      yield r'driver_license_number';
      yield serializers.serialize(
        object.driverLicenseNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.conductorName != null) {
      yield r'conductor_name';
      yield serializers.serialize(
        object.conductorName,
        specifiedType: const FullType(String),
      );
    }
    if (object.conductorPhone != null) {
      yield r'conductor_phone';
      yield serializers.serialize(
        object.conductorPhone,
        specifiedType: const FullType(String),
      );
    }
    if (object.conductorAddress != null) {
      yield r'conductor_address';
      yield serializers.serialize(
        object.conductorAddress,
        specifiedType: const FullType(String),
      );
    }
    if (object.assignedStudentsCount != null) {
      yield r'assigned_students_count';
      yield serializers.serialize(
        object.assignedStudentsCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.utilizationPercentage != null) {
      yield r'utilization_percentage';
      yield serializers.serialize(
        object.utilizationPercentage,
        specifiedType: const FullType(double),
      );
    }
    if (object.isAvailable != null) {
      yield r'is_available';
      yield serializers.serialize(
        object.isAvailable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updated_at';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PatchedBus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PatchedBusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'bus_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.busId = valueDes;
          break;
        case r'bus_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.busNumber = valueDes;
          break;
        case r'license_plate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.licensePlate = valueDes;
          break;
        case r'route':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.route = valueDes;
          break;
        case r'route_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.routeName = valueDes;
          break;
        case r'capacity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.capacity = valueDes;
          break;
        case r'device_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.deviceId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PatchedBusStatusEnum),
          ) as PatchedBusStatusEnum;
          result.status = valueDes;
          break;
        case r'manufacturer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.manufacturer = valueDes;
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.model = valueDes;
          break;
        case r'year':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.year = valueDes;
          break;
        case r'last_maintenance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.lastMaintenance = valueDes;
          break;
        case r'driver_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.driverName = valueDes;
          break;
        case r'driver_phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.driverPhone = valueDes;
          break;
        case r'driver_address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.driverAddress = valueDes;
          break;
        case r'driver_license_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.driverLicenseNumber = valueDes;
          break;
        case r'conductor_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.conductorName = valueDes;
          break;
        case r'conductor_phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.conductorPhone = valueDes;
          break;
        case r'conductor_address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.conductorAddress = valueDes;
          break;
        case r'assigned_students_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.assignedStudentsCount = valueDes;
          break;
        case r'utilization_percentage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.utilizationPercentage = valueDes;
          break;
        case r'is_available':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isAvailable = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PatchedBus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatchedBusBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class PatchedBusStatusEnum extends EnumClass {

  /// Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
  @BuiltValueEnumConst(wireName: r'active')
  static const PatchedBusStatusEnum active = _$patchedBusStatusEnum_active;
  /// Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
  @BuiltValueEnumConst(wireName: r'maintenance')
  static const PatchedBusStatusEnum maintenance = _$patchedBusStatusEnum_maintenance;
  /// Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
  @BuiltValueEnumConst(wireName: r'retired')
  static const PatchedBusStatusEnum retired = _$patchedBusStatusEnum_retired;

  static Serializer<PatchedBusStatusEnum> get serializer => _$patchedBusStatusEnumSerializer;

  const PatchedBusStatusEnum._(String name): super(name);

  static BuiltSet<PatchedBusStatusEnum> get values => _$patchedBusStatusEnumValues;
  static PatchedBusStatusEnum valueOf(String name) => _$patchedBusStatusEnumValueOf(name);
}

