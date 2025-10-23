//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'user_create.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserCreate {
  /// Returns a new [UserCreate] instance.
  UserCreate({

    required  this.username,

    required  this.email,

    required  this.password,

    required  this.passwordConfirm,

    required  this.role,
  });

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

    name: r'password',
    required: true,
    includeIfNull: false,
  )


  final String password;



  @JsonKey(

    name: r'password_confirm',
    required: true,
    includeIfNull: false,
  )


  final String passwordConfirm;



  @JsonKey(

    name: r'role',
    required: true,
    includeIfNull: false,
  )


  final String role;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UserCreate &&
      other.username == username &&
      other.email == email &&
      other.password == password &&
      other.passwordConfirm == passwordConfirm &&
      other.role == role;

    @override
    int get hashCode =>
        username.hashCode +
        email.hashCode +
        password.hashCode +
        passwordConfirm.hashCode +
        role.hashCode;

  factory UserCreate.fromJson(Map<String, dynamic> json) => _$UserCreateFromJson(json);

  Map<String, dynamic> toJson() => _$UserCreateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}
