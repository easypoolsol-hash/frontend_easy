//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'route_stop.g.dart';

/// Serializer for route stops with nested bus stop info
///
/// Properties:
/// * [busStop] - Bus stop on this route
/// * [busStopName] 
/// * [latitude] 
/// * [longitude] 
/// * [sequence] - Order of this stop in the route (1-based)
/// * [waypoints] - Path coordinates to NEXT stop: [{lat, lon}, ...]
@BuiltValue()
abstract class RouteStop implements Built<RouteStop, RouteStopBuilder> {
  /// Bus stop on this route
  @BuiltValueField(wireName: r'bus_stop')
  String get busStop;

  @BuiltValueField(wireName: r'bus_stop_name')
  String get busStopName;

  @BuiltValueField(wireName: r'latitude')
  double get latitude;

  @BuiltValueField(wireName: r'longitude')
  double get longitude;

  /// Order of this stop in the route (1-based)
  @BuiltValueField(wireName: r'sequence')
  int get sequence;

  /// Path coordinates to NEXT stop: [{lat, lon}, ...]
  @BuiltValueField(wireName: r'waypoints')
  JsonObject? get waypoints;

  RouteStop._();

  factory RouteStop([void updates(RouteStopBuilder b)]) = _$RouteStop;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RouteStopBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RouteStop> get serializer => _$RouteStopSerializer();
}

class _$RouteStopSerializer implements PrimitiveSerializer<RouteStop> {
  @override
  final Iterable<Type> types = const [RouteStop, _$RouteStop];

  @override
  final String wireName = r'RouteStop';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RouteStop object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'bus_stop';
    yield serializers.serialize(
      object.busStop,
      specifiedType: const FullType(String),
    );
    yield r'bus_stop_name';
    yield serializers.serialize(
      object.busStopName,
      specifiedType: const FullType(String),
    );
    yield r'latitude';
    yield serializers.serialize(
      object.latitude,
      specifiedType: const FullType(double),
    );
    yield r'longitude';
    yield serializers.serialize(
      object.longitude,
      specifiedType: const FullType(double),
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
    RouteStop object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RouteStopBuilder result,
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
        case r'bus_stop_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.busStopName = valueDes;
          break;
        case r'latitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.latitude = valueDes;
          break;
        case r'longitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.longitude = valueDes;
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
  RouteStop deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RouteStopBuilder();
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

