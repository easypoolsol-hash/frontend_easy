//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bus_basic_request.g.dart';

/// Basic bus serializer for nested use in student views
///
/// Properties:
/// * [licensePlate] - Vehicle license plate number
/// * [busNumber] - School-assigned bus number (e.g., 'BUS-001', 'B-12')
/// * [capacity] - Maximum number of passengers
/// * [status] - Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
@BuiltValue()
abstract class BusBasicRequest implements Built<BusBasicRequest, BusBasicRequestBuilder> {
  /// Vehicle license plate number
  @BuiltValueField(wireName: r'license_plate')
  String get licensePlate;

  /// School-assigned bus number (e.g., 'BUS-001', 'B-12')
  @BuiltValueField(wireName: r'bus_number')
  String get busNumber;

  /// Maximum number of passengers
  @BuiltValueField(wireName: r'capacity')
  int? get capacity;

  /// Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
  @BuiltValueField(wireName: r'status')
  BusBasicRequestStatusEnum? get status;
  // enum statusEnum {  active,  maintenance,  retired,  };

  BusBasicRequest._();

  factory BusBasicRequest([void updates(BusBasicRequestBuilder b)]) = _$BusBasicRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BusBasicRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BusBasicRequest> get serializer => _$BusBasicRequestSerializer();
}

class _$BusBasicRequestSerializer implements PrimitiveSerializer<BusBasicRequest> {
  @override
  final Iterable<Type> types = const [BusBasicRequest, _$BusBasicRequest];

  @override
  final String wireName = r'BusBasicRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BusBasicRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'license_plate';
    yield serializers.serialize(
      object.licensePlate,
      specifiedType: const FullType(String),
    );
    yield r'bus_number';
    yield serializers.serialize(
      object.busNumber,
      specifiedType: const FullType(String),
    );
    if (object.capacity != null) {
      yield r'capacity';
      yield serializers.serialize(
        object.capacity,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(BusBasicRequestStatusEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BusBasicRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BusBasicRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'license_plate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.licensePlate = valueDes;
          break;
        case r'bus_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.busNumber = valueDes;
          break;
        case r'capacity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.capacity = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BusBasicRequestStatusEnum),
          ) as BusBasicRequestStatusEnum;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BusBasicRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BusBasicRequestBuilder();
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

class BusBasicRequestStatusEnum extends EnumClass {

  /// Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
  @BuiltValueEnumConst(wireName: r'active')
  static const BusBasicRequestStatusEnum active = _$busBasicRequestStatusEnum_active;
  /// Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
  @BuiltValueEnumConst(wireName: r'maintenance')
  static const BusBasicRequestStatusEnum maintenance = _$busBasicRequestStatusEnum_maintenance;
  /// Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
  @BuiltValueEnumConst(wireName: r'retired')
  static const BusBasicRequestStatusEnum retired = _$busBasicRequestStatusEnum_retired;

  static Serializer<BusBasicRequestStatusEnum> get serializer => _$busBasicRequestStatusEnumSerializer;

  const BusBasicRequestStatusEnum._(String name): super(name);

  static BuiltSet<BusBasicRequestStatusEnum> get values => _$busBasicRequestStatusEnumValues;
  static BusBasicRequestStatusEnum valueOf(String name) => _$busBasicRequestStatusEnumValueOf(name);
}

