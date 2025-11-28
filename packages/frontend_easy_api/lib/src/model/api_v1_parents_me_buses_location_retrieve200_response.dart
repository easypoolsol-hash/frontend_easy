//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:frontend_easy_api/src/model/api_v1_parents_me_buses_location_retrieve200_response_location.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_parents_me_buses_location_retrieve200_response.g.dart';

/// ApiV1ParentsMeBusesLocationRetrieve200Response
///
/// Properties:
/// * [busId] 
/// * [licensePlate] 
/// * [location] 
@BuiltValue()
abstract class ApiV1ParentsMeBusesLocationRetrieve200Response implements Built<ApiV1ParentsMeBusesLocationRetrieve200Response, ApiV1ParentsMeBusesLocationRetrieve200ResponseBuilder> {
  @BuiltValueField(wireName: r'bus_id')
  String? get busId;

  @BuiltValueField(wireName: r'license_plate')
  String? get licensePlate;

  @BuiltValueField(wireName: r'location')
  ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation? get location;

  ApiV1ParentsMeBusesLocationRetrieve200Response._();

  factory ApiV1ParentsMeBusesLocationRetrieve200Response([void updates(ApiV1ParentsMeBusesLocationRetrieve200ResponseBuilder b)]) = _$ApiV1ParentsMeBusesLocationRetrieve200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1ParentsMeBusesLocationRetrieve200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1ParentsMeBusesLocationRetrieve200Response> get serializer => _$ApiV1ParentsMeBusesLocationRetrieve200ResponseSerializer();
}

class _$ApiV1ParentsMeBusesLocationRetrieve200ResponseSerializer implements PrimitiveSerializer<ApiV1ParentsMeBusesLocationRetrieve200Response> {
  @override
  final Iterable<Type> types = const [ApiV1ParentsMeBusesLocationRetrieve200Response, _$ApiV1ParentsMeBusesLocationRetrieve200Response];

  @override
  final String wireName = r'ApiV1ParentsMeBusesLocationRetrieve200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1ParentsMeBusesLocationRetrieve200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.busId != null) {
      yield r'bus_id';
      yield serializers.serialize(
        object.busId,
        specifiedType: const FullType(String),
      );
    }
    if (object.licensePlate != null) {
      yield r'license_plate';
      yield serializers.serialize(
        object.licensePlate,
        specifiedType: const FullType(String),
      );
    }
    if (object.location != null) {
      yield r'location';
      yield serializers.serialize(
        object.location,
        specifiedType: const FullType(ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1ParentsMeBusesLocationRetrieve200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ApiV1ParentsMeBusesLocationRetrieve200ResponseBuilder result,
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
        case r'location':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation),
          ) as ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation;
          result.location.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1ParentsMeBusesLocationRetrieve200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1ParentsMeBusesLocationRetrieve200ResponseBuilder();
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

