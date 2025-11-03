//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BoardingEventCreate {
  /// Returns a new [BoardingEventCreate] instance.
  BoardingEventCreate({
    required this.eventId,
    required this.student,
    required this.kioskId,
    required this.confidenceScore,
    required this.timestamp,
    this.gpsCoords = const [],
    this.busRoute,
    this.faceImageUrl,
    required this.modelVersion,
    this.metadata,
  });

  /// ULID primary key for global uniqueness and time sorting
  String eventId;

  /// Student who boarded the bus
  String student;

  /// Kiosk device identifier
  String kioskId;

  /// Face recognition confidence score (0.0-1.0)
  ///
  /// Minimum value: 0.0
  /// Maximum value: 1.0
  double confidenceScore;

  /// When the boarding event occurred
  DateTime timestamp;

  /// Return GPS coordinates as a tuple for compatibility
  List<double>? gpsCoords;

  /// Bus route identifier
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? busRoute;

  /// S3 URL to face image for verification (optional)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? faceImageUrl;

  /// Face recognition model version used
  String modelVersion;

  /// Additional metadata as JSON
  Object? metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BoardingEventCreate &&
    other.eventId == eventId &&
    other.student == student &&
    other.kioskId == kioskId &&
    other.confidenceScore == confidenceScore &&
    other.timestamp == timestamp &&
    _deepEquality.equals(other.gpsCoords, gpsCoords) &&
    other.busRoute == busRoute &&
    other.faceImageUrl == faceImageUrl &&
    other.modelVersion == modelVersion &&
    other.metadata == metadata;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (eventId.hashCode) +
    (student.hashCode) +
    (kioskId.hashCode) +
    (confidenceScore.hashCode) +
    (timestamp.hashCode) +
    (gpsCoords == null ? 0 : gpsCoords!.hashCode) +
    (busRoute == null ? 0 : busRoute!.hashCode) +
    (faceImageUrl == null ? 0 : faceImageUrl!.hashCode) +
    (modelVersion.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode);

  @override
  String toString() => 'BoardingEventCreate[eventId=$eventId, student=$student, kioskId=$kioskId, confidenceScore=$confidenceScore, timestamp=$timestamp, gpsCoords=$gpsCoords, busRoute=$busRoute, faceImageUrl=$faceImageUrl, modelVersion=$modelVersion, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'event_id'] = this.eventId;
      json[r'student'] = this.student;
      json[r'kiosk_id'] = this.kioskId;
      json[r'confidence_score'] = this.confidenceScore;
      json[r'timestamp'] = this.timestamp.toUtc().toIso8601String();
    if (this.gpsCoords != null) {
      json[r'gps_coords'] = this.gpsCoords;
    } else {
      json[r'gps_coords'] = null;
    }
    if (this.busRoute != null) {
      json[r'bus_route'] = this.busRoute;
    } else {
      json[r'bus_route'] = null;
    }
    if (this.faceImageUrl != null) {
      json[r'face_image_url'] = this.faceImageUrl;
    } else {
      json[r'face_image_url'] = null;
    }
      json[r'model_version'] = this.modelVersion;
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    return json;
  }

  /// Returns a new [BoardingEventCreate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BoardingEventCreate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BoardingEventCreate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BoardingEventCreate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BoardingEventCreate(
        eventId: mapValueOfType<String>(json, r'event_id')!,
        student: mapValueOfType<String>(json, r'student')!,
        kioskId: mapValueOfType<String>(json, r'kiosk_id')!,
        confidenceScore: mapValueOfType<double>(json, r'confidence_score')!,
        timestamp: mapDateTime(json, r'timestamp', r'')!,
        gpsCoords: json[r'gps_coords'] is Iterable
            ? (json[r'gps_coords'] as Iterable).cast<double>().toList(growable: false)
            : const [],
        busRoute: mapValueOfType<String>(json, r'bus_route'),
        faceImageUrl: mapValueOfType<String>(json, r'face_image_url'),
        modelVersion: mapValueOfType<String>(json, r'model_version')!,
        metadata: mapValueOfType<Object>(json, r'metadata'),
      );
    }
    return null;
  }

  static List<BoardingEventCreate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BoardingEventCreate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BoardingEventCreate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BoardingEventCreate> mapFromJson(dynamic json) {
    final map = <String, BoardingEventCreate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BoardingEventCreate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BoardingEventCreate-objects as value to a dart map
  static Map<String, List<BoardingEventCreate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BoardingEventCreate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BoardingEventCreate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'event_id',
    'student',
    'kiosk_id',
    'confidence_score',
    'timestamp',
    'gps_coords',
    'model_version',
  };
}

