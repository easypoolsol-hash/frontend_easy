//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PatchedStudentParent {
  /// Returns a new [PatchedStudentParent] instance.
  PatchedStudentParent({
    this.student,
    this.parent,
    this.relationship,
    this.isPrimary,
    this.parentDetails,
    this.studentDetails,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? student;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parent;

  /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
  PatchedStudentParentRelationshipEnum? relationship;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPrimary;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Parent? parentDetails;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? studentDetails;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedStudentParent &&
    other.student == student &&
    other.parent == parent &&
    other.relationship == relationship &&
    other.isPrimary == isPrimary &&
    other.parentDetails == parentDetails &&
    other.studentDetails == studentDetails;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (student == null ? 0 : student!.hashCode) +
    (parent == null ? 0 : parent!.hashCode) +
    (relationship == null ? 0 : relationship!.hashCode) +
    (isPrimary == null ? 0 : isPrimary!.hashCode) +
    (parentDetails == null ? 0 : parentDetails!.hashCode) +
    (studentDetails == null ? 0 : studentDetails!.hashCode);

  @override
  String toString() => 'PatchedStudentParent[student=$student, parent=$parent, relationship=$relationship, isPrimary=$isPrimary, parentDetails=$parentDetails, studentDetails=$studentDetails]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.student != null) {
      json[r'student'] = this.student;
    } else {
      json[r'student'] = null;
    }
    if (this.parent != null) {
      json[r'parent'] = this.parent;
    } else {
      json[r'parent'] = null;
    }
    if (this.relationship != null) {
      json[r'relationship'] = this.relationship;
    } else {
      json[r'relationship'] = null;
    }
    if (this.isPrimary != null) {
      json[r'is_primary'] = this.isPrimary;
    } else {
      json[r'is_primary'] = null;
    }
    if (this.parentDetails != null) {
      json[r'parent_details'] = this.parentDetails;
    } else {
      json[r'parent_details'] = null;
    }
    if (this.studentDetails != null) {
      json[r'student_details'] = this.studentDetails;
    } else {
      json[r'student_details'] = null;
    }
    return json;
  }

  /// Returns a new [PatchedStudentParent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchedStudentParent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchedStudentParent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchedStudentParent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchedStudentParent(
        student: mapValueOfType<String>(json, r'student'),
        parent: mapValueOfType<String>(json, r'parent'),
        relationship: PatchedStudentParentRelationshipEnum.fromJson(json[r'relationship']),
        isPrimary: mapValueOfType<bool>(json, r'is_primary'),
        parentDetails: Parent.fromJson(json[r'parent_details']),
        studentDetails: mapValueOfType<String>(json, r'student_details'),
      );
    }
    return null;
  }

  static List<PatchedStudentParent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchedStudentParent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchedStudentParent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchedStudentParent> mapFromJson(dynamic json) {
    final map = <String, PatchedStudentParent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchedStudentParent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchedStudentParent-objects as value to a dart map
  static Map<String, List<PatchedStudentParent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchedStudentParent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchedStudentParent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
class PatchedStudentParentRelationshipEnum {
  /// Instantiate a new enum with the provided [value].
  const PatchedStudentParentRelationshipEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const mother = PatchedStudentParentRelationshipEnum._(r'mother');
  static const father = PatchedStudentParentRelationshipEnum._(r'father');
  static const guardian = PatchedStudentParentRelationshipEnum._(r'guardian');
  static const grandparent = PatchedStudentParentRelationshipEnum._(r'grandparent');
  static const other = PatchedStudentParentRelationshipEnum._(r'other');

  /// List of all possible values in this [enum][PatchedStudentParentRelationshipEnum].
  static const values = <PatchedStudentParentRelationshipEnum>[
    mother,
    father,
    guardian,
    grandparent,
    other,
  ];

  static PatchedStudentParentRelationshipEnum? fromJson(dynamic value) => PatchedStudentParentRelationshipEnumTypeTransformer().decode(value);

  static List<PatchedStudentParentRelationshipEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchedStudentParentRelationshipEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchedStudentParentRelationshipEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PatchedStudentParentRelationshipEnum] to String,
/// and [decode] dynamic data back to [PatchedStudentParentRelationshipEnum].
class PatchedStudentParentRelationshipEnumTypeTransformer {
  factory PatchedStudentParentRelationshipEnumTypeTransformer() => _instance ??= const PatchedStudentParentRelationshipEnumTypeTransformer._();

  const PatchedStudentParentRelationshipEnumTypeTransformer._();

  String encode(PatchedStudentParentRelationshipEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PatchedStudentParentRelationshipEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PatchedStudentParentRelationshipEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'mother': return PatchedStudentParentRelationshipEnum.mother;
        case r'father': return PatchedStudentParentRelationshipEnum.father;
        case r'guardian': return PatchedStudentParentRelationshipEnum.guardian;
        case r'grandparent': return PatchedStudentParentRelationshipEnum.grandparent;
        case r'other': return PatchedStudentParentRelationshipEnum.other;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PatchedStudentParentRelationshipEnumTypeTransformer] instance.
  static PatchedStudentParentRelationshipEnumTypeTransformer? _instance;
}


