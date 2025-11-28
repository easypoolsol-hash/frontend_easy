//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:frontend_easy_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bus_request.g.dart';

/// Serializer for buses
///
/// Properties:
/// * [busNumber] - School-assigned bus number (e.g., 'BUS-001', 'B-12')
/// * [licensePlate] - Vehicle license plate number
/// * [route] - Route this bus is assigned to
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
@BuiltValue()
abstract class BusRequest implements Built<BusRequest, BusRequestBuilder> {
  /// School-assigned bus number (e.g., 'BUS-001', 'B-12')
  @BuiltValueField(wireName: r'bus_number')
  String get busNumber;

  /// Vehicle license plate number
  @BuiltValueField(wireName: r'license_plate')
  String get licensePlate;

  /// Route this bus is assigned to
  @BuiltValueField(wireName: r'route')
  String? get route;

  /// Maximum number of passengers
  @BuiltValueField(wireName: r'capacity')
  int? get capacity;

  /// Kiosk device identifier installed on this bus
  @BuiltValueField(wireName: r'device_id')
  String? get deviceId;

  /// Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
  @BuiltValueField(wireName: r'status')
  BusRequestStatusEnum? get status;
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

  BusRequest._();

  factory BusRequest([void updates(BusRequestBuilder b)]) = _$BusRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BusRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BusRequest> get serializer => _$BusRequestSerializer();
}

class _$BusRequestSerializer implements PrimitiveSerializer<BusRequest> {
  @override
  final Iterable<Type> types = const [BusRequest, _$BusRequest];

  @override
  final String wireName = r'BusRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'bus_number';
    yield serializers.serialize(
      object.busNumber,
      specifiedType: const FullType(String),
    );
    yield r'license_plate';
    yield serializers.serialize(
      object.licensePlate,
      specifiedType: const FullType(String),
    );
    if (object.route != null) {
      yield r'route';
      yield serializers.serialize(
        object.route,
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
        specifiedType: const FullType(BusRequestStatusEnum),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    BusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BusRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
            specifiedType: const FullType(BusRequestStatusEnum),
          ) as BusRequestStatusEnum;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BusRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BusRequestBuilder();
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

class BusRequestStatusEnum extends EnumClass {

  /// Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
  @BuiltValueEnumConst(wireName: r'active')
  static const BusRequestStatusEnum active = _$busRequestStatusEnum_active;
  /// Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
  @BuiltValueEnumConst(wireName: r'maintenance')
  static const BusRequestStatusEnum maintenance = _$busRequestStatusEnum_maintenance;
  /// Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
  @BuiltValueEnumConst(wireName: r'retired')
  static const BusRequestStatusEnum retired = _$busRequestStatusEnum_retired;

  static Serializer<BusRequestStatusEnum> get serializer => _$busRequestStatusEnumSerializer;

  const BusRequestStatusEnum._(String name): super(name);

  static BuiltSet<BusRequestStatusEnum> get values => _$busRequestStatusEnumValues;
  static BusRequestStatusEnum valueOf(String name) => _$busRequestStatusEnumValueOf(name);
}

