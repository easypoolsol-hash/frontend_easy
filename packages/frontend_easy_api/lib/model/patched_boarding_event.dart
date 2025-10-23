//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PatchedBoardingEvent {
  /// Returns a new [PatchedBoardingEvent] instance.
  PatchedBoardingEvent({
    this.eventId,
    this.student,
    this.kioskId,
    this.confidenceScore,
    this.timestamp,
    this.latitude,
    this.longitude,
    this.busRoute,
    this.faceImageUrl,
    this.modelVersion,
    this.metadata,
    this.createdAt,
  });

  /// ULID primary key for global uniqueness and time sorting
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? eventId;

  /// Student who boarded the bus
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? student;

  /// Kiosk device identifier
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kioskId;

  /// Face recognition confidence score (0.0-1.0)
  ///
  /// Minimum value: 0.0
  /// Maximum value: 1.0
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? confidenceScore;

  /// When the boarding event occurred
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timestamp;

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
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? modelVersion;

  /// Additional metadata as JSON
  Object? metadata;

  /// When this record was created in database
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedBoardingEvent &&
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
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (eventId == null ? 0 : eventId!.hashCode) +
    (student == null ? 0 : student!.hashCode) +
    (kioskId == null ? 0 : kioskId!.hashCode) +
    (confidenceScore == null ? 0 : confidenceScore!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode) +
    (busRoute == null ? 0 : busRoute!.hashCode) +
    (faceImageUrl == null ? 0 : faceImageUrl!.hashCode) +
    (modelVersion == null ? 0 : modelVersion!.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode);

  @override
  String toString() => 'PatchedBoardingEvent[eventId=$eventId, student=$student, kioskId=$kioskId, confidenceScore=$confidenceScore, timestamp=$timestamp, latitude=$latitude, longitude=$longitude, busRoute=$busRoute, faceImageUrl=$faceImageUrl, modelVersion=$modelVersion, metadata=$metadata, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.eventId != null) {
      json[r'event_id'] = this.eventId;
    } else {
      json[r'event_id'] = null;
    }
    if (this.student != null) {
      json[r'student'] = this.student;
    } else {
      json[r'student'] = null;
    }
    if (this.kioskId != null) {
      json[r'kiosk_id'] = this.kioskId;
    } else {
      json[r'kiosk_id'] = null;
    }
    if (this.confidenceScore != null) {
      json[r'confidence_score'] = this.confidenceScore;
    } else {
      json[r'confidence_score'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp!.toUtc().toIso8601String();
    } else {
      json[r'timestamp'] = null;
    }
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
    if (this.modelVersion != null) {
      json[r'model_version'] = this.modelVersion;
    } else {
      json[r'model_version'] = null;
    }
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    return json;
  }

  /// Returns a new [PatchedBoardingEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchedBoardingEvent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchedBoardingEvent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchedBoardingEvent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchedBoardingEvent(
        eventId: mapValueOfType<String>(json, r'event_id'),
        student: mapValueOfType<String>(json, r'student'),
        kioskId: mapValueOfType<String>(json, r'kiosk_id'),
        confidenceScore: mapValueOfType<double>(json, r'confidence_score'),
        timestamp: mapDateTime(json, r'timestamp', r''),
        latitude: mapValueOfType<double>(json, r'latitude'),
        longitude: mapValueOfType<double>(json, r'longitude'),
        busRoute: mapValueOfType<String>(json, r'bus_route'),
        faceImageUrl: mapValueOfType<String>(json, r'face_image_url'),
        modelVersion: mapValueOfType<String>(json, r'model_version'),
        metadata: mapValueOfType<Object>(json, r'metadata'),
        createdAt: mapDateTime(json, r'created_at', r''),
      );
    }
    return null;
  }

  static List<PatchedBoardingEvent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchedBoardingEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchedBoardingEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchedBoardingEvent> mapFromJson(dynamic json) {
    final map = <String, PatchedBoardingEvent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchedBoardingEvent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchedBoardingEvent-objects as value to a dart map
  static Map<String, List<PatchedBoardingEvent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchedBoardingEvent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchedBoardingEvent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

