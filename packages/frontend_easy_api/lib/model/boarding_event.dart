//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BoardingEvent {
  /// Returns a new [BoardingEvent] instance.
  BoardingEvent({
    required this.eventId,
    this.student,
    required this.kioskId,
    required this.confidenceScore,
    required this.timestamp,
    this.latitude,
    this.longitude,
    this.busRoute,
    this.faceImageUrl,
    required this.modelVersion,
    this.metadata,
    required this.createdAt,
    required this.confirmationFaceUrls,
    required this.isUnknownFace,
  });

  /// ULID primary key for global uniqueness and time sorting
  String eventId;

  /// Student who boarded the bus (null for unidentified faces)
  String? student;

  /// Kiosk device identifier
  String kioskId;

  /// Face recognition confidence score (0.0-1.0)
  ///
  /// Minimum value: 0.0
  /// Maximum value: 1.0
  double confidenceScore;

  /// When the boarding event occurred
  DateTime timestamp;

  /// GPS latitude coordinate
  double? latitude;

  /// GPS longitude coordinate
  double? longitude;

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

  /// When this record was created in database
  DateTime createdAt;

  String confirmationFaceUrls;

  String isUnknownFace;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BoardingEvent &&
    other.eventId == eventId &&
    other.student == student &&
    other.kioskId == kioskId &&
    other.confidenceScore == confidenceScore &&
    other.timestamp == timestamp &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.busRoute == busRoute &&
    other.faceImageUrl == faceImageUrl &&
    other.modelVersion == modelVersion &&
    other.metadata == metadata &&
    other.createdAt == createdAt &&
    other.confirmationFaceUrls == confirmationFaceUrls &&
    other.isUnknownFace == isUnknownFace;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (eventId.hashCode) +
    (student == null ? 0 : student!.hashCode) +
    (kioskId.hashCode) +
    (confidenceScore.hashCode) +
    (timestamp.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode) +
    (busRoute == null ? 0 : busRoute!.hashCode) +
    (faceImageUrl == null ? 0 : faceImageUrl!.hashCode) +
    (modelVersion.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode) +
    (createdAt.hashCode) +
    (confirmationFaceUrls.hashCode) +
    (isUnknownFace.hashCode);

  @override
  String toString() => 'BoardingEvent[eventId=$eventId, student=$student, kioskId=$kioskId, confidenceScore=$confidenceScore, timestamp=$timestamp, latitude=$latitude, longitude=$longitude, busRoute=$busRoute, faceImageUrl=$faceImageUrl, modelVersion=$modelVersion, metadata=$metadata, createdAt=$createdAt, confirmationFaceUrls=$confirmationFaceUrls, isUnknownFace=$isUnknownFace]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'event_id'] = this.eventId;
    if (this.student != null) {
      json[r'student'] = this.student;
    } else {
      json[r'student'] = null;
    }
      json[r'kiosk_id'] = this.kioskId;
      json[r'confidence_score'] = this.confidenceScore;
      json[r'timestamp'] = this.timestamp.toUtc().toIso8601String();
    if (this.latitude != null) {
      json[r'latitude'] = this.latitude;
    } else {
      json[r'latitude'] = null;
    }
    if (this.longitude != null) {
      json[r'longitude'] = this.longitude;
    } else {
      json[r'longitude'] = null;
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
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'confirmation_face_urls'] = this.confirmationFaceUrls;
      json[r'is_unknown_face'] = this.isUnknownFace;
    return json;
  }

  /// Returns a new [BoardingEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BoardingEvent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BoardingEvent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BoardingEvent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BoardingEvent(
        eventId: mapValueOfType<String>(json, r'event_id')!,
        student: mapValueOfType<String>(json, r'student'),
        kioskId: mapValueOfType<String>(json, r'kiosk_id')!,
        confidenceScore: mapValueOfType<double>(json, r'confidence_score')!,
        timestamp: mapDateTime(json, r'timestamp', r'')!,
        latitude: mapValueOfType<double>(json, r'latitude'),
        longitude: mapValueOfType<double>(json, r'longitude'),
        busRoute: mapValueOfType<String>(json, r'bus_route'),
        faceImageUrl: mapValueOfType<String>(json, r'face_image_url'),
        modelVersion: mapValueOfType<String>(json, r'model_version')!,
        metadata: mapValueOfType<Object>(json, r'metadata'),
        createdAt: mapDateTime(json, r'created_at', r'')!,
        confirmationFaceUrls: mapValueOfType<String>(json, r'confirmation_face_urls')!,
        isUnknownFace: mapValueOfType<String>(json, r'is_unknown_face')!,
      );
    }
    return null;
  }

  static List<BoardingEvent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BoardingEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BoardingEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BoardingEvent> mapFromJson(dynamic json) {
    final map = <String, BoardingEvent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BoardingEvent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BoardingEvent-objects as value to a dart map
  static Map<String, List<BoardingEvent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BoardingEvent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BoardingEvent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'event_id',
    'kiosk_id',
    'confidence_score',
    'timestamp',
    'model_version',
    'created_at',
    'confirmation_face_urls',
    'is_unknown_face',
  };
}

