//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'operation_timing_request.g.dart';

/// Serializer for operation timing with slots
///
/// Properties:
/// * [name] - Schedule name (e.g., 'Morning Shift', 'Full Day')
/// * [description] - Optional description of this schedule
/// * [isActive] - Whether this schedule is available for selection
@BuiltValue()
abstract class OperationTimingRequest implements Built<OperationTimingRequest, OperationTimingRequestBuilder> {
  /// Schedule name (e.g., 'Morning Shift', 'Full Day')
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Optional description of this schedule
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Whether this schedule is available for selection
  @BuiltValueField(wireName: r'is_active')
  bool? get isActive;

  OperationTimingRequest._();

  factory OperationTimingRequest([void updates(OperationTimingRequestBuilder b)]) = _$OperationTimingRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OperationTimingRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OperationTimingRequest> get serializer => _$OperationTimingRequestSerializer();
}

class _$OperationTimingRequestSerializer implements PrimitiveSerializer<OperationTimingRequest> {
  @override
  final Iterable<Type> types = const [OperationTimingRequest, _$OperationTimingRequest];

  @override
  final String wireName = r'OperationTimingRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OperationTimingRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.isActive != null) {
      yield r'is_active';
      yield serializers.serialize(
        object.isActive,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OperationTimingRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OperationTimingRequestBuilder result,
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
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'is_active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OperationTimingRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperationTimingRequestBuilder();
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

