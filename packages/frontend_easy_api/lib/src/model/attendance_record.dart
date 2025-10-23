//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'attendance_record.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AttendanceRecord {
  /// Returns a new [AttendanceRecord] instance.
  AttendanceRecord({

    required  this.recordId,

    required  this.student,

    required  this.studentName,

    required  this.studentGrade,

    required  this.date,

     this.morningBoarded,

     this.morningTime,

     this.afternoonBoarded,

     this.afternoonTime,

    required  this.status,

    required  this.createdAt,
  });

      /// UUID primary key
  @JsonKey(
    
    name: r'record_id',
    required: true,
    includeIfNull: false,
  )


  final String recordId;



      /// Student attendance record
  @JsonKey(
    
    name: r'student',
    required: true,
    includeIfNull: false,
  )


  final String student;



  @JsonKey(
    
    name: r'student_name',
    required: true,
    includeIfNull: false,
  )


  final String studentName;



  @JsonKey(
    
    name: r'student_grade',
    required: true,
    includeIfNull: false,
  )


  final String studentGrade;



      /// Date of attendance record
  @JsonKey(
    
    name: r'date',
    required: true,
    includeIfNull: false,
  )


  final DateTime date;



      /// Whether student boarded in the morning
  @JsonKey(
    
    name: r'morning_boarded',
    required: false,
    includeIfNull: false,
  )


  final bool? morningBoarded;



      /// Time of morning boarding
  @JsonKey(
    
    name: r'morning_time',
    required: false,
    includeIfNull: false,
  )


  final DateTime? morningTime;



      /// Whether student boarded in the afternoon
  @JsonKey(
    
    name: r'afternoon_boarded',
    required: false,
    includeIfNull: false,
  )


  final bool? afternoonBoarded;



      /// Time of afternoon boarding
  @JsonKey(
    
    name: r'afternoon_time',
    required: false,
    includeIfNull: false,
  )


  final DateTime? afternoonTime;



      /// Overall attendance status  * `present` - Present * `absent` - Absent * `partial` - Partial
  @JsonKey(
    
    name: r'status',
    required: true,
    includeIfNull: false,
  )


  final AttendanceRecordStatusEnum status;



      /// When this record was created
  @JsonKey(
    
    name: r'created_at',
    required: true,
    includeIfNull: false,
  )


  final DateTime createdAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AttendanceRecord &&
      other.recordId == recordId &&
      other.student == student &&
      other.studentName == studentName &&
      other.studentGrade == studentGrade &&
      other.date == date &&
      other.morningBoarded == morningBoarded &&
      other.morningTime == morningTime &&
      other.afternoonBoarded == afternoonBoarded &&
      other.afternoonTime == afternoonTime &&
      other.status == status &&
      other.createdAt == createdAt;

    @override
    int get hashCode =>
        recordId.hashCode +
        student.hashCode +
        studentName.hashCode +
        studentGrade.hashCode +
        date.hashCode +
        morningBoarded.hashCode +
        (morningTime == null ? 0 : morningTime.hashCode) +
        afternoonBoarded.hashCode +
        (afternoonTime == null ? 0 : afternoonTime.hashCode) +
        status.hashCode +
        createdAt.hashCode;

  factory AttendanceRecord.fromJson(Map<String, dynamic> json) => _$AttendanceRecordFromJson(json);

  Map<String, dynamic> toJson() => _$AttendanceRecordToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// Overall attendance status  * `present` - Present * `absent` - Absent * `partial` - Partial
enum AttendanceRecordStatusEnum {
    /// Overall attendance status  * `present` - Present * `absent` - Absent * `partial` - Partial
@JsonValue(r'present')
present(r'present'),
    /// Overall attendance status  * `present` - Present * `absent` - Absent * `partial` - Partial
@JsonValue(r'absent')
absent(r'absent'),
    /// Overall attendance status  * `present` - Present * `absent` - Absent * `partial` - Partial
@JsonValue(r'partial')
partial(r'partial');

const AttendanceRecordStatusEnum(this.value);

final String value;

@override
String toString() => value;
}


