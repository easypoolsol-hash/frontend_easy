//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_parents_me_bus_locations_retrieve200_response_inner.g.dart';

/// ApiV1ParentsMeBusLocationsRetrieve200ResponseInner
///
/// Properties:
/// * [busId] 
/// * [busNumber] 
/// * [latitude] 
/// * [longitude] 
/// * [speed] 
/// * [heading] 
/// * [lastUpdated] 
@BuiltValue()
abstract class ApiV1ParentsMeBusLocationsRetrieve200ResponseInner implements Built<ApiV1ParentsMeBusLocationsRetrieve200ResponseInner, ApiV1ParentsMeBusLocationsRetrieve200ResponseInnerBuilder> {
  @BuiltValueField(wireName: r'bus_id')
  String? get busId;

  @BuiltValueField(wireName: r'bus_number')
  String? get busNumber;

  @BuiltValueField(wireName: r'latitude')
  num? get latitude;

  @BuiltValueField(wireName: r'longitude')
  num? get longitude;

  @BuiltValueField(wireName: r'speed')
  num? get speed;

  @BuiltValueField(wireName: r'heading')
  num? get heading;

  @BuiltValueField(wireName: r'last_updated')
  String? get lastUpdated;

  ApiV1ParentsMeBusLocationsRetrieve200ResponseInner._();

  factory ApiV1ParentsMeBusLocationsRetrieve200ResponseInner([void updates(ApiV1ParentsMeBusLocationsRetrieve200ResponseInnerBuilder b)]) = _$ApiV1ParentsMeBusLocationsRetrieve200ResponseInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1ParentsMeBusLocationsRetrieve200ResponseInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1ParentsMeBusLocationsRetrieve200ResponseInner> get serializer => _$ApiV1ParentsMeBusLocationsRetrieve200ResponseInnerSerializer();
}

class _$ApiV1ParentsMeBusLocationsRetrieve200ResponseInnerSerializer implements PrimitiveSerializer<ApiV1ParentsMeBusLocationsRetrieve200ResponseInner> {
  @override
  final Iterable<Type> types = const [ApiV1ParentsMeBusLocationsRetrieve200ResponseInner, _$ApiV1ParentsMeBusLocationsRetrieve200ResponseInner];

  @override
  final String wireName = r'ApiV1ParentsMeBusLocationsRetrieve200ResponseInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1ParentsMeBusLocationsRetrieve200ResponseInner object, {
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
    if (object.latitude != null) {
      yield r'latitude';
      yield serializers.serialize(
        object.latitude,
        specifiedType: const FullType(num),
      );
    }
    if (object.longitude != null) {
      yield r'longitude';
      yield serializers.serialize(
        object.longitude,
        specifiedType: const FullType(num),
      );
    }
    if (object.speed != null) {
      yield r'speed';
      yield serializers.serialize(
        object.speed,
        specifiedType: const FullType(num),
      );
    }
    if (object.heading != null) {
      yield r'heading';
      yield serializers.serialize(
        object.heading,
        specifiedType: const FullType(num),
      );
    }
    if (object.lastUpdated != null) {
      yield r'last_updated';
      yield serializers.serialize(
        object.lastUpdated,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1ParentsMeBusLocationsRetrieve200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ApiV1ParentsMeBusLocationsRetrieve200ResponseInnerBuilder result,
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
        case r'latitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.latitude = valueDes;
          break;
        case r'longitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.longitude = valueDes;
          break;
        case r'speed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.speed = valueDes;
          break;
        case r'heading':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.heading = valueDes;
          break;
        case r'last_updated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastUpdated = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1ParentsMeBusLocationsRetrieve200ResponseInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1ParentsMeBusLocationsRetrieve200ResponseInnerBuilder();
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

