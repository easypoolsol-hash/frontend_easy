//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DashboardStudentsResponse {
  /// Returns a new [DashboardStudentsResponse] instance.
  DashboardStudentsResponse({
    required this.count,
    required this.next,
    required this.previous,
    this.results = const [],
  });

  /// Total number of students with events
  int count;

  /// Has next page
  bool next;

  /// Has previous page
  bool previous;

  /// List of students
  List<StudentActivity> results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DashboardStudentsResponse &&
    other.count == count &&
    other.next == next &&
    other.previous == previous &&
    _deepEquality.equals(other.results, results);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (count.hashCode) +
    (next.hashCode) +
    (previous.hashCode) +
    (results.hashCode);

  @override
  String toString() => 'DashboardStudentsResponse[count=$count, next=$next, previous=$previous, results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'count'] = this.count;
      json[r'next'] = this.next;
      json[r'previous'] = this.previous;
      json[r'results'] = this.results;
    return json;
  }

  /// Returns a new [DashboardStudentsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DashboardStudentsResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DashboardStudentsResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DashboardStudentsResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DashboardStudentsResponse(
        count: mapValueOfType<int>(json, r'count')!,
        next: mapValueOfType<bool>(json, r'next')!,
        previous: mapValueOfType<bool>(json, r'previous')!,
        results: StudentActivity.listFromJson(json[r'results']),
      );
    }
    return null;
  }

  static List<DashboardStudentsResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DashboardStudentsResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DashboardStudentsResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DashboardStudentsResponse> mapFromJson(dynamic json) {
    final map = <String, DashboardStudentsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DashboardStudentsResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DashboardStudentsResponse-objects as value to a dart map
  static Map<String, List<DashboardStudentsResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DashboardStudentsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DashboardStudentsResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'count',
    'next',
    'previous',
    'results',
  };
}

