//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_key_create.g.dart';

/// APIKeyCreate
///
/// Properties:
/// * [kioskId] - Reference to kiosk device
/// * [name] - Human-readable name for the key
/// * [permissions] - JSON object defining scoped permissions
/// * [expiresAt] 
/// * [rawKey] 
@BuiltValue()
abstract class APIKeyCreate implements Built<APIKeyCreate, APIKeyCreateBuilder> {
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

  @BuiltValueField(wireName: r'raw_key')
  String get rawKey;

  APIKeyCreate._();

  factory APIKeyCreate([void updates(APIKeyCreateBuilder b)]) = _$APIKeyCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(APIKeyCreateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<APIKeyCreate> get serializer => _$APIKeyCreateSerializer();
}

class _$APIKeyCreateSerializer implements PrimitiveSerializer<APIKeyCreate> {
  @override
  final Iterable<Type> types = const [APIKeyCreate, _$APIKeyCreate];

  @override
  final String wireName = r'APIKeyCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    APIKeyCreate object, {
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
    yield r'raw_key';
    yield serializers.serialize(
      object.rawKey,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    APIKeyCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required APIKeyCreateBuilder result,
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
        case r'raw_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rawKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  APIKeyCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = APIKeyCreateBuilder();
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

