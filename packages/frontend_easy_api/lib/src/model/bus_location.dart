//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bus_location.g.dart';

/// Serializer for GPS location updates from kiosk
///
/// Properties:
/// * [locationId] - Auto-incrementing location entry ID
/// * [latitude] - GPS latitude coordinate
/// * [longitude] - GPS longitude coordinate
/// * [accuracy] - GPS accuracy in meters
/// * [speed] - Speed in km/h
/// * [heading] - Heading/bearing in degrees (0-360)
/// * [timestamp] - When this location was recorded by the kiosk
@BuiltValue()
abstract class BusLocation implements Built<BusLocation, BusLocationBuilder> {
  /// Auto-incrementing location entry ID
  @BuiltValueField(wireName: r'location_id')
  int get locationId;

  /// GPS latitude coordinate
  @BuiltValueField(wireName: r'latitude')
  double get latitude;

  /// GPS longitude coordinate
  @BuiltValueField(wireName: r'longitude')
  double get longitude;

  /// GPS accuracy in meters
  @BuiltValueField(wireName: r'accuracy')
  double? get accuracy;

  /// Speed in km/h
  @BuiltValueField(wireName: r'speed')
  double? get speed;

  /// Heading/bearing in degrees (0-360)
  @BuiltValueField(wireName: r'heading')
  double? get heading;

  /// When this location was recorded by the kiosk
  @BuiltValueField(wireName: r'timestamp')
  DateTime get timestamp;

  BusLocation._();

  factory BusLocation([void updates(BusLocationBuilder b)]) = _$BusLocation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BusLocationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BusLocation> get serializer => _$BusLocationSerializer();
}

class _$BusLocationSerializer implements PrimitiveSerializer<BusLocation> {
  @override
  final Iterable<Type> types = const [BusLocation, _$BusLocation];

  @override
  final String wireName = r'BusLocation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BusLocation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'location_id';
    yield serializers.serialize(
      object.locationId,
      specifiedType: const FullType(int),
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
    if (object.accuracy != null) {
      yield r'accuracy';
      yield serializers.serialize(
        object.accuracy,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.speed != null) {
      yield r'speed';
      yield serializers.serialize(
        object.speed,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.heading != null) {
      yield r'heading';
      yield serializers.serialize(
        object.heading,
        specifiedType: const FullType.nullable(double),
      );
    }
    yield r'timestamp';
    yield serializers.serialize(
      object.timestamp,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BusLocation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BusLocationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'location_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.locationId = valueDes;
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
        case r'accuracy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.accuracy = valueDes;
          break;
        case r'speed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.speed = valueDes;
          break;
        case r'heading':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.heading = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timestamp = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BusLocation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BusLocationBuilder();
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

