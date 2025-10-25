//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'kiosk_activation_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class KioskActivationResponse {
  /// Returns a new [KioskActivationResponse] instance.
  KioskActivationResponse({

    required  this.message,

    required  this.access,

    required  this.refresh,

    required  this.kioskId,

     this.busId,

    required  this.activationTokenDestroyed,
  });

      /// Success message
  @JsonKey(
    
    name: r'message',
    required: true,
    includeIfNull: false,
  )


  final String message;



      /// JWT access token (15 minutes)
  @JsonKey(
    
    name: r'access',
    required: true,
    includeIfNull: false,
  )


  final String access;



      /// JWT refresh token (60 days)
  @JsonKey(
    
    name: r'refresh',
    required: true,
    includeIfNull: false,
  )


  final String refresh;



      /// Activated kiosk ID
  @JsonKey(
    
    name: r'kiosk_id',
    required: true,
    includeIfNull: false,
  )


  final String kioskId;



      /// Assigned bus ID
  @JsonKey(
    
    name: r'bus_id',
    required: false,
    includeIfNull: false,
  )


  final String? busId;



      /// Confirms token is now garbage
  @JsonKey(
    
    name: r'activation_token_destroyed',
    required: true,
    includeIfNull: false,
  )


  final bool activationTokenDestroyed;





    @override
    bool operator ==(Object other) => identical(this, other) || other is KioskActivationResponse &&
      other.message == message &&
      other.access == access &&
      other.refresh == refresh &&
      other.kioskId == kioskId &&
      other.busId == busId &&
      other.activationTokenDestroyed == activationTokenDestroyed;

    @override
    int get hashCode =>
        message.hashCode +
        access.hashCode +
        refresh.hashCode +
        kioskId.hashCode +
        (busId == null ? 0 : busId.hashCode) +
        activationTokenDestroyed.hashCode;

  factory KioskActivationResponse.fromJson(Map<String, dynamic> json) => _$KioskActivationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$KioskActivationResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

