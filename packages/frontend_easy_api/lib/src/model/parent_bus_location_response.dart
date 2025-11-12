//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'parent_bus_location_response.g.dart';

/// ParentBusLocationResponse
///
/// Properties:
/// * [type] 
/// * [geometry] - GeoJSON Point geometry with bus location
/// * [properties] - Bus details including bus_id, name, status, etc.
@BuiltValue()
abstract class ParentBusLocationResponse implements Built<ParentBusLocationResponse, ParentBusLocationResponseBuilder> {
  @BuiltValueField(wireName: r'type')
  String? get type;

  /// GeoJSON Point geometry with bus location
  @BuiltValueField(wireName: r'geometry')
  BuiltMap<String, JsonObject?> get geometry;

  /// Bus details including bus_id, name, status, etc.
  @BuiltValueField(wireName: r'properties')
  BuiltMap<String, JsonObject?> get properties;

  ParentBusLocationResponse._();

  factory ParentBusLocationResponse([void updates(ParentBusLocationResponseBuilder b)]) = _$ParentBusLocationResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ParentBusLocationResponseBuilder b) => b
      ..type = 'Feature';

  @BuiltValueSerializer(custom: true)
  static Serializer<ParentBusLocationResponse> get serializer => _$ParentBusLocationResponseSerializer();
}

class _$ParentBusLocationResponseSerializer implements PrimitiveSerializer<ParentBusLocationResponse> {
  @override
  final Iterable<Type> types = const [ParentBusLocationResponse, _$ParentBusLocationResponse];

  @override
  final String wireName = r'ParentBusLocationResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ParentBusLocationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    yield r'geometry';
    yield serializers.serialize(
      object.geometry,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
    );
    yield r'properties';
    yield serializers.serialize(
      object.properties,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ParentBusLocationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ParentBusLocationResponseBuilder result,
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
        case r'geometry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.geometry.replace(valueDes);
          break;
        case r'properties':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.properties.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ParentBusLocationResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ParentBusLocationResponseBuilder();
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

