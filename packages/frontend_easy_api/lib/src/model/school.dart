//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'school.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class School {
  /// Returns a new [School] instance.
  School({

    required  this.schoolId,

    required  this.name,

    required  this.createdAt,
  });

  @JsonKey(

    name: r'school_id',
    required: true,
    includeIfNull: false,
  )


  final String schoolId;



  @JsonKey(

    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



  @JsonKey(

    name: r'created_at',
    required: true,
    includeIfNull: false,
  )


  final DateTime createdAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is School &&
      other.schoolId == schoolId &&
      other.name == name &&
      other.createdAt == createdAt;

    @override
    int get hashCode =>
        schoolId.hashCode +
        name.hashCode +
        createdAt.hashCode;

  factory School.fromJson(Map<String, dynamic> json) => _$SchoolFromJson(json);

  Map<String, dynamic> toJson() => _$SchoolToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}
