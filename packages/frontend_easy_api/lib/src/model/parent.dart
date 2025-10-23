//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'parent.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Parent {
  /// Returns a new [Parent] instance.
  Parent({

    required  this.parentId,

    required  this.decryptedName,

    required  this.decryptedPhone,

    required  this.decryptedEmail,

    required  this.name,

    required  this.phone,

    required  this.email,

    required  this.createdAt,
  });

  @JsonKey(

    name: r'parent_id',
    required: true,
    includeIfNull: false,
  )


  final String parentId;



  @JsonKey(

    name: r'decrypted_name',
    required: true,
    includeIfNull: false,
  )


  final String decryptedName;



  @JsonKey(

    name: r'decrypted_phone',
    required: true,
    includeIfNull: false,
  )


  final String decryptedPhone;



  @JsonKey(

    name: r'decrypted_email',
    required: true,
    includeIfNull: false,
  )


  final String decryptedEmail;



      /// Encrypted name (plaintext validated max 100 chars)
  @JsonKey(

    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



      /// Encrypted phone number (plaintext validated as +91XXXXXXXXXX)
  @JsonKey(

    name: r'phone',
    required: true,
    includeIfNull: false,
  )


  final String phone;



      /// Encrypted email address (plaintext validated per RFC 5321)
  @JsonKey(

    name: r'email',
    required: true,
    includeIfNull: false,
  )


  final String email;



  @JsonKey(

    name: r'created_at',
    required: true,
    includeIfNull: false,
  )


  final DateTime createdAt;





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
        parentId.hashCode +
        decryptedName.hashCode +
        decryptedPhone.hashCode +
        decryptedEmail.hashCode +
        name.hashCode +
        phone.hashCode +
        email.hashCode +
        createdAt.hashCode;

  factory Parent.fromJson(Map<String, dynamic> json) => _$ParentFromJson(json);

  Map<String, dynamic> toJson() => _$ParentToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}
