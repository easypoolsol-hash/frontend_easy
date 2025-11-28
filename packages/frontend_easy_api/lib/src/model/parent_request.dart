//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'parent_request.g.dart';

/// ParentRequest
///
/// Properties:
/// * [name] - Encrypted name (plaintext validated max 100 chars)
/// * [phone] - Encrypted phone number (plaintext validated as +91XXXXXXXXXX)
/// * [email] - Encrypted email address (plaintext validated per RFC 5321)
@BuiltValue()
abstract class ParentRequest implements Built<ParentRequest, ParentRequestBuilder> {
  /// Encrypted name (plaintext validated max 100 chars)
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Encrypted phone number (plaintext validated as +91XXXXXXXXXX)
  @BuiltValueField(wireName: r'phone')
  String? get phone;

  /// Encrypted email address (plaintext validated per RFC 5321)
  @BuiltValueField(wireName: r'email')
  String? get email;

  ParentRequest._();

  factory ParentRequest([void updates(ParentRequestBuilder b)]) = _$ParentRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ParentRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ParentRequest> get serializer => _$ParentRequestSerializer();
}

class _$ParentRequestSerializer implements PrimitiveSerializer<ParentRequest> {
  @override
  final Iterable<Type> types = const [ParentRequest, _$ParentRequest];

  @override
  final String wireName = r'ParentRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ParentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
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
    ParentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ParentRequestBuilder result,
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
  ParentRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ParentRequestBuilder();
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

