//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:frontend_easy_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attendance_record.g.dart';

/// Serializer for attendance records
///
/// Properties:
/// * [recordId] - UUID primary key
/// * [student] - Student attendance record
/// * [studentName] 
/// * [studentGrade] 
/// * [date] - Date of attendance record
/// * [morningBoarded] - Whether student boarded in the morning
/// * [morningTime] - Time of morning boarding
/// * [afternoonBoarded] - Whether student boarded in the afternoon
/// * [afternoonTime] - Time of afternoon boarding
/// * [status] - Overall attendance status  * `present` - Present * `absent` - Absent * `partial` - Partial
/// * [createdAt] - When this record was created
@BuiltValue()
abstract class AttendanceRecord implements Built<AttendanceRecord, AttendanceRecordBuilder> {
  /// UUID primary key
  @BuiltValueField(wireName: r'record_id')
  String get recordId;

  /// Student attendance record
  @BuiltValueField(wireName: r'student')
  String get student;

  @BuiltValueField(wireName: r'student_name')
  String get studentName;

  @BuiltValueField(wireName: r'student_grade')
  String get studentGrade;

  /// Date of attendance record
  @BuiltValueField(wireName: r'date')
  Date get date;

  /// Whether student boarded in the morning
  @BuiltValueField(wireName: r'morning_boarded')
  bool? get morningBoarded;

  /// Time of morning boarding
  @BuiltValueField(wireName: r'morning_time')
  DateTime? get morningTime;

  /// Whether student boarded in the afternoon
  @BuiltValueField(wireName: r'afternoon_boarded')
  bool? get afternoonBoarded;

  /// Time of afternoon boarding
  @BuiltValueField(wireName: r'afternoon_time')
  DateTime? get afternoonTime;

  /// Overall attendance status  * `present` - Present * `absent` - Absent * `partial` - Partial
  @BuiltValueField(wireName: r'status')
  AttendanceRecordStatusEnum get status;
  // enum statusEnum {  present,  absent,  partial,  };

  /// When this record was created
  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  AttendanceRecord._();

  factory AttendanceRecord([void updates(AttendanceRecordBuilder b)]) = _$AttendanceRecord;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AttendanceRecordBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AttendanceRecord> get serializer => _$AttendanceRecordSerializer();
}

class _$AttendanceRecordSerializer implements PrimitiveSerializer<AttendanceRecord> {
  @override
  final Iterable<Type> types = const [AttendanceRecord, _$AttendanceRecord];

  @override
  final String wireName = r'AttendanceRecord';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AttendanceRecord object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'record_id';
    yield serializers.serialize(
      object.recordId,
      specifiedType: const FullType(String),
    );
    yield r'student';
    yield serializers.serialize(
      object.student,
      specifiedType: const FullType(String),
    );
    yield r'student_name';
    yield serializers.serialize(
      object.studentName,
      specifiedType: const FullType(String),
    );
    yield r'student_grade';
    yield serializers.serialize(
      object.studentGrade,
      specifiedType: const FullType(String),
    );
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(Date),
    );
    if (object.morningBoarded != null) {
      yield r'morning_boarded';
      yield serializers.serialize(
        object.morningBoarded,
        specifiedType: const FullType(bool),
      );
    }
    if (object.morningTime != null) {
      yield r'morning_time';
      yield serializers.serialize(
        object.morningTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.afternoonBoarded != null) {
      yield r'afternoon_boarded';
      yield serializers.serialize(
        object.afternoonBoarded,
        specifiedType: const FullType(bool),
      );
    }
    if (object.afternoonTime != null) {
      yield r'afternoon_time';
      yield serializers.serialize(
        object.afternoonTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(AttendanceRecordStatusEnum),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AttendanceRecord object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AttendanceRecordBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'record_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.recordId = valueDes;
          break;
        case r'student':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.student = valueDes;
          break;
        case r'student_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.studentName = valueDes;
          break;
        case r'student_grade':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.studentGrade = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.date = valueDes;
          break;
        case r'morning_boarded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.morningBoarded = valueDes;
          break;
        case r'morning_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.morningTime = valueDes;
          break;
        case r'afternoon_boarded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.afternoonBoarded = valueDes;
          break;
        case r'afternoon_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.afternoonTime = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AttendanceRecordStatusEnum),
          ) as AttendanceRecordStatusEnum;
          result.status = valueDes;
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
  AttendanceRecord deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttendanceRecordBuilder();
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

class AttendanceRecordStatusEnum extends EnumClass {

  /// Overall attendance status  * `present` - Present * `absent` - Absent * `partial` - Partial
  @BuiltValueEnumConst(wireName: r'present')
  static const AttendanceRecordStatusEnum present = _$attendanceRecordStatusEnum_present;
  /// Overall attendance status  * `present` - Present * `absent` - Absent * `partial` - Partial
  @BuiltValueEnumConst(wireName: r'absent')
  static const AttendanceRecordStatusEnum absent = _$attendanceRecordStatusEnum_absent;
  /// Overall attendance status  * `present` - Present * `absent` - Absent * `partial` - Partial
  @BuiltValueEnumConst(wireName: r'partial')
  static const AttendanceRecordStatusEnum partial = _$attendanceRecordStatusEnum_partial;

  static Serializer<AttendanceRecordStatusEnum> get serializer => _$attendanceRecordStatusEnumSerializer;

  const AttendanceRecordStatusEnum._(String name): super(name);

  static BuiltSet<AttendanceRecordStatusEnum> get values => _$attendanceRecordStatusEnumValues;
  static AttendanceRecordStatusEnum valueOf(String name) => _$attendanceRecordStatusEnumValueOf(name);
}

