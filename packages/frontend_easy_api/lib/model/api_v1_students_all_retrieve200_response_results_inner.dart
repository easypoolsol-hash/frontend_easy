//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiV1StudentsAllRetrieve200ResponseResultsInner {
  /// Returns a new [ApiV1StudentsAllRetrieve200ResponseResultsInner] instance.
  ApiV1StudentsAllRetrieve200ResponseResultsInner({
    this.schoolStudentId,
    this.studentName,
    this.grade,
    this.busNumber,
    this.routeName,
    this.status,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? schoolStudentId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? studentName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? grade;

  String? busNumber;

  String? routeName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApiV1StudentsAllRetrieve200ResponseResultsInner &&
    other.schoolStudentId == schoolStudentId &&
    other.studentName == studentName &&
    other.grade == grade &&
    other.busNumber == busNumber &&
    other.routeName == routeName &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schoolStudentId == null ? 0 : schoolStudentId!.hashCode) +
    (studentName == null ? 0 : studentName!.hashCode) +
    (grade == null ? 0 : grade!.hashCode) +
    (busNumber == null ? 0 : busNumber!.hashCode) +
    (routeName == null ? 0 : routeName!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'ApiV1StudentsAllRetrieve200ResponseResultsInner[schoolStudentId=$schoolStudentId, studentName=$studentName, grade=$grade, busNumber=$busNumber, routeName=$routeName, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.schoolStudentId != null) {
      json[r'school_student_id'] = this.schoolStudentId;
    } else {
      json[r'school_student_id'] = null;
    }
    if (this.studentName != null) {
      json[r'student_name'] = this.studentName;
    } else {
      json[r'student_name'] = null;
    }
    if (this.grade != null) {
      json[r'grade'] = this.grade;
    } else {
      json[r'grade'] = null;
    }
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
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [ApiV1StudentsAllRetrieve200ResponseResultsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiV1StudentsAllRetrieve200ResponseResultsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ApiV1StudentsAllRetrieve200ResponseResultsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ApiV1StudentsAllRetrieve200ResponseResultsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ApiV1StudentsAllRetrieve200ResponseResultsInner(
        schoolStudentId: mapValueOfType<String>(json, r'school_student_id'),
        studentName: mapValueOfType<String>(json, r'student_name'),
        grade: mapValueOfType<String>(json, r'grade'),
        busNumber: mapValueOfType<String>(json, r'bus_number'),
        routeName: mapValueOfType<String>(json, r'route_name'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<ApiV1StudentsAllRetrieve200ResponseResultsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApiV1StudentsAllRetrieve200ResponseResultsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiV1StudentsAllRetrieve200ResponseResultsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiV1StudentsAllRetrieve200ResponseResultsInner> mapFromJson(dynamic json) {
    final map = <String, ApiV1StudentsAllRetrieve200ResponseResultsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiV1StudentsAllRetrieve200ResponseResultsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiV1StudentsAllRetrieve200ResponseResultsInner-objects as value to a dart map
  static Map<String, List<ApiV1StudentsAllRetrieve200ResponseResultsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ApiV1StudentsAllRetrieve200ResponseResultsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiV1StudentsAllRetrieve200ResponseResultsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

