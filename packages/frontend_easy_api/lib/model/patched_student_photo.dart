//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? photoId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? student;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? studentDetails;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

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
    // ignore: unnecessary_parenthesis
    (photoId == null ? 0 : photoId!.hashCode) +
    (student == null ? 0 : student!.hashCode) +
    (photo == null ? 0 : photo!.hashCode) +
    (isPrimary == null ? 0 : isPrimary!.hashCode) +
    (capturedAt == null ? 0 : capturedAt!.hashCode) +
    (studentDetails == null ? 0 : studentDetails!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode);

  @override
  String toString() => 'PatchedStudentPhoto[photoId=$photoId, student=$student, photo=$photo, isPrimary=$isPrimary, capturedAt=$capturedAt, studentDetails=$studentDetails, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.photoId != null) {
      json[r'photo_id'] = this.photoId;
    } else {
      json[r'photo_id'] = null;
    }
    if (this.student != null) {
      json[r'student'] = this.student;
    } else {
      json[r'student'] = null;
    }
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
    if (this.studentDetails != null) {
      json[r'student_details'] = this.studentDetails;
    } else {
      json[r'student_details'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    return json;
  }

  /// Returns a new [PatchedStudentPhoto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchedStudentPhoto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchedStudentPhoto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchedStudentPhoto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchedStudentPhoto(
        photoId: mapValueOfType<String>(json, r'photo_id'),
        student: mapValueOfType<String>(json, r'student'),
        photo: mapValueOfType<String>(json, r'photo'),
        isPrimary: mapValueOfType<bool>(json, r'is_primary'),
        capturedAt: mapDateTime(json, r'captured_at', r''),
        studentDetails: mapValueOfType<String>(json, r'student_details'),
        createdAt: mapDateTime(json, r'created_at', r''),
      );
    }
    return null;
  }

  static List<PatchedStudentPhoto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchedStudentPhoto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchedStudentPhoto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchedStudentPhoto> mapFromJson(dynamic json) {
    final map = <String, PatchedStudentPhoto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchedStudentPhoto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchedStudentPhoto-objects as value to a dart map
  static Map<String, List<PatchedStudentPhoto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchedStudentPhoto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchedStudentPhoto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

