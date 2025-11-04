//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'parent_bus_locations_response.g.dart';

/// ParentBusLocationsResponse
///
/// Properties:
/// * [type] 
/// * [features] - GeoJSON features array
@BuiltValue()
abstract class ParentBusLocationsResponse implements Built<ParentBusLocationsResponse, ParentBusLocationsResponseBuilder> {
  @BuiltValueField(wireName: r'type')
  String? get type;

  /// GeoJSON features array
  @BuiltValueField(wireName: r'features')
  BuiltList<BuiltMap<String, JsonObject?>> get features;

  ParentBusLocationsResponse._();

  factory ParentBusLocationsResponse([void updates(ParentBusLocationsResponseBuilder b)]) = _$ParentBusLocationsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ParentBusLocationsResponseBuilder b) => b
      ..type = 'FeatureCollection';

  @BuiltValueSerializer(custom: true)
  static Serializer<ParentBusLocationsResponse> get serializer => _$ParentBusLocationsResponseSerializer();
}

class _$ParentBusLocationsResponseSerializer implements PrimitiveSerializer<ParentBusLocationsResponse> {
  @override
  final Iterable<Type> types = const [ParentBusLocationsResponse, _$ParentBusLocationsResponse];

  @override
  final String wireName = r'ParentBusLocationsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ParentBusLocationsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    yield r'features';
    yield serializers.serialize(
      object.features,
      specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ParentBusLocationsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ParentBusLocationsResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'features':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
          ) as BuiltList<BuiltMap<String, JsonObject?>>;
          result.features.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ParentBusLocationsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ParentBusLocationsResponseBuilder();
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

