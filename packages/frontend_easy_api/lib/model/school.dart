//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class School {
  /// Returns a new [School] instance.
  School({
    required this.schoolId,
    required this.name,
    required this.createdAt,
  });

  String schoolId;

  String name;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is School &&
    other.schoolId == schoolId &&
    other.name == name &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schoolId.hashCode) +
    (name.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'School[schoolId=$schoolId, name=$name, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'school_id'] = this.schoolId;
      json[r'name'] = this.name;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [School] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static School? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "School[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "School[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return School(
        schoolId: mapValueOfType<String>(json, r'school_id')!,
        name: mapValueOfType<String>(json, r'name')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
      );
    }
    return null;
  }

  static List<School> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <School>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = School.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, School> mapFromJson(dynamic json) {
    final map = <String, School>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = School.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of School-objects as value to a dart map
  static Map<String, List<School>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<School>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = School.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'school_id',
    'name',
    'created_at',
  };
}

