//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'token_obtain_pair.g.dart';

/// TokenObtainPair
///
/// Properties:
/// * [username] 
/// * [password] 
/// * [access] 
/// * [refresh] 
@BuiltValue()
abstract class TokenObtainPair implements Built<TokenObtainPair, TokenObtainPairBuilder> {
  @BuiltValueField(wireName: r'username')
  String get username;

  @BuiltValueField(wireName: r'password')
  String get password;

  @BuiltValueField(wireName: r'access')
  String get access;

  @BuiltValueField(wireName: r'refresh')
  String get refresh;

  TokenObtainPair._();

  factory TokenObtainPair([void updates(TokenObtainPairBuilder b)]) = _$TokenObtainPair;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TokenObtainPairBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TokenObtainPair> get serializer => _$TokenObtainPairSerializer();
}

class _$TokenObtainPairSerializer implements PrimitiveSerializer<TokenObtainPair> {
  @override
  final Iterable<Type> types = const [TokenObtainPair, _$TokenObtainPair];

  @override
  final String wireName = r'TokenObtainPair';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TokenObtainPair object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'username';
    yield serializers.serialize(
      object.username,
      specifiedType: const FullType(String),
    );
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
    yield r'access';
    yield serializers.serialize(
      object.access,
      specifiedType: const FullType(String),
    );
    yield r'refresh';
    yield serializers.serialize(
      object.refresh,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TokenObtainPair object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TokenObtainPairBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'username':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.username = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'access':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.access = valueDes;
          break;
        case r'refresh':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.refresh = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TokenObtainPair deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TokenObtainPairBuilder();
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

