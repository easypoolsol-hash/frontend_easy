//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Heartbeat {
  /// Returns a new [Heartbeat] instance.
  Heartbeat({
    required this.timestamp,
    required this.databaseVersion,
    this.databaseHash,
    required this.studentCount,
    required this.embeddingCount,
    this.health,
  });

  /// Heartbeat timestamp
  DateTime timestamp;

  /// Current database version on kiosk
  String databaseVersion;

  /// Database content hash
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? databaseHash;

  /// Students in DB
  ///
  /// Minimum value: 0
  int studentCount;

  /// Embeddings in DB
  ///
  /// Minimum value: 0
  int embeddingCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HealthData? health;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Heartbeat &&
    other.timestamp == timestamp &&
    other.databaseVersion == databaseVersion &&
    other.databaseHash == databaseHash &&
    other.studentCount == studentCount &&
    other.embeddingCount == embeddingCount &&
    other.health == health;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (timestamp.hashCode) +
    (databaseVersion.hashCode) +
    (databaseHash == null ? 0 : databaseHash!.hashCode) +
    (studentCount.hashCode) +
    (embeddingCount.hashCode) +
    (health == null ? 0 : health!.hashCode);

  @override
  String toString() => 'Heartbeat[timestamp=$timestamp, databaseVersion=$databaseVersion, databaseHash=$databaseHash, studentCount=$studentCount, embeddingCount=$embeddingCount, health=$health]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'timestamp'] = this.timestamp.toUtc().toIso8601String();
      json[r'database_version'] = this.databaseVersion;
    if (this.databaseHash != null) {
      json[r'database_hash'] = this.databaseHash;
    } else {
      json[r'database_hash'] = null;
    }
      json[r'student_count'] = this.studentCount;
      json[r'embedding_count'] = this.embeddingCount;
    if (this.health != null) {
      json[r'health'] = this.health;
    } else {
      json[r'health'] = null;
    }
    return json;
  }

  /// Returns a new [Heartbeat] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Heartbeat? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Heartbeat[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Heartbeat[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Heartbeat(
        timestamp: mapDateTime(json, r'timestamp', r'')!,
        databaseVersion: mapValueOfType<String>(json, r'database_version')!,
        databaseHash: mapValueOfType<String>(json, r'database_hash'),
        studentCount: mapValueOfType<int>(json, r'student_count')!,
        embeddingCount: mapValueOfType<int>(json, r'embedding_count')!,
        health: HealthData.fromJson(json[r'health']),
      );
    }
    return null;
  }

  static List<Heartbeat> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Heartbeat>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Heartbeat.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Heartbeat> mapFromJson(dynamic json) {
    final map = <String, Heartbeat>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Heartbeat.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Heartbeat-objects as value to a dart map
  static Map<String, List<Heartbeat>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Heartbeat>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Heartbeat.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'timestamp',
    'database_version',
    'student_count',
    'embedding_count',
  };
}

