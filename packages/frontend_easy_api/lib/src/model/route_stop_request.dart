//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'route_stop_request.g.dart';

/// Serializer for route stops with nested bus stop info
///
/// Properties:
/// * [busStop] - Bus stop on this route
/// * [sequence] - Order of this stop in the route (1-based)
/// * [waypoints] - Path coordinates to NEXT stop: [{lat, lon}, ...]
@BuiltValue()
abstract class RouteStopRequest implements Built<RouteStopRequest, RouteStopRequestBuilder> {
  /// Bus stop on this route
  @BuiltValueField(wireName: r'bus_stop')
  String get busStop;

  /// Order of this stop in the route (1-based)
  @BuiltValueField(wireName: r'sequence')
  int get sequence;

  /// Path coordinates to NEXT stop: [{lat, lon}, ...]
  @BuiltValueField(wireName: r'waypoints')
  JsonObject? get waypoints;

  RouteStopRequest._();

  factory RouteStopRequest([void updates(RouteStopRequestBuilder b)]) = _$RouteStopRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RouteStopRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RouteStopRequest> get serializer => _$RouteStopRequestSerializer();
}

class _$RouteStopRequestSerializer implements PrimitiveSerializer<RouteStopRequest> {
  @override
  final Iterable<Type> types = const [RouteStopRequest, _$RouteStopRequest];

  @override
  final String wireName = r'RouteStopRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RouteStopRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'bus_stop';
    yield serializers.serialize(
      object.busStop,
      specifiedType: const FullType(String),
    );
    yield r'sequence';
    yield serializers.serialize(
      object.sequence,
      specifiedType: const FullType(int),
    );
    if (object.waypoints != null) {
      yield r'waypoints';
      yield serializers.serialize(
        object.waypoints,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RouteStopRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RouteStopRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'bus_stop':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.busStop = valueDes;
          break;
        case r'sequence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sequence = valueDes;
          break;
        case r'waypoints':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.waypoints = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RouteStopRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RouteStopRequestBuilder();
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

