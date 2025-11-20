//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_parents_me_buses_location_retrieve200_response_location.g.dart';

/// ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation
///
/// Properties:
/// * [latitude] 
/// * [longitude] 
/// * [lastUpdated] 
@BuiltValue()
abstract class ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation implements Built<ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation, ApiV1ParentsMeBusesLocationRetrieve200ResponseLocationBuilder> {
  @BuiltValueField(wireName: r'latitude')
  num? get latitude;

  @BuiltValueField(wireName: r'longitude')
  num? get longitude;

  @BuiltValueField(wireName: r'last_updated')
  String? get lastUpdated;

  ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation._();

  factory ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation([void updates(ApiV1ParentsMeBusesLocationRetrieve200ResponseLocationBuilder b)]) = _$ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1ParentsMeBusesLocationRetrieve200ResponseLocationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation> get serializer => _$ApiV1ParentsMeBusesLocationRetrieve200ResponseLocationSerializer();
}

class _$ApiV1ParentsMeBusesLocationRetrieve200ResponseLocationSerializer implements PrimitiveSerializer<ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation> {
  @override
  final Iterable<Type> types = const [ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation, _$ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation];

  @override
  final String wireName = r'ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ApiV1ParentsMeBusesLocationRetrieve200ResponseLocationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1ParentsMeBusesLocationRetrieve200ResponseLocationBuilder();
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

