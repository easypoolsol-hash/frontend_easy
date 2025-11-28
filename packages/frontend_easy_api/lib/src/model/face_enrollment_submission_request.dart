//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'face_enrollment_submission_request.g.dart';

/// Serializer for parent face enrollment photo submission.  Parent app auto-captures 3-5 photos and submits as base64-encoded images. This serializer validates the submission and creates a FaceEnrollment record.
///
/// Properties:
/// * [photos] - Array of base64-encoded photos from auto-capture
/// * [deviceInfo] - Device metadata (model, OS, app version, etc.)
@BuiltValue()
abstract class FaceEnrollmentSubmissionRequest implements Built<FaceEnrollmentSubmissionRequest, FaceEnrollmentSubmissionRequestBuilder> {
  /// Array of base64-encoded photos from auto-capture
  @BuiltValueField(wireName: r'photos')
  BuiltList<String> get photos;

  /// Device metadata (model, OS, app version, etc.)
  @BuiltValueField(wireName: r'device_info')
  JsonObject? get deviceInfo;

  FaceEnrollmentSubmissionRequest._();

  factory FaceEnrollmentSubmissionRequest([void updates(FaceEnrollmentSubmissionRequestBuilder b)]) = _$FaceEnrollmentSubmissionRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FaceEnrollmentSubmissionRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FaceEnrollmentSubmissionRequest> get serializer => _$FaceEnrollmentSubmissionRequestSerializer();
}

class _$FaceEnrollmentSubmissionRequestSerializer implements PrimitiveSerializer<FaceEnrollmentSubmissionRequest> {
  @override
  final Iterable<Type> types = const [FaceEnrollmentSubmissionRequest, _$FaceEnrollmentSubmissionRequest];

  @override
  final String wireName = r'FaceEnrollmentSubmissionRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FaceEnrollmentSubmissionRequest object, {
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
    FaceEnrollmentSubmissionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FaceEnrollmentSubmissionRequestBuilder result,
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
  FaceEnrollmentSubmissionRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FaceEnrollmentSubmissionRequestBuilder();
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

