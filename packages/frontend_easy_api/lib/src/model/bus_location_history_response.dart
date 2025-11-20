//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bus_location_history_response.g.dart';

/// BusLocationHistoryResponse
///
/// Properties:
/// * [type] 
/// * [features] - Array of GeoJSON Feature objects with historical bus locations
@BuiltValue()
abstract class BusLocationHistoryResponse implements Built<BusLocationHistoryResponse, BusLocationHistoryResponseBuilder> {
  @BuiltValueField(wireName: r'type')
  String? get type;

  /// Array of GeoJSON Feature objects with historical bus locations
  @BuiltValueField(wireName: r'features')
  BuiltList<BuiltMap<String, JsonObject?>> get features;

  BusLocationHistoryResponse._();

  factory BusLocationHistoryResponse([void updates(BusLocationHistoryResponseBuilder b)]) = _$BusLocationHistoryResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BusLocationHistoryResponseBuilder b) => b
      ..type = 'FeatureCollection';

  @BuiltValueSerializer(custom: true)
  static Serializer<BusLocationHistoryResponse> get serializer => _$BusLocationHistoryResponseSerializer();
}

class _$BusLocationHistoryResponseSerializer implements PrimitiveSerializer<BusLocationHistoryResponse> {
  @override
  final Iterable<Type> types = const [BusLocationHistoryResponse, _$BusLocationHistoryResponse];

  @override
  final String wireName = r'BusLocationHistoryResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BusLocationHistoryResponse object, {
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
    BusLocationHistoryResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BusLocationHistoryResponseBuilder result,
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
  BusLocationHistoryResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BusLocationHistoryResponseBuilder();
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

