//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class User {
  /// Returns a new [User] instance.
  User({

    required  this.userId,

    required  this.username,

    required  this.email,

    required  this.role,

    required  this.roleName,

     this.isActive,

    required  this.lastLogin,

    required  this.createdAt,

    required  this.updatedAt,
  });

  @JsonKey(
    
    name: r'user_id',
    required: true,
    includeIfNull: false,
  )


  final String userId;



  @JsonKey(
    
    name: r'username',
    required: true,
    includeIfNull: false,
  )


  final String username;



  @JsonKey(
    
    name: r'email',
    required: true,
    includeIfNull: false,
  )


  final String email;



  @JsonKey(
    
    name: r'role',
    required: true,
    includeIfNull: false,
  )


  final String role;



  @JsonKey(
    
    name: r'role_name',
    required: true,
    includeIfNull: false,
  )


  final String roleName;



  @JsonKey(
    
    name: r'is_active',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;



  @JsonKey(
    
    name: r'last_login',
    required: true,
    includeIfNull: true,
  )


  final DateTime? lastLogin;



  @JsonKey(
    
    name: r'created_at',
    required: true,
    includeIfNull: false,
  )


  final DateTime createdAt;



  @JsonKey(
    
    name: r'updated_at',
    required: true,
    includeIfNull: false,
  )


  final DateTime updatedAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is User &&
      other.userId == userId &&
      other.username == username &&
      other.email == email &&
      other.role == role &&
      other.roleName == roleName &&
      other.isActive == isActive &&
      other.lastLogin == lastLogin &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt;

    @override
    int get hashCode =>
        userId.hashCode +
        username.hashCode +
        email.hashCode +
        role.hashCode +
        roleName.hashCode +
        isActive.hashCode +
        (lastLogin == null ? 0 : lastLogin.hashCode) +
        createdAt.hashCode +
        updatedAt.hashCode;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

