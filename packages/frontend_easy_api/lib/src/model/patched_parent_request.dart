//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patched_parent_request.g.dart';

/// PatchedParentRequest
///
/// Properties:
/// * [name] - Encrypted name (plaintext validated max 100 chars)
/// * [phone] - Encrypted phone number (plaintext validated as +91XXXXXXXXXX)
/// * [email] - Encrypted email address (plaintext validated per RFC 5321)
@BuiltValue()
abstract class PatchedParentRequest implements Built<PatchedParentRequest, PatchedParentRequestBuilder> {
  /// Encrypted name (plaintext validated max 100 chars)
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Encrypted phone number (plaintext validated as +91XXXXXXXXXX)
  @BuiltValueField(wireName: r'phone')
  String? get phone;

  /// Encrypted email address (plaintext validated per RFC 5321)
  @BuiltValueField(wireName: r'email')
  String? get email;

  PatchedParentRequest._();

  factory PatchedParentRequest([void updates(PatchedParentRequestBuilder b)]) = _$PatchedParentRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatchedParentRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatchedParentRequest> get serializer => _$PatchedParentRequestSerializer();
}

class _$PatchedParentRequestSerializer implements PrimitiveSerializer<PatchedParentRequest> {
  @override
  final Iterable<Type> types = const [PatchedParentRequest, _$PatchedParentRequest];

  @override
  final String wireName = r'PatchedParentRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatchedParentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.phone != null) {
      yield r'phone';
      yield serializers.serialize(
        object.phone,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PatchedParentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PatchedParentRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.phone = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PatchedParentRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatchedParentRequestBuilder();
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

