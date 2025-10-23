//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'role.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Role {
  /// Returns a new [Role] instance.
  Role({

    required  this.roleId,

    required  this.name,

     this.description,

     this.permissions,

     this.isActive,

    required  this.createdAt,

    required  this.updatedAt,
  });

  @JsonKey(
    
    name: r'role_id',
    required: true,
    includeIfNull: false,
  )


  final String roleId;



      /// * `super_admin` - Super Administrator * `backend_engineer` - Backend Engineer * `school_admin` - School Administrator * `parent` - Parent
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final RoleNameEnum name;



  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false,
  )


  final String? description;



      /// JSON object defining role permissions
  @JsonKey(
    
    name: r'permissions',
    required: false,
    includeIfNull: false,
  )


  final Object? permissions;



  @JsonKey(
    
    name: r'is_active',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;



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
    bool operator ==(Object other) => identical(this, other) || other is Role &&
      other.roleId == roleId &&
      other.name == name &&
      other.description == description &&
      other.permissions == permissions &&
      other.isActive == isActive &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt;

    @override
    int get hashCode =>
        roleId.hashCode +
        name.hashCode +
        description.hashCode +
        (permissions == null ? 0 : permissions.hashCode) +
        isActive.hashCode +
        createdAt.hashCode +
        updatedAt.hashCode;

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);

  Map<String, dynamic> toJson() => _$RoleToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `super_admin` - Super Administrator * `backend_engineer` - Backend Engineer * `school_admin` - School Administrator * `parent` - Parent
enum RoleNameEnum {
    /// * `super_admin` - Super Administrator * `backend_engineer` - Backend Engineer * `school_admin` - School Administrator * `parent` - Parent
@JsonValue(r'super_admin')
superAdmin(r'super_admin'),
    /// * `super_admin` - Super Administrator * `backend_engineer` - Backend Engineer * `school_admin` - School Administrator * `parent` - Parent
@JsonValue(r'backend_engineer')
backendEngineer(r'backend_engineer'),
    /// * `super_admin` - Super Administrator * `backend_engineer` - Backend Engineer * `school_admin` - School Administrator * `parent` - Parent
@JsonValue(r'school_admin')
schoolAdmin(r'school_admin'),
    /// * `super_admin` - Super Administrator * `backend_engineer` - Backend Engineer * `school_admin` - School Administrator * `parent` - Parent
@JsonValue(r'parent')
parent(r'parent');

const RoleNameEnum(this.value);

final String value;

@override
String toString() => value;
}


