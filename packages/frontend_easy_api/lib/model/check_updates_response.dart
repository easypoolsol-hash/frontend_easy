//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CheckUpdatesResponse {
  /// Returns a new [CheckUpdatesResponse] instance.
  CheckUpdatesResponse({
    required this.needsUpdate,
    required this.currentVersion,
    required this.studentCount,
    required this.embeddingCount,
    required this.contentHash,
  });

  /// Whether kiosk needs to download new snapshot
  bool needsUpdate;

  /// Current database version timestamp
  String currentVersion;

  /// Number of students for this bus
  int studentCount;

  /// Number of embeddings for this bus
  int embeddingCount;

  /// Content hash for integrity verification
  String contentHash;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CheckUpdatesResponse &&
    other.needsUpdate == needsUpdate &&
    other.currentVersion == currentVersion &&
    other.studentCount == studentCount &&
    other.embeddingCount == embeddingCount &&
    other.contentHash == contentHash;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (needsUpdate.hashCode) +
    (currentVersion.hashCode) +
    (studentCount.hashCode) +
    (embeddingCount.hashCode) +
    (contentHash.hashCode);

  @override
  String toString() => 'CheckUpdatesResponse[needsUpdate=$needsUpdate, currentVersion=$currentVersion, studentCount=$studentCount, embeddingCount=$embeddingCount, contentHash=$contentHash]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'needs_update'] = this.needsUpdate;
      json[r'current_version'] = this.currentVersion;
      json[r'student_count'] = this.studentCount;
      json[r'embedding_count'] = this.embeddingCount;
      json[r'content_hash'] = this.contentHash;
    return json;
  }

  /// Returns a new [CheckUpdatesResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CheckUpdatesResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CheckUpdatesResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CheckUpdatesResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CheckUpdatesResponse(
        needsUpdate: mapValueOfType<bool>(json, r'needs_update')!,
        currentVersion: mapValueOfType<String>(json, r'current_version')!,
        studentCount: mapValueOfType<int>(json, r'student_count')!,
        embeddingCount: mapValueOfType<int>(json, r'embedding_count')!,
        contentHash: mapValueOfType<String>(json, r'content_hash')!,
      );
    }
    return null;
  }

  static List<CheckUpdatesResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CheckUpdatesResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CheckUpdatesResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CheckUpdatesResponse> mapFromJson(dynamic json) {
    final map = <String, CheckUpdatesResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CheckUpdatesResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CheckUpdatesResponse-objects as value to a dart map
  static Map<String, List<CheckUpdatesResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CheckUpdatesResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CheckUpdatesResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'needs_update',
    'current_version',
    'student_count',
    'embedding_count',
    'content_hash',
  };
}

