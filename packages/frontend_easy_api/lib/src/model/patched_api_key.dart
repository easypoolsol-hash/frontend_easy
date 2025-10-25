//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patched_api_key.g.dart';

/// PatchedAPIKey
///
/// Properties:
/// * [keyId] 
/// * [kioskId] - Reference to kiosk device
/// * [name] - Human-readable name for the key
/// * [permissions] - JSON object defining scoped permissions
/// * [isActive] 
/// * [expiresAt] 
/// * [lastUsed] 
/// * [createdAt] 
@BuiltValue()
abstract class PatchedAPIKey implements Built<PatchedAPIKey, PatchedAPIKeyBuilder> {
  @BuiltValueField(wireName: r'key_id')
  String? get keyId;

  /// Reference to kiosk device
  @BuiltValueField(wireName: r'kiosk_id')
  String? get kioskId;

  /// Human-readable name for the key
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// JSON object defining scoped permissions
  @BuiltValueField(wireName: r'permissions')
  JsonObject? get permissions;

  @BuiltValueField(wireName: r'is_active')
  bool? get isActive;

  @BuiltValueField(wireName: r'expires_at')
  DateTime? get expiresAt;

  @BuiltValueField(wireName: r'last_used')
  DateTime? get lastUsed;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  PatchedAPIKey._();

  factory PatchedAPIKey([void updates(PatchedAPIKeyBuilder b)]) = _$PatchedAPIKey;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatchedAPIKeyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatchedAPIKey> get serializer => _$PatchedAPIKeySerializer();
}

class _$PatchedAPIKeySerializer implements PrimitiveSerializer<PatchedAPIKey> {
  @override
  final Iterable<Type> types = const [PatchedAPIKey, _$PatchedAPIKey];

  @override
  final String wireName = r'PatchedAPIKey';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatchedAPIKey object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.keyId != null) {
      yield r'key_id';
      yield serializers.serialize(
        object.keyId,
        specifiedType: const FullType(String),
      );
    }
    if (object.kioskId != null) {
      yield r'kiosk_id';
      yield serializers.serialize(
        object.kioskId,
        specifiedType: const FullType(String),
      );
    }
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
    if (object.isActive != null) {
      yield r'is_active';
      yield serializers.serialize(
        object.isActive,
        specifiedType: const FullType(bool),
      );
    }
    if (object.expiresAt != null) {
      yield r'expires_at';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastUsed != null) {
      yield r'last_used';
      yield serializers.serialize(
        object.lastUsed,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PatchedAPIKey object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PatchedAPIKeyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'key_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.keyId = valueDes;
          break;
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
        case r'is_active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        case r'expires_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.expiresAt = valueDes;
          break;
        case r'last_used':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastUsed = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PatchedAPIKey deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatchedAPIKeyBuilder();
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

