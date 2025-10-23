//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:frontend_easy_api/src/model/parent.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patched_student_parent.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedStudentParent {
  /// Returns a new [PatchedStudentParent] instance.
  PatchedStudentParent({

     this.student,

     this.parent,

     this.relationship,

     this.isPrimary,

     this.parentDetails,

     this.studentDetails,
  });

  @JsonKey(

    name: r'student',
    required: false,
    includeIfNull: false,
  )


  final String? student;



  @JsonKey(

    name: r'parent',
    required: false,
    includeIfNull: false,
  )


  final String? parent;



      /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
  @JsonKey(

    name: r'relationship',
    required: false,
    includeIfNull: false,
  )


  final PatchedStudentParentRelationshipEnum? relationship;



  @JsonKey(

    name: r'is_primary',
    required: false,
    includeIfNull: false,
  )


  final bool? isPrimary;



  @JsonKey(

    name: r'parent_details',
    required: false,
    includeIfNull: false,
  )


  final Parent? parentDetails;



  @JsonKey(

    name: r'student_details',
    required: false,
    includeIfNull: false,
  )


  final String? studentDetails;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PatchedStudentParent &&
      other.student == student &&
      other.parent == parent &&
      other.relationship == relationship &&
      other.isPrimary == isPrimary &&
      other.parentDetails == parentDetails &&
      other.studentDetails == studentDetails;

    @override
    int get hashCode =>
        student.hashCode +
        parent.hashCode +
        relationship.hashCode +
        isPrimary.hashCode +
        parentDetails.hashCode +
        studentDetails.hashCode;

  factory PatchedStudentParent.fromJson(Map<String, dynamic> json) => _$PatchedStudentParentFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedStudentParentToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
enum PatchedStudentParentRelationshipEnum {
    /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
@JsonValue(r'mother')
mother(r'mother'),
    /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
@JsonValue(r'father')
father(r'father'),
    /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
@JsonValue(r'guardian')
guardian(r'guardian'),
    /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
@JsonValue(r'grandparent')
grandparent(r'grandparent'),
    /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
@JsonValue(r'other')
other(r'other');

const PatchedStudentParentRelationshipEnum(this.value);

final String value;

@override
String toString() => value;
}
