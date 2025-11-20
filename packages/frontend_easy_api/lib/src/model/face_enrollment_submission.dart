//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'face_enrollment_submission.g.dart';

/// Serializer for parent face enrollment photo submission.  Parent app auto-captures 3-5 photos and submits as base64-encoded images. This serializer validates the submission and creates a FaceEnrollment record.
///
/// Properties:
/// * [photos] - Array of base64-encoded photos from auto-capture
/// * [deviceInfo] - Device metadata (model, OS, app version, etc.)
@BuiltValue()
abstract class FaceEnrollmentSubmission implements Built<FaceEnrollmentSubmission, FaceEnrollmentSubmissionBuilder> {
  /// Array of base64-encoded photos from auto-capture
  @BuiltValueField(wireName: r'photos')
  BuiltList<String> get photos;

  /// Device metadata (model, OS, app version, etc.)
  @BuiltValueField(wireName: r'device_info')
  JsonObject? get deviceInfo;

  FaceEnrollmentSubmission._();

  factory FaceEnrollmentSubmission([void updates(FaceEnrollmentSubmissionBuilder b)]) = _$FaceEnrollmentSubmission;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FaceEnrollmentSubmissionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FaceEnrollmentSubmission> get serializer => _$FaceEnrollmentSubmissionSerializer();
}

class _$FaceEnrollmentSubmissionSerializer implements PrimitiveSerializer<FaceEnrollmentSubmission> {
  @override
  final Iterable<Type> types = const [FaceEnrollmentSubmission, _$FaceEnrollmentSubmission];

  @override
  final String wireName = r'FaceEnrollmentSubmission';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FaceEnrollmentSubmission object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'photos';
    yield serializers.serialize(
      object.photos,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.deviceInfo != null) {
      yield r'device_info';
      yield serializers.serialize(
        object.deviceInfo,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FaceEnrollmentSubmission object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FaceEnrollmentSubmissionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'photos':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.photos.replace(valueDes);
          break;
        case r'device_info':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.deviceInfo = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FaceEnrollmentSubmission deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FaceEnrollmentSubmissionBuilder();
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

