//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'patched_school.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedSchool {
  /// Returns a new [PatchedSchool] instance.
  PatchedSchool({

     this.schoolId,

     this.name,

     this.createdAt,
  });

  @JsonKey(
    
    name: r'school_id',
    required: false,
    includeIfNull: false,
  )


  final String? schoolId;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



  @JsonKey(
    
    name: r'created_at',
    required: false,
    includeIfNull: false,
  )


  final DateTime? createdAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PatchedSchool &&
      other.schoolId == schoolId &&
      other.name == name &&
      other.createdAt == createdAt;

    @override
    int get hashCode =>
        schoolId.hashCode +
        name.hashCode +
        createdAt.hashCode;

  factory PatchedSchool.fromJson(Map<String, dynamic> json) => _$PatchedSchoolFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedSchoolToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

