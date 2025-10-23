//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'patched_student_photo.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedStudentPhoto {
  /// Returns a new [PatchedStudentPhoto] instance.
  PatchedStudentPhoto({

     this.photoId,

     this.student,

     this.photo,

     this.isPrimary,

     this.capturedAt,

     this.studentDetails,

     this.createdAt,
  });

  @JsonKey(
    
    name: r'photo_id',
    required: false,
    includeIfNull: false,
  )


  final String? photoId;



  @JsonKey(
    
    name: r'student',
    required: false,
    includeIfNull: false,
  )


  final String? student;



      /// Student photo file
  @JsonKey(
    
    name: r'photo',
    required: false,
    includeIfNull: false,
  )


  final String? photo;



      /// Primary photo for student
  @JsonKey(
    
    name: r'is_primary',
    required: false,
    includeIfNull: false,
  )


  final bool? isPrimary;



      /// When photo was taken
  @JsonKey(
    
    name: r'captured_at',
    required: false,
    includeIfNull: false,
  )


  final DateTime? capturedAt;



  @JsonKey(
    
    name: r'student_details',
    required: false,
    includeIfNull: false,
  )


  final String? studentDetails;



  @JsonKey(
    
    name: r'created_at',
    required: false,
    includeIfNull: false,
  )


  final DateTime? createdAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PatchedStudentPhoto &&
      other.photoId == photoId &&
      other.student == student &&
      other.photo == photo &&
      other.isPrimary == isPrimary &&
      other.capturedAt == capturedAt &&
      other.studentDetails == studentDetails &&
      other.createdAt == createdAt;

    @override
    int get hashCode =>
        photoId.hashCode +
        student.hashCode +
        (photo == null ? 0 : photo.hashCode) +
        isPrimary.hashCode +
        capturedAt.hashCode +
        studentDetails.hashCode +
        createdAt.hashCode;

  factory PatchedStudentPhoto.fromJson(Map<String, dynamic> json) => _$PatchedStudentPhotoFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedStudentPhotoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

