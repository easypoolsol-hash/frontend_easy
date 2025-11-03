//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StudentActivity {
  /// Returns a new [StudentActivity] instance.
  StudentActivity({
    required this.schoolStudentId,
    required this.studentName,
    required this.grade,
    this.busNumber,
    this.routeName,
    this.events = const [],
    required this.eventCount,
  });

  /// School-provided student ID (e.g., STU-2024-001)
  String schoolStudentId;

  /// Student name (decrypted by backend)
  String studentName;

  /// Student grade
  String grade;

  /// Bus license plate
  String? busNumber;

  /// Route name
  String? routeName;

  /// All boarding events for this student today
  List<BoardingEventNested> events;

  /// Number of events today
  int eventCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StudentActivity &&
    other.schoolStudentId == schoolStudentId &&
    other.studentName == studentName &&
    other.grade == grade &&
    other.busNumber == busNumber &&
    other.routeName == routeName &&
    _deepEquality.equals(other.events, events) &&
    other.eventCount == eventCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schoolStudentId.hashCode) +
    (studentName.hashCode) +
    (grade.hashCode) +
    (busNumber == null ? 0 : busNumber!.hashCode) +
    (routeName == null ? 0 : routeName!.hashCode) +
    (events.hashCode) +
    (eventCount.hashCode);

  @override
  String toString() => 'StudentActivity[schoolStudentId=$schoolStudentId, studentName=$studentName, grade=$grade, busNumber=$busNumber, routeName=$routeName, events=$events, eventCount=$eventCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'school_student_id'] = this.schoolStudentId;
      json[r'student_name'] = this.studentName;
      json[r'grade'] = this.grade;
    if (this.busNumber != null) {
      json[r'bus_number'] = this.busNumber;
    } else {
      json[r'bus_number'] = null;
    }
    if (this.routeName != null) {
      json[r'route_name'] = this.routeName;
    } else {
      json[r'route_name'] = null;
    }
      json[r'events'] = this.events;
      json[r'event_count'] = this.eventCount;
    return json;
  }

  /// Returns a new [StudentActivity] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StudentActivity? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StudentActivity[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StudentActivity[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StudentActivity(
        schoolStudentId: mapValueOfType<String>(json, r'school_student_id')!,
        studentName: mapValueOfType<String>(json, r'student_name')!,
        grade: mapValueOfType<String>(json, r'grade')!,
        busNumber: mapValueOfType<String>(json, r'bus_number'),
        routeName: mapValueOfType<String>(json, r'route_name'),
        events: BoardingEventNested.listFromJson(json[r'events']),
        eventCount: mapValueOfType<int>(json, r'event_count')!,
      );
    }
    return null;
  }

  static List<StudentActivity> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StudentActivity>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StudentActivity.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StudentActivity> mapFromJson(dynamic json) {
    final map = <String, StudentActivity>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StudentActivity.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StudentActivity-objects as value to a dart map
  static Map<String, List<StudentActivity>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StudentActivity>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StudentActivity.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'school_student_id',
    'student_name',
    'grade',
    'events',
    'event_count',
  };
}

