//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BoardingEventNested {
  /// Returns a new [BoardingEventNested] instance.
  BoardingEventNested({
    required this.eventId,
    required this.timestamp,
    required this.kioskId,
    required this.eventType,
  });

  /// Event ULID
  String eventId;

  /// When event occurred
  DateTime timestamp;

  /// Kiosk device ID
  String kioskId;

  /// Event type (boarding/pickup/dropoff)
  String eventType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BoardingEventNested &&
    other.eventId == eventId &&
    other.timestamp == timestamp &&
    other.kioskId == kioskId &&
    other.eventType == eventType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (eventId.hashCode) +
    (timestamp.hashCode) +
    (kioskId.hashCode) +
    (eventType.hashCode);

  @override
  String toString() => 'BoardingEventNested[eventId=$eventId, timestamp=$timestamp, kioskId=$kioskId, eventType=$eventType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'event_id'] = this.eventId;
      json[r'timestamp'] = this.timestamp.toUtc().toIso8601String();
      json[r'kiosk_id'] = this.kioskId;
      json[r'event_type'] = this.eventType;
    return json;
  }

  /// Returns a new [BoardingEventNested] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BoardingEventNested? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BoardingEventNested[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BoardingEventNested[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BoardingEventNested(
        eventId: mapValueOfType<String>(json, r'event_id')!,
        timestamp: mapDateTime(json, r'timestamp', r'')!,
        kioskId: mapValueOfType<String>(json, r'kiosk_id')!,
        eventType: mapValueOfType<String>(json, r'event_type')!,
      );
    }
    return null;
  }

  static List<BoardingEventNested> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BoardingEventNested>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BoardingEventNested.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BoardingEventNested> mapFromJson(dynamic json) {
    final map = <String, BoardingEventNested>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BoardingEventNested.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BoardingEventNested-objects as value to a dart map
  static Map<String, List<BoardingEventNested>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BoardingEventNested>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BoardingEventNested.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'event_id',
    'timestamp',
    'kiosk_id',
    'event_type',
  };
}

