//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of frontend_easy_api;

class Parent {
  /// Returns a new [Parent] instance.
  Parent({
    required this.parentId,
    required this.decryptedName,
    required this.decryptedPhone,
    required this.decryptedEmail,
    required this.name,
    required this.phone,
    required this.email,
    required this.createdAt,
  });

  String parentId;

  String decryptedName;

  String decryptedPhone;

  String decryptedEmail;

  /// Encrypted name (plaintext validated max 100 chars)
  String name;

  /// Encrypted phone number (plaintext validated as +91XXXXXXXXXX)
  String phone;

  /// Encrypted email address (plaintext validated per RFC 5321)
  String email;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Parent &&
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
    (parentId.hashCode) +
    (decryptedName.hashCode) +
    (decryptedPhone.hashCode) +
    (decryptedEmail.hashCode) +
    (name.hashCode) +
    (phone.hashCode) +
    (email.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'Parent[parentId=$parentId, decryptedName=$decryptedName, decryptedPhone=$decryptedPhone, decryptedEmail=$decryptedEmail, name=$name, phone=$phone, email=$email, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'parent_id'] = this.parentId;
      json[r'decrypted_name'] = this.decryptedName;
      json[r'decrypted_phone'] = this.decryptedPhone;
      json[r'decrypted_email'] = this.decryptedEmail;
      json[r'name'] = this.name;
      json[r'phone'] = this.phone;
      json[r'email'] = this.email;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [Parent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Parent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Parent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Parent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Parent(
        parentId: mapValueOfType<String>(json, r'parent_id')!,
        decryptedName: mapValueOfType<String>(json, r'decrypted_name')!,
        decryptedPhone: mapValueOfType<String>(json, r'decrypted_phone')!,
        decryptedEmail: mapValueOfType<String>(json, r'decrypted_email')!,
        name: mapValueOfType<String>(json, r'name')!,
        phone: mapValueOfType<String>(json, r'phone')!,
        email: mapValueOfType<String>(json, r'email')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
      );
    }
    return null;
  }

  static List<Parent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Parent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Parent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Parent> mapFromJson(dynamic json) {
    final map = <String, Parent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Parent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Parent-objects as value to a dart map
  static Map<String, List<Parent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Parent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Parent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'parent_id',
    'decrypted_name',
    'decrypted_phone',
    'decrypted_email',
    'name',
    'phone',
    'email',
    'created_at',
  };
}

