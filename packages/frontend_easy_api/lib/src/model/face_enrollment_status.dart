//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'face_enrollment_status.g.dart';

/// Serializer for checking enrollment status
///
/// Properties:
/// * [enrollmentId] 
/// * [status] - Approval status  * `pending_approval` - Pending Approval * `approved` - Approved * `rejected` - Rejected
/// * [photoCount] - Number of photos in this enrollment
/// * [submittedAt] - When parent submitted enrollment
/// * [reviewedAt] - When enrollment was reviewed
@BuiltValue()
abstract class FaceEnrollmentStatus implements Built<FaceEnrollmentStatus, FaceEnrollmentStatusBuilder> {
  @BuiltValueField(wireName: r'enrollment_id')
  String get enrollmentId;

  /// Approval status  * `pending_approval` - Pending Approval * `approved` - Approved * `rejected` - Rejected
  @BuiltValueField(wireName: r'status')
  FaceEnrollmentStatusStatusEnum get status;
  // enum statusEnum {  pending_approval,  approved,  rejected,  };

  /// Number of photos in this enrollment
  @BuiltValueField(wireName: r'photo_count')
  int get photoCount;

  /// When parent submitted enrollment
  @BuiltValueField(wireName: r'submitted_at')
  DateTime get submittedAt;

  /// When enrollment was reviewed
  @BuiltValueField(wireName: r'reviewed_at')
  DateTime? get reviewedAt;

  FaceEnrollmentStatus._();

  factory FaceEnrollmentStatus([void updates(FaceEnrollmentStatusBuilder b)]) = _$FaceEnrollmentStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FaceEnrollmentStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FaceEnrollmentStatus> get serializer => _$FaceEnrollmentStatusSerializer();
}

class _$FaceEnrollmentStatusSerializer implements PrimitiveSerializer<FaceEnrollmentStatus> {
  @override
  final Iterable<Type> types = const [FaceEnrollmentStatus, _$FaceEnrollmentStatus];

  @override
  final String wireName = r'FaceEnrollmentStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FaceEnrollmentStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'enrollment_id';
    yield serializers.serialize(
      object.enrollmentId,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(FaceEnrollmentStatusStatusEnum),
    );
    yield r'photo_count';
    yield serializers.serialize(
      object.photoCount,
      specifiedType: const FullType(int),
    );
    yield r'submitted_at';
    yield serializers.serialize(
      object.submittedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.reviewedAt != null) {
      yield r'reviewed_at';
      yield serializers.serialize(
        object.reviewedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FaceEnrollmentStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FaceEnrollmentStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enrollment_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.enrollmentId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FaceEnrollmentStatusStatusEnum),
          ) as FaceEnrollmentStatusStatusEnum;
          result.status = valueDes;
          break;
        case r'photo_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.photoCount = valueDes;
          break;
        case r'submitted_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.submittedAt = valueDes;
          break;
        case r'reviewed_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.reviewedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FaceEnrollmentStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FaceEnrollmentStatusBuilder();
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

class FaceEnrollmentStatusStatusEnum extends EnumClass {

  /// Approval status  * `pending_approval` - Pending Approval * `approved` - Approved * `rejected` - Rejected
  @BuiltValueEnumConst(wireName: r'pending_approval')
  static const FaceEnrollmentStatusStatusEnum pendingApproval = _$faceEnrollmentStatusStatusEnum_pendingApproval;
  /// Approval status  * `pending_approval` - Pending Approval * `approved` - Approved * `rejected` - Rejected
  @BuiltValueEnumConst(wireName: r'approved')
  static const FaceEnrollmentStatusStatusEnum approved = _$faceEnrollmentStatusStatusEnum_approved;
  /// Approval status  * `pending_approval` - Pending Approval * `approved` - Approved * `rejected` - Rejected
  @BuiltValueEnumConst(wireName: r'rejected')
  static const FaceEnrollmentStatusStatusEnum rejected = _$faceEnrollmentStatusStatusEnum_rejected;

  static Serializer<FaceEnrollmentStatusStatusEnum> get serializer => _$faceEnrollmentStatusStatusEnumSerializer;

  const FaceEnrollmentStatusStatusEnum._(String name): super(name);

  static BuiltSet<FaceEnrollmentStatusStatusEnum> get values => _$faceEnrollmentStatusStatusEnumValues;
  static FaceEnrollmentStatusStatusEnum valueOf(String name) => _$faceEnrollmentStatusStatusEnumValueOf(name);
}

