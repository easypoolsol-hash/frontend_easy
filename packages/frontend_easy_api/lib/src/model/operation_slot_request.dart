//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'operation_slot_request.g.dart';

/// Serializer for operation time slots
///
/// Properties:
/// * [startTime] - Start time (e.g., 08:00)
/// * [endTime] - End time (e.g., 10:00)
/// * [order] - Display order (0 = first slot)
@BuiltValue()
abstract class OperationSlotRequest implements Built<OperationSlotRequest, OperationSlotRequestBuilder> {
  /// Start time (e.g., 08:00)
  @BuiltValueField(wireName: r'start_time')
  String get startTime;

  /// End time (e.g., 10:00)
  @BuiltValueField(wireName: r'end_time')
  String get endTime;

  /// Display order (0 = first slot)
  @BuiltValueField(wireName: r'order')
  int? get order;

  OperationSlotRequest._();

  factory OperationSlotRequest([void updates(OperationSlotRequestBuilder b)]) = _$OperationSlotRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OperationSlotRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OperationSlotRequest> get serializer => _$OperationSlotRequestSerializer();
}

class _$OperationSlotRequestSerializer implements PrimitiveSerializer<OperationSlotRequest> {
  @override
  final Iterable<Type> types = const [OperationSlotRequest, _$OperationSlotRequest];

  @override
  final String wireName = r'OperationSlotRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OperationSlotRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'start_time';
    yield serializers.serialize(
      object.startTime,
      specifiedType: const FullType(String),
    );
    yield r'end_time';
    yield serializers.serialize(
      object.endTime,
      specifiedType: const FullType(String),
    );
    if (object.order != null) {
      yield r'order';
      yield serializers.serialize(
        object.order,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OperationSlotRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OperationSlotRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'start_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.startTime = valueDes;
          break;
        case r'end_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.endTime = valueDes;
          break;
        case r'order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.order = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OperationSlotRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperationSlotRequestBuilder();
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

