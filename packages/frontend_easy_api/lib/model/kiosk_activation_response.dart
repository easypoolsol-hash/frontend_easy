//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class KioskActivationResponse {
  /// Returns a new [KioskActivationResponse] instance.
  KioskActivationResponse({
    required this.message,
    required this.access,
    required this.refresh,
    required this.kioskId,
    this.busId,
    required this.activationTokenDestroyed,
  });

  /// Success message
  String message;

  /// JWT access token (15 minutes)
  String access;

  /// JWT refresh token (60 days)
  String refresh;

  /// Activated kiosk ID
  String kioskId;

  /// Assigned bus ID
  String? busId;

  /// Confirms token is now garbage
  bool activationTokenDestroyed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is KioskActivationResponse &&
    other.message == message &&
    other.access == access &&
    other.refresh == refresh &&
    other.kioskId == kioskId &&
    other.busId == busId &&
    other.activationTokenDestroyed == activationTokenDestroyed;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (message.hashCode) +
    (access.hashCode) +
    (refresh.hashCode) +
    (kioskId.hashCode) +
    (busId == null ? 0 : busId!.hashCode) +
    (activationTokenDestroyed.hashCode);

  @override
  String toString() => 'KioskActivationResponse[message=$message, access=$access, refresh=$refresh, kioskId=$kioskId, busId=$busId, activationTokenDestroyed=$activationTokenDestroyed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'message'] = this.message;
      json[r'access'] = this.access;
      json[r'refresh'] = this.refresh;
      json[r'kiosk_id'] = this.kioskId;
    if (this.busId != null) {
      json[r'bus_id'] = this.busId;
    } else {
      json[r'bus_id'] = null;
    }
      json[r'activation_token_destroyed'] = this.activationTokenDestroyed;
    return json;
  }

  /// Returns a new [KioskActivationResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static KioskActivationResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "KioskActivationResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "KioskActivationResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return KioskActivationResponse(
        message: mapValueOfType<String>(json, r'message')!,
        access: mapValueOfType<String>(json, r'access')!,
        refresh: mapValueOfType<String>(json, r'refresh')!,
        kioskId: mapValueOfType<String>(json, r'kiosk_id')!,
        busId: mapValueOfType<String>(json, r'bus_id'),
        activationTokenDestroyed: mapValueOfType<bool>(json, r'activation_token_destroyed')!,
      );
    }
    return null;
  }

  static List<KioskActivationResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <KioskActivationResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KioskActivationResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, KioskActivationResponse> mapFromJson(dynamic json) {
    final map = <String, KioskActivationResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = KioskActivationResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of KioskActivationResponse-objects as value to a dart map
  static Map<String, List<KioskActivationResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<KioskActivationResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = KioskActivationResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'message',
    'access',
    'refresh',
    'kiosk_id',
    'activation_token_destroyed',
  };
}

