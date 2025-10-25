//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:frontend_easy_api/src/model/student_activity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dashboard_students_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DashboardStudentsResponse {
  /// Returns a new [DashboardStudentsResponse] instance.
  DashboardStudentsResponse({

    required  this.count,

    required  this.next,

    required  this.previous,

    required  this.results,
  });

      /// Total number of students with events
  @JsonKey(
    
    name: r'count',
    required: true,
    includeIfNull: false,
  )


  final int count;



      /// Has next page
  @JsonKey(
    
    name: r'next',
    required: true,
    includeIfNull: false,
  )


  final bool next;



      /// Has previous page
  @JsonKey(
    
    name: r'previous',
    required: true,
    includeIfNull: false,
  )


  final bool previous;



      /// List of students
  @JsonKey(
    
    name: r'results',
    required: true,
    includeIfNull: false,
  )


  final List<StudentActivity> results;





    @override
    bool operator ==(Object other) => identical(this, other) || other is DashboardStudentsResponse &&
      other.count == count &&
      other.next == next &&
      other.previous == previous &&
      other.results == results;

    @override
    int get hashCode =>
        count.hashCode +
        next.hashCode +
        previous.hashCode +
        results.hashCode;

  factory DashboardStudentsResponse.fromJson(Map<String, dynamic> json) => _$DashboardStudentsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DashboardStudentsResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

