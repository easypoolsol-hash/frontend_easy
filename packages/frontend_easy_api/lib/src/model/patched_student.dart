//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:frontend_easy_api/src/model/school.dart';
import 'package:frontend_easy_api/src/model/bus_basic.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patched_student.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedStudent {
  /// Returns a new [PatchedStudent] instance.
  PatchedStudent({

     this.studentId,

     this.school,

     this.decryptedName,

     this.name,

     this.grade,

     this.section,

     this.assignedBus,

     this.status,

     this.enrollmentDate,

     this.schoolDetails,

     this.busDetails,

     this.parents,

     this.photos,

     this.createdAt,

     this.updatedAt,
  });

  @JsonKey(

    name: r'student_id',
    required: false,
    includeIfNull: false,
  )


  final String? studentId;



  @JsonKey(

    name: r'school',
    required: false,
    includeIfNull: false,
  )


  final String? school;



  @JsonKey(

    name: r'decrypted_name',
    required: false,
    includeIfNull: false,
  )


  final String? decryptedName;



      /// Encrypted at application layer
  @JsonKey(

    name: r'name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



  @JsonKey(

    name: r'grade',
    required: false,
    includeIfNull: false,
  )


  final String? grade;



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


  final PatchedStudentStatusEnum? status;



  @JsonKey(

    name: r'enrollment_date',
    required: false,
    includeIfNull: false,
  )


  final DateTime? enrollmentDate;



  @JsonKey(

    name: r'school_details',
    required: false,
    includeIfNull: false,
  )


  final School? schoolDetails;



  @JsonKey(

    name: r'bus_details',
    required: false,
    includeIfNull: false,
  )


  final BusBasic? busDetails;



  @JsonKey(

    name: r'parents',
    required: false,
    includeIfNull: false,
  )


  final String? parents;



  @JsonKey(

    name: r'photos',
    required: false,
    includeIfNull: false,
  )


  final String? photos;



  @JsonKey(

    name: r'created_at',
    required: false,
    includeIfNull: false,
  )


  final DateTime? createdAt;



  @JsonKey(

    name: r'updated_at',
    required: false,
    includeIfNull: false,
  )


  final DateTime? updatedAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PatchedStudent &&
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

  factory PatchedStudent.fromJson(Map<String, dynamic> json) => _$PatchedStudentFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedStudentToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `active` - Active * `inactive` - Inactive * `suspended` - Suspended
enum PatchedStudentStatusEnum {
    /// * `active` - Active * `inactive` - Inactive * `suspended` - Suspended
@JsonValue(r'active')
active(r'active'),
    /// * `active` - Active * `inactive` - Inactive * `suspended` - Suspended
@JsonValue(r'inactive')
inactive(r'inactive'),
    /// * `active` - Active * `inactive` - Inactive * `suspended` - Suspended
@JsonValue(r'suspended')
suspended(r'suspended');

const PatchedStudentStatusEnum(this.value);

final String value;

@override
String toString() => value;
}
