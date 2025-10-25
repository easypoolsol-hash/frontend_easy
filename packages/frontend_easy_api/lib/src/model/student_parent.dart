//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:frontend_easy_api/src/model/parent.dart';
import 'package:json_annotation/json_annotation.dart';

part 'student_parent.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class StudentParent {
  /// Returns a new [StudentParent] instance.
  StudentParent({

    required  this.student,

    required  this.parent,

    required  this.relationship,

     this.isPrimary,

    required  this.parentDetails,

    required  this.studentDetails,
  });

  @JsonKey(
    
    name: r'student',
    required: true,
    includeIfNull: false,
  )


  final String student;



  @JsonKey(
    
    name: r'parent',
    required: true,
    includeIfNull: false,
  )


  final String parent;



      /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
  @JsonKey(
    
    name: r'relationship',
    required: true,
    includeIfNull: false,
  )


  final StudentParentRelationshipEnum relationship;



  @JsonKey(
    
    name: r'is_primary',
    required: false,
    includeIfNull: false,
  )


  final bool? isPrimary;



  @JsonKey(
    
    name: r'parent_details',
    required: true,
    includeIfNull: false,
  )


  final Parent parentDetails;



  @JsonKey(
    
    name: r'student_details',
    required: true,
    includeIfNull: false,
  )


  final String studentDetails;





    @override
    bool operator ==(Object other) => identical(this, other) || other is StudentParent &&
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

  factory StudentParent.fromJson(Map<String, dynamic> json) => _$StudentParentFromJson(json);

  Map<String, dynamic> toJson() => _$StudentParentToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
enum StudentParentRelationshipEnum {
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

const StudentParentRelationshipEnum(this.value);

final String value;

@override
String toString() => value;
}


