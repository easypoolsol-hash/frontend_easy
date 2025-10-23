//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StudentPhoto {
  /// Returns a new [StudentPhoto] instance.
  StudentPhoto({
    required this.photoId,
    required this.student,
    this.photo,
    this.isPrimary,
    this.capturedAt,
    required this.studentDetails,
    required this.createdAt,
  });

  String photoId;

  String student;

  /// Student photo file
  String? photo;

  /// Primary photo for student
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPrimary;

  /// When photo was taken
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? capturedAt;

  String studentDetails;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StudentPhoto &&
    other.photoId == photoId &&
    other.student == student &&
    other.photo == photo &&
    other.isPrimary == isPrimary &&
    other.capturedAt == capturedAt &&
    other.studentDetails == studentDetails &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (photoId.hashCode) +
    (student.hashCode) +
    (photo == null ? 0 : photo!.hashCode) +
    (isPrimary == null ? 0 : isPrimary!.hashCode) +
    (capturedAt == null ? 0 : capturedAt!.hashCode) +
    (studentDetails.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'StudentPhoto[photoId=$photoId, student=$student, photo=$photo, isPrimary=$isPrimary, capturedAt=$capturedAt, studentDetails=$studentDetails, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'photo_id'] = this.photoId;
      json[r'student'] = this.student;
    if (this.photo != null) {
      json[r'photo'] = this.photo;
    } else {
      json[r'photo'] = null;
    }
    if (this.isPrimary != null) {
      json[r'is_primary'] = this.isPrimary;
    } else {
      json[r'is_primary'] = null;
    }
    if (this.capturedAt != null) {
      json[r'captured_at'] = this.capturedAt!.toUtc().toIso8601String();
    } else {
      json[r'captured_at'] = null;
    }
      json[r'student_details'] = this.studentDetails;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [StudentPhoto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StudentPhoto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StudentPhoto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StudentPhoto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StudentPhoto(
        photoId: mapValueOfType<String>(json, r'photo_id')!,
        student: mapValueOfType<String>(json, r'student')!,
        photo: mapValueOfType<String>(json, r'photo'),
        isPrimary: mapValueOfType<bool>(json, r'is_primary'),
        capturedAt: mapDateTime(json, r'captured_at', r''),
        studentDetails: mapValueOfType<String>(json, r'student_details')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
      );
    }
    return null;
  }

  static List<StudentPhoto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StudentPhoto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StudentPhoto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StudentPhoto> mapFromJson(dynamic json) {
    final map = <String, StudentPhoto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StudentPhoto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StudentPhoto-objects as value to a dart map
  static Map<String, List<StudentPhoto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StudentPhoto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StudentPhoto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'photo_id',
    'student',
    'student_details',
    'created_at',
  };
}
