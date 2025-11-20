//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Student {
  /// Returns a new [Student] instance.
  Student({
    required this.studentId,
    required this.school,
    required this.schoolStudentId,
    required this.decryptedName,
    required this.grade,
    this.section,
    this.addressLatitude,
    this.addressLongitude,
    this.assignedBus,
    this.status,
    this.enrollmentDate,
    required this.schoolDetails,
    required this.busDetails,
    this.parents = const [],
    this.photos = const [],
    required this.createdAt,
    required this.updatedAt,
  });

  String studentId;

  String school;

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

  /// Student home address latitude
  double? addressLatitude;

  /// Student home address longitude
  double? addressLongitude;

  /// UUID primary key
  String? assignedBus;

  /// * `active` - Active * `inactive` - Inactive * `suspended` - Suspended
  StudentStatusEnum? status;

  /// Date student enrolled in school
  DateTime? enrollmentDate;

  School schoolDetails;

  BusBasic? busDetails;

  List<StudentParent>? parents;

  List<StudentPhoto>? photos;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Student &&
    other.studentId == studentId &&
    other.school == school &&
    other.schoolStudentId == schoolStudentId &&
    other.decryptedName == decryptedName &&
    other.grade == grade &&
    other.section == section &&
    other.addressLatitude == addressLatitude &&
    other.addressLongitude == addressLongitude &&
    other.assignedBus == assignedBus &&
    other.status == status &&
    other.enrollmentDate == enrollmentDate &&
    other.schoolDetails == schoolDetails &&
    other.busDetails == busDetails &&
    _deepEquality.equals(other.parents, parents) &&
    _deepEquality.equals(other.photos, photos) &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (studentId.hashCode) +
    (school.hashCode) +
    (schoolStudentId.hashCode) +
    (decryptedName.hashCode) +
    (grade.hashCode) +
    (section == null ? 0 : section!.hashCode) +
    (addressLatitude == null ? 0 : addressLatitude!.hashCode) +
    (addressLongitude == null ? 0 : addressLongitude!.hashCode) +
    (assignedBus == null ? 0 : assignedBus!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (enrollmentDate == null ? 0 : enrollmentDate!.hashCode) +
    (schoolDetails.hashCode) +
    (busDetails == null ? 0 : busDetails!.hashCode) +
    (parents == null ? 0 : parents!.hashCode) +
    (photos == null ? 0 : photos!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'Student[studentId=$studentId, school=$school, schoolStudentId=$schoolStudentId, decryptedName=$decryptedName, grade=$grade, section=$section, addressLatitude=$addressLatitude, addressLongitude=$addressLongitude, assignedBus=$assignedBus, status=$status, enrollmentDate=$enrollmentDate, schoolDetails=$schoolDetails, busDetails=$busDetails, parents=$parents, photos=$photos, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'student_id'] = this.studentId;
      json[r'school'] = this.school;
      json[r'school_student_id'] = this.schoolStudentId;
      json[r'decrypted_name'] = this.decryptedName;
      json[r'grade'] = this.grade;
    if (this.section != null) {
      json[r'section'] = this.section;
    } else {
      json[r'section'] = null;
    }
    if (this.addressLatitude != null) {
      json[r'address_latitude'] = this.addressLatitude;
    } else {
      json[r'address_latitude'] = null;
    }
    if (this.addressLongitude != null) {
      json[r'address_longitude'] = this.addressLongitude;
    } else {
      json[r'address_longitude'] = null;
    }
    if (this.assignedBus != null) {
      json[r'assigned_bus'] = this.assignedBus;
    } else {
      json[r'assigned_bus'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.enrollmentDate != null) {
      json[r'enrollment_date'] = _dateFormatter.format(this.enrollmentDate!.toUtc());
    } else {
      json[r'enrollment_date'] = null;
    }
      json[r'school_details'] = this.schoolDetails;
    if (this.busDetails != null) {
      json[r'bus_details'] = this.busDetails;
    } else {
      json[r'bus_details'] = null;
    }
    if (this.parents != null) {
      json[r'parents'] = this.parents;
    } else {
      json[r'parents'] = null;
    }
    if (this.photos != null) {
      json[r'photos'] = this.photos;
    } else {
      json[r'photos'] = null;
    }
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'updated_at'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [Student] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Student? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Student[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Student[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Student(
        studentId: mapValueOfType<String>(json, r'student_id')!,
        school: mapValueOfType<String>(json, r'school')!,
        schoolStudentId: mapValueOfType<String>(json, r'school_student_id')!,
        decryptedName: mapValueOfType<String>(json, r'decrypted_name')!,
        grade: mapValueOfType<String>(json, r'grade')!,
        section: mapValueOfType<String>(json, r'section'),
        addressLatitude: mapValueOfType<double>(json, r'address_latitude'),
        addressLongitude: mapValueOfType<double>(json, r'address_longitude'),
        assignedBus: mapValueOfType<String>(json, r'assigned_bus'),
        status: StudentStatusEnum.fromJson(json[r'status']),
        enrollmentDate: mapDateTime(json, r'enrollment_date', r''),
        schoolDetails: School.fromJson(json[r'school_details'])!,
        busDetails: BusBasic.fromJson(json[r'bus_details']),
        parents: StudentParent.listFromJson(json[r'parents']),
        photos: StudentPhoto.listFromJson(json[r'photos']),
        createdAt: mapDateTime(json, r'created_at', r'')!,
        updatedAt: mapDateTime(json, r'updated_at', r'')!,
      );
    }
    return null;
  }

  static List<Student> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Student>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Student.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Student> mapFromJson(dynamic json) {
    final map = <String, Student>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Student.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Student-objects as value to a dart map
  static Map<String, List<Student>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Student>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Student.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'student_id',
    'school',
    'school_student_id',
    'decrypted_name',
    'grade',
    'school_details',
    'bus_details',
    'parents',
    'photos',
    'created_at',
    'updated_at',
  };
}

/// * `active` - Active * `inactive` - Inactive * `suspended` - Suspended
class StudentStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const StudentStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = StudentStatusEnum._(r'active');
  static const inactive = StudentStatusEnum._(r'inactive');
  static const suspended = StudentStatusEnum._(r'suspended');

  /// List of all possible values in this [enum][StudentStatusEnum].
  static const values = <StudentStatusEnum>[
    active,
    inactive,
    suspended,
  ];

  static StudentStatusEnum? fromJson(dynamic value) => StudentStatusEnumTypeTransformer().decode(value);

  static List<StudentStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StudentStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StudentStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StudentStatusEnum] to String,
/// and [decode] dynamic data back to [StudentStatusEnum].
class StudentStatusEnumTypeTransformer {
  factory StudentStatusEnumTypeTransformer() => _instance ??= const StudentStatusEnumTypeTransformer._();

  const StudentStatusEnumTypeTransformer._();

  String encode(StudentStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a StudentStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StudentStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'active': return StudentStatusEnum.active;
        case r'inactive': return StudentStatusEnum.inactive;
        case r'suspended': return StudentStatusEnum.suspended;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StudentStatusEnumTypeTransformer] instance.
  static StudentStatusEnumTypeTransformer? _instance;
}


