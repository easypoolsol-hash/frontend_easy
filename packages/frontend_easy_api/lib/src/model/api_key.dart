//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'api_key.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class APIKey {
  /// Returns a new [APIKey] instance.
  APIKey({

    required  this.keyId,

    required  this.kioskId,

     this.name,

     this.permissions,

     this.isActive,

     this.expiresAt,

    required  this.lastUsed,

    required  this.createdAt,
  });

  @JsonKey(
    
    name: r'key_id',
    required: true,
    includeIfNull: false,
  )


  final String keyId;



      /// Reference to kiosk device
  @JsonKey(
    
    name: r'kiosk_id',
    required: true,
    includeIfNull: false,
  )


  final String kioskId;



      /// Human-readable name for the key
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// JSON object defining scoped permissions
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
    
    name: r'expires_at',
    required: false,
    includeIfNull: false,
  )


  final DateTime? expiresAt;



  @JsonKey(
    
    name: r'last_used',
    required: true,
    includeIfNull: true,
  )


  final DateTime? lastUsed;



  @JsonKey(
    
    name: r'created_at',
    required: true,
    includeIfNull: false,
  )


  final DateTime createdAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is APIKey &&
      other.keyId == keyId &&
      other.kioskId == kioskId &&
      other.name == name &&
      other.permissions == permissions &&
      other.isActive == isActive &&
      other.expiresAt == expiresAt &&
      other.lastUsed == lastUsed &&
      other.createdAt == createdAt;

    @override
    int get hashCode =>
        keyId.hashCode +
        kioskId.hashCode +
        name.hashCode +
        (permissions == null ? 0 : permissions.hashCode) +
        isActive.hashCode +
        (expiresAt == null ? 0 : expiresAt.hashCode) +
        (lastUsed == null ? 0 : lastUsed.hashCode) +
        createdAt.hashCode;

  factory APIKey.fromJson(Map<String, dynamic> json) => _$APIKeyFromJson(json);

  Map<String, dynamic> toJson() => _$APIKeyToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

