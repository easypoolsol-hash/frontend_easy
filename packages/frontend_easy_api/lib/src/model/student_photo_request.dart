//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'student_photo_request.g.dart';

/// StudentPhotoRequest
///
/// Properties:
/// * [student] 
/// * [photoContentType] - MIME type (e.g., image/jpeg, image/png)
/// * [isPrimary] - Primary photo for student
/// * [capturedAt] - When photo was taken
@BuiltValue()
abstract class StudentPhotoRequest implements Built<StudentPhotoRequest, StudentPhotoRequestBuilder> {
  @BuiltValueField(wireName: r'student')
  String get student;

  /// MIME type (e.g., image/jpeg, image/png)
  @BuiltValueField(wireName: r'photo_content_type')
  String? get photoContentType;

  /// Primary photo for student
  @BuiltValueField(wireName: r'is_primary')
  bool? get isPrimary;

  /// When photo was taken
  @BuiltValueField(wireName: r'captured_at')
  DateTime? get capturedAt;

  StudentPhotoRequest._();

  factory StudentPhotoRequest([void updates(StudentPhotoRequestBuilder b)]) = _$StudentPhotoRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StudentPhotoRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StudentPhotoRequest> get serializer => _$StudentPhotoRequestSerializer();
}

class _$StudentPhotoRequestSerializer implements PrimitiveSerializer<StudentPhotoRequest> {
  @override
  final Iterable<Type> types = const [StudentPhotoRequest, _$StudentPhotoRequest];

  @override
  final String wireName = r'StudentPhotoRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StudentPhotoRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'student';
    yield serializers.serialize(
      object.student,
      specifiedType: const FullType(String),
    );
    if (object.photoContentType != null) {
      yield r'photo_content_type';
      yield serializers.serialize(
        object.photoContentType,
        specifiedType: const FullType(String),
      );
    }
    if (object.isPrimary != null) {
      yield r'is_primary';
      yield serializers.serialize(
        object.isPrimary,
        specifiedType: const FullType(bool),
      );
    }
    if (object.capturedAt != null) {
      yield r'captured_at';
      yield serializers.serialize(
        object.capturedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StudentPhotoRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StudentPhotoRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'student':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.student = valueDes;
          break;
        case r'photo_content_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.photoContentType = valueDes;
          break;
        case r'is_primary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isPrimary = valueDes;
          break;
        case r'captured_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.capturedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StudentPhotoRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StudentPhotoRequestBuilder();
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

