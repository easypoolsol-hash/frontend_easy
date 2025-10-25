//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'api_key_create.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class APIKeyCreate {
  /// Returns a new [APIKeyCreate] instance.
  APIKeyCreate({

    required  this.kioskId,

     this.name,

     this.permissions,

     this.expiresAt,

    required  this.rawKey,
  });

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
    
    name: r'expires_at',
    required: false,
    includeIfNull: false,
  )


  final DateTime? expiresAt;



  @JsonKey(
    
    name: r'raw_key',
    required: true,
    includeIfNull: false,
  )


  final String rawKey;





    @override
    bool operator ==(Object other) => identical(this, other) || other is APIKeyCreate &&
      other.kioskId == kioskId &&
      other.name == name &&
      other.permissions == permissions &&
      other.expiresAt == expiresAt &&
      other.rawKey == rawKey;

    @override
    int get hashCode =>
        kioskId.hashCode +
        name.hashCode +
        (permissions == null ? 0 : permissions.hashCode) +
        (expiresAt == null ? 0 : expiresAt.hashCode) +
        rawKey.hashCode;

  factory APIKeyCreate.fromJson(Map<String, dynamic> json) => _$APIKeyCreateFromJson(json);

  Map<String, dynamic> toJson() => _$APIKeyCreateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

