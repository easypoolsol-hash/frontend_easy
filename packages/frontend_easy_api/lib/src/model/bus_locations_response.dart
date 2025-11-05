//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bus_locations_response.g.dart';

/// BusLocationsResponse
///
/// Properties:
/// * [type] 
/// * [features] - Array of GeoJSON Feature objects with bus locations
@BuiltValue()
abstract class BusLocationsResponse implements Built<BusLocationsResponse, BusLocationsResponseBuilder> {
  @BuiltValueField(wireName: r'type')
  String? get type;

  /// Array of GeoJSON Feature objects with bus locations
  @BuiltValueField(wireName: r'features')
  BuiltList<BuiltMap<String, JsonObject?>> get features;

  BusLocationsResponse._();

  factory BusLocationsResponse([void updates(BusLocationsResponseBuilder b)]) = _$BusLocationsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BusLocationsResponseBuilder b) => b
      ..type = 'FeatureCollection';

  @BuiltValueSerializer(custom: true)
  static Serializer<BusLocationsResponse> get serializer => _$BusLocationsResponseSerializer();
}

class _$BusLocationsResponseSerializer implements PrimitiveSerializer<BusLocationsResponse> {
  @override
  final Iterable<Type> types = const [BusLocationsResponse, _$BusLocationsResponse];

  @override
  final String wireName = r'BusLocationsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BusLocationsResponse object, {
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
    BusLocationsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BusLocationsResponseBuilder result,
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
  BusLocationsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BusLocationsResponseBuilder();
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

