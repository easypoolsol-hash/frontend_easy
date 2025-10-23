//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'patched_user.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedUser {
  /// Returns a new [PatchedUser] instance.
  PatchedUser({

     this.userId,

     this.username,

     this.email,

     this.role,

     this.roleName,

     this.isActive,

     this.lastLogin,

     this.createdAt,

     this.updatedAt,
  });

  @JsonKey(

    name: r'user_id',
    required: false,
    includeIfNull: false,
  )


  final String? userId;



  @JsonKey(

    name: r'username',
    required: false,
    includeIfNull: false,
  )


  final String? username;



  @JsonKey(

    name: r'email',
    required: false,
    includeIfNull: false,
  )


  final String? email;



  @JsonKey(

    name: r'role',
    required: false,
    includeIfNull: false,
  )


  final String? role;



  @JsonKey(

    name: r'role_name',
    required: false,
    includeIfNull: false,
  )


  final String? roleName;



  @JsonKey(

    name: r'is_active',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;



  @JsonKey(

    name: r'last_login',
    required: false,
    includeIfNull: false,
  )


  final DateTime? lastLogin;



  @JsonKey(

    name: r'created_at',
    required: false,
    includeIfNull: false,
  )


  final DateTime? createdAt;



  @JsonKey(

    name: r'updated_at',
    required: false,
    includeIfNull: false,
  )


  final DateTime? updatedAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PatchedUser &&
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

  factory PatchedUser.fromJson(Map<String, dynamic> json) => _$PatchedUserFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedUserToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}
