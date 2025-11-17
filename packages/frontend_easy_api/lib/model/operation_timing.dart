//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OperationTiming {
  /// Returns a new [OperationTiming] instance.
  OperationTiming({
    required this.name,
    this.description,
    this.isActive,
    this.slots = const [],
  });

  /// Schedule name (e.g., 'Morning Shift', 'Full Day')
  String name;

  /// Optional description of this schedule
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Whether this schedule is available for selection
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isActive;

  List<OperationSlot> slots;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OperationTiming &&
    other.name == name &&
    other.description == description &&
    other.isActive == isActive &&
    _deepEquality.equals(other.slots, slots);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (isActive == null ? 0 : isActive!.hashCode) +
    (slots.hashCode);

  @override
  String toString() => 'OperationTiming[name=$name, description=$description, isActive=$isActive, slots=$slots]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.isActive != null) {
      json[r'is_active'] = this.isActive;
    } else {
      json[r'is_active'] = null;
    }
      json[r'slots'] = this.slots;
    return json;
  }

  /// Returns a new [OperationTiming] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OperationTiming? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OperationTiming[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OperationTiming[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OperationTiming(
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description'),
        isActive: mapValueOfType<bool>(json, r'is_active'),
        slots: OperationSlot.listFromJson(json[r'slots']),
      );
    }
    return null;
  }

  static List<OperationTiming> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OperationTiming>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OperationTiming.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OperationTiming> mapFromJson(dynamic json) {
    final map = <String, OperationTiming>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OperationTiming.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OperationTiming-objects as value to a dart map
  static Map<String, List<OperationTiming>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OperationTiming>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OperationTiming.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'slots',
  };
}

