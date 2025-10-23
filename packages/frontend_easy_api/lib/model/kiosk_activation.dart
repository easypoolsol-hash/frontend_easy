//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class KioskActivation {
  /// Returns a new [KioskActivation] instance.
  KioskActivation({
    required this.kioskId,
    required this.activationToken,
  });

  /// Kiosk identifier (e.g., KIOSK-SCHOOL-001)
  String kioskId;

  /// One-time activation token (destroyed after use)
  String activationToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is KioskActivation &&
    other.kioskId == kioskId &&
    other.activationToken == activationToken;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (kioskId.hashCode) +
    (activationToken.hashCode);

  @override
  String toString() => 'KioskActivation[kioskId=$kioskId, activationToken=$activationToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'kiosk_id'] = this.kioskId;
      json[r'activation_token'] = this.activationToken;
    return json;
  }

  /// Returns a new [KioskActivation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static KioskActivation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "KioskActivation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "KioskActivation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return KioskActivation(
        kioskId: mapValueOfType<String>(json, r'kiosk_id')!,
        activationToken: mapValueOfType<String>(json, r'activation_token')!,
      );
    }
    return null;
  }

  static List<KioskActivation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <KioskActivation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KioskActivation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, KioskActivation> mapFromJson(dynamic json) {
    final map = <String, KioskActivation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = KioskActivation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of KioskActivation-objects as value to a dart map
  static Map<String, List<KioskActivation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<KioskActivation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = KioskActivation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'kiosk_id',
    'activation_token',
  };
}
