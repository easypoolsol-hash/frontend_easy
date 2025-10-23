//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:frontend_easy_api/src/model/attendance_record.dart';
import 'package:json_annotation/json_annotation.dart';

part 'paginated_attendance_record_list.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PaginatedAttendanceRecordList {
  /// Returns a new [PaginatedAttendanceRecordList] instance.
  PaginatedAttendanceRecordList({

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


  final List<AttendanceRecord> results;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PaginatedAttendanceRecordList &&
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

  factory PaginatedAttendanceRecordList.fromJson(Map<String, dynamic> json) => _$PaginatedAttendanceRecordListFromJson(json);

  Map<String, dynamic> toJson() => _$PaginatedAttendanceRecordListToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}
