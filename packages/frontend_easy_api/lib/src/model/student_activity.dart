//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:frontend_easy_api/src/model/boarding_event_nested.dart';
import 'package:json_annotation/json_annotation.dart';

part 'student_activity.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class StudentActivity {
  /// Returns a new [StudentActivity] instance.
  StudentActivity({

    required  this.schoolStudentId,

    required  this.studentName,

    required  this.grade,

     this.busNumber,

     this.routeName,

    required  this.events,

    required  this.eventCount,
  });

      /// School-provided student ID (e.g., STU-2024-001)
  @JsonKey(
    
    name: r'school_student_id',
    required: true,
    includeIfNull: false,
  )


  final String schoolStudentId;



      /// Student name (decrypted by backend)
  @JsonKey(
    
    name: r'student_name',
    required: true,
    includeIfNull: false,
  )


  final String studentName;



      /// Student grade
  @JsonKey(
    
    name: r'grade',
    required: true,
    includeIfNull: false,
  )


  final String grade;



      /// Bus license plate
  @JsonKey(
    
    name: r'bus_number',
    required: false,
    includeIfNull: false,
  )


  final String? busNumber;



      /// Route name
  @JsonKey(
    
    name: r'route_name',
    required: false,
    includeIfNull: false,
  )


  final String? routeName;



      /// All boarding events for this student today
  @JsonKey(
    
    name: r'events',
    required: true,
    includeIfNull: false,
  )


  final List<BoardingEventNested> events;



      /// Number of events today
  @JsonKey(
    
    name: r'event_count',
    required: true,
    includeIfNull: false,
  )


  final int eventCount;





    @override
    bool operator ==(Object other) => identical(this, other) || other is StudentActivity &&
      other.schoolStudentId == schoolStudentId &&
      other.studentName == studentName &&
      other.grade == grade &&
      other.busNumber == busNumber &&
      other.routeName == routeName &&
      other.events == events &&
      other.eventCount == eventCount;

    @override
    int get hashCode =>
        schoolStudentId.hashCode +
        studentName.hashCode +
        grade.hashCode +
        (busNumber == null ? 0 : busNumber.hashCode) +
        (routeName == null ? 0 : routeName.hashCode) +
        events.hashCode +
        eventCount.hashCode;

  factory StudentActivity.fromJson(Map<String, dynamic> json) => _$StudentActivityFromJson(json);

  Map<String, dynamic> toJson() => _$StudentActivityToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

