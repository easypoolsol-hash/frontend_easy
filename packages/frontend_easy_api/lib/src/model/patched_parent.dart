//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patched_parent.g.dart';

/// PatchedParent
///
/// Properties:
/// * [parentId] 
/// * [decryptedName] 
/// * [decryptedPhone] 
/// * [decryptedEmail] 
/// * [name] - Encrypted name (plaintext validated max 100 chars)
/// * [phone] - Encrypted phone number (plaintext validated as +91XXXXXXXXXX)
/// * [email] - Encrypted email address (plaintext validated per RFC 5321)
/// * [createdAt] 
@BuiltValue()
abstract class PatchedParent implements Built<PatchedParent, PatchedParentBuilder> {
  @BuiltValueField(wireName: r'parent_id')
  String? get parentId;

  @BuiltValueField(wireName: r'decrypted_name')
  String? get decryptedName;

  @BuiltValueField(wireName: r'decrypted_phone')
  String? get decryptedPhone;

  @BuiltValueField(wireName: r'decrypted_email')
  String? get decryptedEmail;

  /// Encrypted name (plaintext validated max 100 chars)
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Encrypted phone number (plaintext validated as +91XXXXXXXXXX)
  @BuiltValueField(wireName: r'phone')
  String? get phone;

  /// Encrypted email address (plaintext validated per RFC 5321)
  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  PatchedParent._();

  factory PatchedParent([void updates(PatchedParentBuilder b)]) = _$PatchedParent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatchedParentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatchedParent> get serializer => _$PatchedParentSerializer();
}

class _$PatchedParentSerializer implements PrimitiveSerializer<PatchedParent> {
  @override
  final Iterable<Type> types = const [PatchedParent, _$PatchedParent];

  @override
  final String wireName = r'PatchedParent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatchedParent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.parentId != null) {
      yield r'parent_id';
      yield serializers.serialize(
        object.parentId,
        specifiedType: const FullType(String),
      );
    }
    if (object.decryptedName != null) {
      yield r'decrypted_name';
      yield serializers.serialize(
        object.decryptedName,
        specifiedType: const FullType(String),
      );
    }
    if (object.decryptedPhone != null) {
      yield r'decrypted_phone';
      yield serializers.serialize(
        object.decryptedPhone,
        specifiedType: const FullType(String),
      );
    }
    if (object.decryptedEmail != null) {
      yield r'decrypted_email';
      yield serializers.serialize(
        object.decryptedEmail,
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
    if (object.phone != null) {
      yield r'phone';
      yield serializers.serialize(
        object.phone,
        specifiedType: const FullType(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
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
    PatchedParent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PatchedParentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'parent_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.parentId = valueDes;
          break;
        case r'decrypted_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.decryptedName = valueDes;
          break;
        case r'decrypted_phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.decryptedPhone = valueDes;
          break;
        case r'decrypted_email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.decryptedEmail = valueDes;
          break;
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
            specifiedType: const FullType(String),
          ) as String;
          result.phone = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
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
  PatchedParent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatchedParentBuilder();
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

