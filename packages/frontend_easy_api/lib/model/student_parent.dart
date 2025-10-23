//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StudentParent {
  /// Returns a new [StudentParent] instance.
  StudentParent({
    required this.student,
    required this.parent,
    required this.relationship,
    this.isPrimary,
    required this.parentDetails,
    required this.studentDetails,
  });

  String student;

  String parent;

  /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
  StudentParentRelationshipEnum relationship;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPrimary;

  Parent parentDetails;

  String studentDetails;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StudentParent &&
    other.student == student &&
    other.parent == parent &&
    other.relationship == relationship &&
    other.isPrimary == isPrimary &&
    other.parentDetails == parentDetails &&
    other.studentDetails == studentDetails;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (student.hashCode) +
    (parent.hashCode) +
    (relationship.hashCode) +
    (isPrimary == null ? 0 : isPrimary!.hashCode) +
    (parentDetails.hashCode) +
    (studentDetails.hashCode);

  @override
  String toString() => 'StudentParent[student=$student, parent=$parent, relationship=$relationship, isPrimary=$isPrimary, parentDetails=$parentDetails, studentDetails=$studentDetails]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'student'] = this.student;
      json[r'parent'] = this.parent;
      json[r'relationship'] = this.relationship;
    if (this.isPrimary != null) {
      json[r'is_primary'] = this.isPrimary;
    } else {
      json[r'is_primary'] = null;
    }
      json[r'parent_details'] = this.parentDetails;
      json[r'student_details'] = this.studentDetails;
    return json;
  }

  /// Returns a new [StudentParent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StudentParent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StudentParent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StudentParent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StudentParent(
        student: mapValueOfType<String>(json, r'student')!,
        parent: mapValueOfType<String>(json, r'parent')!,
        relationship: StudentParentRelationshipEnum.fromJson(json[r'relationship'])!,
        isPrimary: mapValueOfType<bool>(json, r'is_primary'),
        parentDetails: Parent.fromJson(json[r'parent_details'])!,
        studentDetails: mapValueOfType<String>(json, r'student_details')!,
      );
    }
    return null;
  }

  static List<StudentParent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StudentParent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StudentParent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StudentParent> mapFromJson(dynamic json) {
    final map = <String, StudentParent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StudentParent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StudentParent-objects as value to a dart map
  static Map<String, List<StudentParent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StudentParent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StudentParent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'student',
    'parent',
    'relationship',
    'parent_details',
    'student_details',
  };
}

/// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
class StudentParentRelationshipEnum {
  /// Instantiate a new enum with the provided [value].
  const StudentParentRelationshipEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const mother = StudentParentRelationshipEnum._(r'mother');
  static const father = StudentParentRelationshipEnum._(r'father');
  static const guardian = StudentParentRelationshipEnum._(r'guardian');
  static const grandparent = StudentParentRelationshipEnum._(r'grandparent');
  static const other = StudentParentRelationshipEnum._(r'other');

  /// List of all possible values in this [enum][StudentParentRelationshipEnum].
  static const values = <StudentParentRelationshipEnum>[
    mother,
    father,
    guardian,
    grandparent,
    other,
  ];

  static StudentParentRelationshipEnum? fromJson(dynamic value) => StudentParentRelationshipEnumTypeTransformer().decode(value);

  static List<StudentParentRelationshipEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StudentParentRelationshipEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StudentParentRelationshipEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StudentParentRelationshipEnum] to String,
/// and [decode] dynamic data back to [StudentParentRelationshipEnum].
class StudentParentRelationshipEnumTypeTransformer {
  factory StudentParentRelationshipEnumTypeTransformer() => _instance ??= const StudentParentRelationshipEnumTypeTransformer._();

  const StudentParentRelationshipEnumTypeTransformer._();

  String encode(StudentParentRelationshipEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a StudentParentRelationshipEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StudentParentRelationshipEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'mother': return StudentParentRelationshipEnum.mother;
        case r'father': return StudentParentRelationshipEnum.father;
        case r'guardian': return StudentParentRelationshipEnum.guardian;
        case r'grandparent': return StudentParentRelationshipEnum.grandparent;
        case r'other': return StudentParentRelationshipEnum.other;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StudentParentRelationshipEnumTypeTransformer] instance.
  static StudentParentRelationshipEnumTypeTransformer? _instance;
}
