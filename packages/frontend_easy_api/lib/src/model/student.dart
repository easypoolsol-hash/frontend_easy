//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:frontend_easy_api/src/model/school.dart';
import 'package:frontend_easy_api/src/model/bus_basic.dart';
import 'package:json_annotation/json_annotation.dart';

part 'student.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Student {
  /// Returns a new [Student] instance.
  Student({

    required  this.studentId,

    required  this.school,

    required  this.decryptedName,

    required  this.name,

    required  this.grade,

     this.section,

     this.assignedBus,

     this.status,

    required  this.enrollmentDate,

    required  this.schoolDetails,

    required  this.busDetails,

    required  this.parents,

    required  this.photos,

    required  this.createdAt,

    required  this.updatedAt,
  });

  @JsonKey(
    
    name: r'student_id',
    required: true,
    includeIfNull: false,
  )


  final String studentId;



  @JsonKey(
    
    name: r'school',
    required: true,
    includeIfNull: false,
  )


  final String school;



  @JsonKey(
    
    name: r'decrypted_name',
    required: true,
    includeIfNull: false,
  )


  final String decryptedName;



      /// Encrypted at application layer
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



  @JsonKey(
    
    name: r'grade',
    required: true,
    includeIfNull: false,
  )


  final String grade;



  @JsonKey(
    
    name: r'section',
    required: false,
    includeIfNull: false,
  )


  final String? section;



      /// UUID primary key
  @JsonKey(
    
    name: r'assigned_bus',
    required: false,
    includeIfNull: false,
  )


  final String? assignedBus;



      /// * `active` - Active * `inactive` - Inactive * `suspended` - Suspended
  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false,
  )


  final StudentStatusEnum? status;



  @JsonKey(
    
    name: r'enrollment_date',
    required: true,
    includeIfNull: false,
  )


  final DateTime enrollmentDate;



  @JsonKey(
    
    name: r'school_details',
    required: true,
    includeIfNull: false,
  )


  final School schoolDetails;



  @JsonKey(
    
    name: r'bus_details',
    required: true,
    includeIfNull: false,
  )


  final BusBasic busDetails;



  @JsonKey(
    
    name: r'parents',
    required: true,
    includeIfNull: false,
  )


  final String parents;



  @JsonKey(
    
    name: r'photos',
    required: true,
    includeIfNull: false,
  )


  final String photos;



  @JsonKey(
    
    name: r'created_at',
    required: true,
    includeIfNull: false,
  )


  final DateTime createdAt;



  @JsonKey(
    
    name: r'updated_at',
    required: true,
    includeIfNull: false,
  )


  final DateTime updatedAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is Student &&
      other.studentId == studentId &&
      other.school == school &&
      other.decryptedName == decryptedName &&
      other.name == name &&
      other.grade == grade &&
      other.section == section &&
      other.assignedBus == assignedBus &&
      other.status == status &&
      other.enrollmentDate == enrollmentDate &&
      other.schoolDetails == schoolDetails &&
      other.busDetails == busDetails &&
      other.parents == parents &&
      other.photos == photos &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt;

    @override
    int get hashCode =>
        studentId.hashCode +
        school.hashCode +
        decryptedName.hashCode +
        name.hashCode +
        grade.hashCode +
        section.hashCode +
        (assignedBus == null ? 0 : assignedBus.hashCode) +
        status.hashCode +
        enrollmentDate.hashCode +
        schoolDetails.hashCode +
        busDetails.hashCode +
        parents.hashCode +
        photos.hashCode +
        createdAt.hashCode +
        updatedAt.hashCode;

  factory Student.fromJson(Map<String, dynamic> json) => _$StudentFromJson(json);

  Map<String, dynamic> toJson() => _$StudentToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `active` - Active * `inactive` - Inactive * `suspended` - Suspended
enum StudentStatusEnum {
    /// * `active` - Active * `inactive` - Inactive * `suspended` - Suspended
@JsonValue(r'active')
active(r'active'),
    /// * `active` - Active * `inactive` - Inactive * `suspended` - Suspended
@JsonValue(r'inactive')
inactive(r'inactive'),
    /// * `active` - Active * `inactive` - Inactive * `suspended` - Suspended
@JsonValue(r'suspended')
suspended(r'suspended');

const StudentStatusEnum(this.value);

final String value;

@override
String toString() => value;
}


