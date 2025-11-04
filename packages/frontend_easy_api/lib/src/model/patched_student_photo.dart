//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patched_student_photo.g.dart';

/// PatchedStudentPhoto
///
/// Properties:
/// * [photoId] 
/// * [student] 
/// * [photo] - Student photo file
/// * [isPrimary] - Primary photo for student
/// * [capturedAt] - When photo was taken
/// * [studentDetails] 
/// * [createdAt] 
@BuiltValue()
abstract class PatchedStudentPhoto implements Built<PatchedStudentPhoto, PatchedStudentPhotoBuilder> {
  @BuiltValueField(wireName: r'photo_id')
  String? get photoId;

  @BuiltValueField(wireName: r'student')
  String? get student;

  /// Student photo file
  @BuiltValueField(wireName: r'photo')
  String? get photo;

  /// Primary photo for student
  @BuiltValueField(wireName: r'is_primary')
  bool? get isPrimary;

  /// When photo was taken
  @BuiltValueField(wireName: r'captured_at')
  DateTime? get capturedAt;

  @BuiltValueField(wireName: r'student_details')
  String? get studentDetails;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  PatchedStudentPhoto._();

  factory PatchedStudentPhoto([void updates(PatchedStudentPhotoBuilder b)]) = _$PatchedStudentPhoto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatchedStudentPhotoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatchedStudentPhoto> get serializer => _$PatchedStudentPhotoSerializer();
}

class _$PatchedStudentPhotoSerializer implements PrimitiveSerializer<PatchedStudentPhoto> {
  @override
  final Iterable<Type> types = const [PatchedStudentPhoto, _$PatchedStudentPhoto];

  @override
  final String wireName = r'PatchedStudentPhoto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatchedStudentPhoto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.photoId != null) {
      yield r'photo_id';
      yield serializers.serialize(
        object.photoId,
        specifiedType: const FullType(String),
      );
    }
    if (object.student != null) {
      yield r'student';
      yield serializers.serialize(
        object.student,
        specifiedType: const FullType(String),
      );
    }
    if (object.photo != null) {
      yield r'photo';
      yield serializers.serialize(
        object.photo,
        specifiedType: const FullType.nullable(String),
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
    if (object.studentDetails != null) {
      yield r'student_details';
      yield serializers.serialize(
        object.studentDetails,
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
    PatchedStudentPhoto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PatchedStudentPhotoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'photo_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.photoId = valueDes;
          break;
        case r'student':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.student = valueDes;
          break;
        case r'photo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.photo = valueDes;
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
        case r'student_details':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.studentDetails = valueDes;
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
  PatchedStudentPhoto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatchedStudentPhotoBuilder();
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

