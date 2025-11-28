//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bus_basic.g.dart';

/// Basic bus serializer for nested use in student views
///
/// Properties:
/// * [busId] - UUID primary key
/// * [licensePlate] - Vehicle license plate number
/// * [busNumber] - School-assigned bus number (e.g., 'BUS-001', 'B-12')
/// * [capacity] - Maximum number of passengers
/// * [status] - Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
/// * [createdAt] - When this bus was added to the system
/// * [updatedAt] - When this bus record was last updated
@BuiltValue()
abstract class BusBasic implements Built<BusBasic, BusBasicBuilder> {
  /// UUID primary key
  @BuiltValueField(wireName: r'bus_id')
  String get busId;

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
  BusBasicStatusEnum? get status;
  // enum statusEnum {  active,  maintenance,  retired,  };

  /// When this bus was added to the system
  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  /// When this bus record was last updated
  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  BusBasic._();

  factory BusBasic([void updates(BusBasicBuilder b)]) = _$BusBasic;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BusBasicBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BusBasic> get serializer => _$BusBasicSerializer();
}

class _$BusBasicSerializer implements PrimitiveSerializer<BusBasic> {
  @override
  final Iterable<Type> types = const [BusBasic, _$BusBasic];

  @override
  final String wireName = r'BusBasic';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BusBasic object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'bus_id';
    yield serializers.serialize(
      object.busId,
      specifiedType: const FullType(String),
    );
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
        specifiedType: const FullType(BusBasicStatusEnum),
      );
    }
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updated_at';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BusBasic object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BusBasicBuilder result,
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
            specifiedType: const FullType(BusBasicStatusEnum),
          ) as BusBasicStatusEnum;
          result.status = valueDes;
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
  BusBasic deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BusBasicBuilder();
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

class BusBasicStatusEnum extends EnumClass {

  /// Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
  @BuiltValueEnumConst(wireName: r'active')
  static const BusBasicStatusEnum active = _$busBasicStatusEnum_active;
  /// Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
  @BuiltValueEnumConst(wireName: r'maintenance')
  static const BusBasicStatusEnum maintenance = _$busBasicStatusEnum_maintenance;
  /// Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
  @BuiltValueEnumConst(wireName: r'retired')
  static const BusBasicStatusEnum retired = _$busBasicStatusEnum_retired;

  static Serializer<BusBasicStatusEnum> get serializer => _$busBasicStatusEnumSerializer;

  const BusBasicStatusEnum._(String name): super(name);

  static BuiltSet<BusBasicStatusEnum> get values => _$busBasicStatusEnumValues;
  static BusBasicStatusEnum valueOf(String name) => _$busBasicStatusEnumValueOf(name);
}

