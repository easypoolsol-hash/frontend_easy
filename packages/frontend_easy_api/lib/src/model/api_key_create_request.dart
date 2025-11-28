//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_key_create_request.g.dart';

/// APIKeyCreateRequest
///
/// Properties:
/// * [kioskId] - Reference to kiosk device
/// * [name] - Human-readable name for the key
/// * [permissions] - JSON object defining scoped permissions
/// * [expiresAt] 
@BuiltValue()
abstract class APIKeyCreateRequest implements Built<APIKeyCreateRequest, APIKeyCreateRequestBuilder> {
  /// Reference to kiosk device
  @BuiltValueField(wireName: r'kiosk_id')
  String get kioskId;

  /// Human-readable name for the key
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// JSON object defining scoped permissions
  @BuiltValueField(wireName: r'permissions')
  JsonObject? get permissions;

  @BuiltValueField(wireName: r'expires_at')
  DateTime? get expiresAt;

  APIKeyCreateRequest._();

  factory APIKeyCreateRequest([void updates(APIKeyCreateRequestBuilder b)]) = _$APIKeyCreateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(APIKeyCreateRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<APIKeyCreateRequest> get serializer => _$APIKeyCreateRequestSerializer();
}

class _$APIKeyCreateRequestSerializer implements PrimitiveSerializer<APIKeyCreateRequest> {
  @override
  final Iterable<Type> types = const [APIKeyCreateRequest, _$APIKeyCreateRequest];

  @override
  final String wireName = r'APIKeyCreateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    APIKeyCreateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kiosk_id';
    yield serializers.serialize(
      object.kioskId,
      specifiedType: const FullType(String),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.permissions != null) {
      yield r'permissions';
      yield serializers.serialize(
        object.permissions,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.expiresAt != null) {
      yield r'expires_at';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    APIKeyCreateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required APIKeyCreateRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kiosk_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kioskId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'permissions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.permissions = valueDes;
          break;
        case r'expires_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.expiresAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  APIKeyCreateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = APIKeyCreateRequestBuilder();
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

