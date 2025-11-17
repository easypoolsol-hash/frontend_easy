//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StudentList {
  /// Returns a new [StudentList] instance.
  StudentList({
    required this.studentId,
    required this.schoolStudentId,
    required this.decryptedName,
    required this.grade,
    this.section,
    required this.primaryParentName,
    required this.primaryParentPhone,
    required this.busNumber,
    this.status,
  });

  String studentId;

  /// School-provided student ID (e.g., STU-2024-001)
  String schoolStudentId;

  String decryptedName;

  String grade;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? section;

  String primaryParentName;

  String primaryParentPhone;

  String busNumber;

  /// * `active` - Active * `inactive` - Inactive * `suspended` - Suspended
  StudentListStatusEnum? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StudentList &&
    other.studentId == studentId &&
    other.schoolStudentId == schoolStudentId &&
    other.decryptedName == decryptedName &&
    other.grade == grade &&
    other.section == section &&
    other.primaryParentName == primaryParentName &&
    other.primaryParentPhone == primaryParentPhone &&
    other.busNumber == busNumber &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (studentId.hashCode) +
    (schoolStudentId.hashCode) +
    (decryptedName.hashCode) +
    (grade.hashCode) +
    (section == null ? 0 : section!.hashCode) +
    (primaryParentName.hashCode) +
    (primaryParentPhone.hashCode) +
    (busNumber.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'StudentList[studentId=$studentId, schoolStudentId=$schoolStudentId, decryptedName=$decryptedName, grade=$grade, section=$section, primaryParentName=$primaryParentName, primaryParentPhone=$primaryParentPhone, busNumber=$busNumber, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'student_id'] = this.studentId;
      json[r'school_student_id'] = this.schoolStudentId;
      json[r'decrypted_name'] = this.decryptedName;
      json[r'grade'] = this.grade;
    if (this.section != null) {
      json[r'section'] = this.section;
    } else {
      json[r'section'] = null;
    }
      json[r'primary_parent_name'] = this.primaryParentName;
      json[r'primary_parent_phone'] = this.primaryParentPhone;
      json[r'bus_number'] = this.busNumber;
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [StudentList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StudentList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StudentList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StudentList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StudentList(
        studentId: mapValueOfType<String>(json, r'student_id')!,
        schoolStudentId: mapValueOfType<String>(json, r'school_student_id')!,
        decryptedName: mapValueOfType<String>(json, r'decrypted_name')!,
        grade: mapValueOfType<String>(json, r'grade')!,
        section: mapValueOfType<String>(json, r'section'),
        primaryParentName: mapValueOfType<String>(json, r'primary_parent_name')!,
        primaryParentPhone: mapValueOfType<String>(json, r'primary_parent_phone')!,
        busNumber: mapValueOfType<String>(json, r'bus_number')!,
        status: StudentListStatusEnum.fromJson(json[r'status']),
      );
    }
    return null;
  }

  static List<StudentList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StudentList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StudentList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StudentList> mapFromJson(dynamic json) {
    final map = <String, StudentList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StudentList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StudentList-objects as value to a dart map
  static Map<String, List<StudentList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StudentList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StudentList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'student_id',
    'school_student_id',
    'decrypted_name',
    'grade',
    'primary_parent_name',
    'primary_parent_phone',
    'bus_number',
  };
}

/// * `active` - Active * `inactive` - Inactive * `suspended` - Suspended
class StudentListStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const StudentListStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = StudentListStatusEnum._(r'active');
  static const inactive = StudentListStatusEnum._(r'inactive');
  static const suspended = StudentListStatusEnum._(r'suspended');

  /// List of all possible values in this [enum][StudentListStatusEnum].
  static const values = <StudentListStatusEnum>[
    active,
    inactive,
    suspended,
  ];

  static StudentListStatusEnum? fromJson(dynamic value) => StudentListStatusEnumTypeTransformer().decode(value);

  static List<StudentListStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StudentListStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StudentListStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StudentListStatusEnum] to String,
/// and [decode] dynamic data back to [StudentListStatusEnum].
class StudentListStatusEnumTypeTransformer {
  factory StudentListStatusEnumTypeTransformer() => _instance ??= const StudentListStatusEnumTypeTransformer._();

  const StudentListStatusEnumTypeTransformer._();

  String encode(StudentListStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a StudentListStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StudentListStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'active': return StudentListStatusEnum.active;
        case r'inactive': return StudentListStatusEnum.inactive;
        case r'suspended': return StudentListStatusEnum.suspended;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StudentListStatusEnumTypeTransformer] instance.
  static StudentListStatusEnumTypeTransformer? _instance;
}


