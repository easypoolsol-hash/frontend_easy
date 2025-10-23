//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PatchedParent {
  /// Returns a new [PatchedParent] instance.
  PatchedParent({
    this.parentId,
    this.decryptedName,
    this.decryptedPhone,
    this.decryptedEmail,
    this.name,
    this.phone,
    this.email,
    this.createdAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parentId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? decryptedName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? decryptedPhone;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? decryptedEmail;

  /// Encrypted name (plaintext validated max 100 chars)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Encrypted phone number (plaintext validated as +91XXXXXXXXXX)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phone;

  /// Encrypted email address (plaintext validated per RFC 5321)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedParent &&
    other.parentId == parentId &&
    other.decryptedName == decryptedName &&
    other.decryptedPhone == decryptedPhone &&
    other.decryptedEmail == decryptedEmail &&
    other.name == name &&
    other.phone == phone &&
    other.email == email &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (parentId == null ? 0 : parentId!.hashCode) +
    (decryptedName == null ? 0 : decryptedName!.hashCode) +
    (decryptedPhone == null ? 0 : decryptedPhone!.hashCode) +
    (decryptedEmail == null ? 0 : decryptedEmail!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (phone == null ? 0 : phone!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode);

  @override
  String toString() => 'PatchedParent[parentId=$parentId, decryptedName=$decryptedName, decryptedPhone=$decryptedPhone, decryptedEmail=$decryptedEmail, name=$name, phone=$phone, email=$email, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.parentId != null) {
      json[r'parent_id'] = this.parentId;
    } else {
      json[r'parent_id'] = null;
    }
    if (this.decryptedName != null) {
      json[r'decrypted_name'] = this.decryptedName;
    } else {
      json[r'decrypted_name'] = null;
    }
    if (this.decryptedPhone != null) {
      json[r'decrypted_phone'] = this.decryptedPhone;
    } else {
      json[r'decrypted_phone'] = null;
    }
    if (this.decryptedEmail != null) {
      json[r'decrypted_email'] = this.decryptedEmail;
    } else {
      json[r'decrypted_email'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.phone != null) {
      json[r'phone'] = this.phone;
    } else {
      json[r'phone'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    return json;
  }

  /// Returns a new [PatchedParent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchedParent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchedParent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchedParent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchedParent(
        parentId: mapValueOfType<String>(json, r'parent_id'),
        decryptedName: mapValueOfType<String>(json, r'decrypted_name'),
        decryptedPhone: mapValueOfType<String>(json, r'decrypted_phone'),
        decryptedEmail: mapValueOfType<String>(json, r'decrypted_email'),
        name: mapValueOfType<String>(json, r'name'),
        phone: mapValueOfType<String>(json, r'phone'),
        email: mapValueOfType<String>(json, r'email'),
        createdAt: mapDateTime(json, r'created_at', r''),
      );
    }
    return null;
  }

  static List<PatchedParent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchedParent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchedParent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchedParent> mapFromJson(dynamic json) {
    final map = <String, PatchedParent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchedParent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchedParent-objects as value to a dart map
  static Map<String, List<PatchedParent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchedParent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchedParent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}
