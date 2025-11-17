//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of frontend_easy_api;

class OperationSlot {
  /// Returns a new [OperationSlot] instance.
  OperationSlot({
    required this.startTime,
    required this.endTime,
    this.order,
  });

  /// Start time (e.g., 08:00)
  String startTime;

  /// End time (e.g., 10:00)
  String endTime;

  /// Display order (0 = first slot)
  ///
  /// Minimum value: -9223372036854775808
  /// Maximum value: 9223372036854775807
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? order;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OperationSlot &&
    other.startTime == startTime &&
    other.endTime == endTime &&
    other.order == order;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (startTime.hashCode) +
    (endTime.hashCode) +
    (order == null ? 0 : order!.hashCode);

  @override
  String toString() => 'OperationSlot[startTime=$startTime, endTime=$endTime, order=$order]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'start_time'] = this.startTime;
      json[r'end_time'] = this.endTime;
    if (this.order != null) {
      json[r'order'] = this.order;
    } else {
      json[r'order'] = null;
    }
    return json;
  }

  /// Returns a new [OperationSlot] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OperationSlot? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OperationSlot[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OperationSlot[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OperationSlot(
        startTime: mapValueOfType<String>(json, r'start_time')!,
        endTime: mapValueOfType<String>(json, r'end_time')!,
        order: mapValueOfType<int>(json, r'order'),
      );
    }
    return null;
  }

  static List<OperationSlot> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OperationSlot>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OperationSlot.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OperationSlot> mapFromJson(dynamic json) {
    final map = <String, OperationSlot>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OperationSlot.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OperationSlot-objects as value to a dart map
  static Map<String, List<OperationSlot>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OperationSlot>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OperationSlot.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'start_time',
    'end_time',
  };
}

