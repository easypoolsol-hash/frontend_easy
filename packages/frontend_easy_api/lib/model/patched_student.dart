//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PatchedStudent {
  /// Returns a new [PatchedStudent] instance.
  PatchedStudent({
    this.studentId,
    this.school,
    this.decryptedName,
    this.name,
    this.grade,
    this.section,
    this.assignedBus,
    this.status,
    this.enrollmentDate,
    this.schoolDetails,
    this.busDetails,
    this.parents = const [],
    this.photos = const [],
    this.createdAt,
    this.updatedAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? studentId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? school;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? decryptedName;

  /// Encrypted at application layer
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? grade;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? section;

  /// UUID primary key
  String? assignedBus;

  /// * `active` - Active * `inactive` - Inactive * `suspended` - Suspended
  PatchedStudentStatusEnum? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? enrollmentDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  School? schoolDetails;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  BusBasic? busDetails;

  List<StudentParent> parents;

  List<StudentPhoto> photos;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedStudent &&
    other.studentId == studentId &&
    other.school == school &&
    other.decryptedName == decryptedName &&
    other.name == name &&
    other.grade == grade &&
    other.section == section &&
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
    (studentId == null ? 0 : studentId!.hashCode) +
    (school == null ? 0 : school!.hashCode) +
    (decryptedName == null ? 0 : decryptedName!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (grade == null ? 0 : grade!.hashCode) +
    (section == null ? 0 : section!.hashCode) +
    (assignedBus == null ? 0 : assignedBus!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (enrollmentDate == null ? 0 : enrollmentDate!.hashCode) +
    (schoolDetails == null ? 0 : schoolDetails!.hashCode) +
    (busDetails == null ? 0 : busDetails!.hashCode) +
    (parents.hashCode) +
    (photos.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'PatchedStudent[studentId=$studentId, school=$school, decryptedName=$decryptedName, name=$name, grade=$grade, section=$section, assignedBus=$assignedBus, status=$status, enrollmentDate=$enrollmentDate, schoolDetails=$schoolDetails, busDetails=$busDetails, parents=$parents, photos=$photos, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.studentId != null) {
      json[r'student_id'] = this.studentId;
    } else {
      json[r'student_id'] = null;
    }
    if (this.school != null) {
      json[r'school'] = this.school;
    } else {
      json[r'school'] = null;
    }
    if (this.decryptedName != null) {
      json[r'decrypted_name'] = this.decryptedName;
    } else {
      json[r'decrypted_name'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.grade != null) {
      json[r'grade'] = this.grade;
    } else {
      json[r'grade'] = null;
    }
    if (this.section != null) {
      json[r'section'] = this.section;
    } else {
      json[r'section'] = null;
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
    if (this.schoolDetails != null) {
      json[r'school_details'] = this.schoolDetails;
    } else {
      json[r'school_details'] = null;
    }
    if (this.busDetails != null) {
      json[r'bus_details'] = this.busDetails;
    } else {
      json[r'bus_details'] = null;
    }
      json[r'parents'] = this.parents;
      json[r'photos'] = this.photos;
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updated_at'] = null;
    }
    return json;
  }

  /// Returns a new [PatchedStudent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchedStudent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchedStudent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchedStudent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchedStudent(
        studentId: mapValueOfType<String>(json, r'student_id'),
        school: mapValueOfType<String>(json, r'school'),
        decryptedName: mapValueOfType<String>(json, r'decrypted_name'),
        name: mapValueOfType<String>(json, r'name'),
        grade: mapValueOfType<String>(json, r'grade'),
        section: mapValueOfType<String>(json, r'section'),
        assignedBus: mapValueOfType<String>(json, r'assigned_bus'),
        status: PatchedStudentStatusEnum.fromJson(json[r'status']),
        enrollmentDate: mapDateTime(json, r'enrollment_date', r''),
        schoolDetails: School.fromJson(json[r'school_details']),
        busDetails: BusBasic.fromJson(json[r'bus_details']),
        parents: StudentParent.listFromJson(json[r'parents']),
        photos: StudentPhoto.listFromJson(json[r'photos']),
        createdAt: mapDateTime(json, r'created_at', r''),
        updatedAt: mapDateTime(json, r'updated_at', r''),
      );
    }
    return null;
  }

  static List<PatchedStudent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchedStudent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchedStudent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchedStudent> mapFromJson(dynamic json) {
    final map = <String, PatchedStudent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchedStudent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchedStudent-objects as value to a dart map
  static Map<String, List<PatchedStudent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchedStudent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchedStudent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// * `active` - Active * `inactive` - Inactive * `suspended` - Suspended
class PatchedStudentStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const PatchedStudentStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = PatchedStudentStatusEnum._(r'active');
  static const inactive = PatchedStudentStatusEnum._(r'inactive');
  static const suspended = PatchedStudentStatusEnum._(r'suspended');

  /// List of all possible values in this [enum][PatchedStudentStatusEnum].
  static const values = <PatchedStudentStatusEnum>[
    active,
    inactive,
    suspended,
  ];

  static PatchedStudentStatusEnum? fromJson(dynamic value) => PatchedStudentStatusEnumTypeTransformer().decode(value);

  static List<PatchedStudentStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchedStudentStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchedStudentStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PatchedStudentStatusEnum] to String,
/// and [decode] dynamic data back to [PatchedStudentStatusEnum].
class PatchedStudentStatusEnumTypeTransformer {
  factory PatchedStudentStatusEnumTypeTransformer() => _instance ??= const PatchedStudentStatusEnumTypeTransformer._();

  const PatchedStudentStatusEnumTypeTransformer._();

  String encode(PatchedStudentStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PatchedStudentStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PatchedStudentStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'active': return PatchedStudentStatusEnum.active;
        case r'inactive': return PatchedStudentStatusEnum.inactive;
        case r'suspended': return PatchedStudentStatusEnum.suspended;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PatchedStudentStatusEnumTypeTransformer] instance.
  static PatchedStudentStatusEnumTypeTransformer? _instance;
}


