//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:frontend_easy_api/src/model/student_photo.dart';
import 'package:json_annotation/json_annotation.dart';

part 'paginated_student_photo_list.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PaginatedStudentPhotoList {
  /// Returns a new [PaginatedStudentPhotoList] instance.
  PaginatedStudentPhotoList({

    required  this.count,

     this.next,

     this.previous,

    required  this.results,
  });

  @JsonKey(
    
    name: r'count',
    required: true,
    includeIfNull: false,
  )


  final int count;



  @JsonKey(
    
    name: r'next',
    required: false,
    includeIfNull: false,
  )


  final String? next;



  @JsonKey(
    
    name: r'previous',
    required: false,
    includeIfNull: false,
  )


  final String? previous;



  @JsonKey(
    
    name: r'results',
    required: true,
    includeIfNull: false,
  )


  final List<StudentPhoto> results;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PaginatedStudentPhotoList &&
      other.count == count &&
      other.next == next &&
      other.previous == previous &&
      other.results == results;

    @override
    int get hashCode =>
        count.hashCode +
        (next == null ? 0 : next.hashCode) +
        (previous == null ? 0 : previous.hashCode) +
        results.hashCode;

  factory PaginatedStudentPhotoList.fromJson(Map<String, dynamic> json) => _$PaginatedStudentPhotoListFromJson(json);

  Map<String, dynamic> toJson() => _$PaginatedStudentPhotoListToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

