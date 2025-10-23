//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'kiosk_activation.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class KioskActivation {
  /// Returns a new [KioskActivation] instance.
  KioskActivation({

    required  this.kioskId,

    required  this.activationToken,
  });

      /// Kiosk identifier (e.g., KIOSK-SCHOOL-001)
  @JsonKey(
    
    name: r'kiosk_id',
    required: true,
    includeIfNull: false,
  )


  final String kioskId;



      /// One-time activation token (destroyed after use)
  @JsonKey(
    
    name: r'activation_token',
    required: true,
    includeIfNull: false,
  )


  final String activationToken;





    @override
    bool operator ==(Object other) => identical(this, other) || other is KioskActivation &&
      other.kioskId == kioskId &&
      other.activationToken == activationToken;

    @override
    int get hashCode =>
        kioskId.hashCode +
        activationToken.hashCode;

  factory KioskActivation.fromJson(Map<String, dynamic> json) => _$KioskActivationFromJson(json);

  Map<String, dynamic> toJson() => _$KioskActivationToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

