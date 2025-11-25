//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiV1StudentsAllRetrieve200Response {
  /// Returns a new [ApiV1StudentsAllRetrieve200Response] instance.
  ApiV1StudentsAllRetrieve200Response({
    this.count,
    this.next,
    this.previous,
    this.results = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? next;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? previous;

  List<ApiV1StudentsAllRetrieve200ResponseResultsInner> results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApiV1StudentsAllRetrieve200Response &&
    other.count == count &&
    other.next == next &&
    other.previous == previous &&
    _deepEquality.equals(other.results, results);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (count == null ? 0 : count!.hashCode) +
    (next == null ? 0 : next!.hashCode) +
    (previous == null ? 0 : previous!.hashCode) +
    (results.hashCode);

  @override
  String toString() => 'ApiV1StudentsAllRetrieve200Response[count=$count, next=$next, previous=$previous, results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.next != null) {
      json[r'next'] = this.next;
    } else {
      json[r'next'] = null;
    }
    if (this.previous != null) {
      json[r'previous'] = this.previous;
    } else {
      json[r'previous'] = null;
    }
      json[r'results'] = this.results;
    return json;
  }

  /// Returns a new [ApiV1StudentsAllRetrieve200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiV1StudentsAllRetrieve200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ApiV1StudentsAllRetrieve200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ApiV1StudentsAllRetrieve200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ApiV1StudentsAllRetrieve200Response(
        count: mapValueOfType<int>(json, r'count'),
        next: mapValueOfType<bool>(json, r'next'),
        previous: mapValueOfType<bool>(json, r'previous'),
        results: ApiV1StudentsAllRetrieve200ResponseResultsInner.listFromJson(json[r'results']),
      );
    }
    return null;
  }

  static List<ApiV1StudentsAllRetrieve200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApiV1StudentsAllRetrieve200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiV1StudentsAllRetrieve200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiV1StudentsAllRetrieve200Response> mapFromJson(dynamic json) {
    final map = <String, ApiV1StudentsAllRetrieve200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiV1StudentsAllRetrieve200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiV1StudentsAllRetrieve200Response-objects as value to a dart map
  static Map<String, List<ApiV1StudentsAllRetrieve200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ApiV1StudentsAllRetrieve200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiV1StudentsAllRetrieve200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

