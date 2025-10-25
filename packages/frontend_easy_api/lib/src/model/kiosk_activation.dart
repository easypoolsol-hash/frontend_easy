//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kiosk_activation.g.dart';

/// Fortune 500 Standard: One-time kiosk activation  Used by: Google, Amazon, Netflix for device activation Pattern: Disposable tokens that become garbage after first use
///
/// Properties:
/// * [kioskId] - Kiosk identifier (e.g., KIOSK-SCHOOL-001)
/// * [activationToken] - One-time activation token (destroyed after use)
@BuiltValue()
abstract class KioskActivation implements Built<KioskActivation, KioskActivationBuilder> {
  /// Kiosk identifier (e.g., KIOSK-SCHOOL-001)
  @BuiltValueField(wireName: r'kiosk_id')
  String get kioskId;

  /// One-time activation token (destroyed after use)
  @BuiltValueField(wireName: r'activation_token')
  String get activationToken;

  KioskActivation._();

  factory KioskActivation([void updates(KioskActivationBuilder b)]) = _$KioskActivation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KioskActivationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KioskActivation> get serializer => _$KioskActivationSerializer();
}

class _$KioskActivationSerializer implements PrimitiveSerializer<KioskActivation> {
  @override
  final Iterable<Type> types = const [KioskActivation, _$KioskActivation];

  @override
  final String wireName = r'KioskActivation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KioskActivation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kiosk_id';
    yield serializers.serialize(
      object.kioskId,
      specifiedType: const FullType(String),
    );
    yield r'activation_token';
    yield serializers.serialize(
      object.activationToken,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    KioskActivation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KioskActivationBuilder result,
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
        case r'activation_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.activationToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KioskActivation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KioskActivationBuilder();
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

