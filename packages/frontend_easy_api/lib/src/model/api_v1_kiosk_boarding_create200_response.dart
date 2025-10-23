//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'api_v1_kiosk_boarding_create200_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiV1KioskBoardingCreate200Response {
  /// Returns a new [ApiV1KioskBoardingCreate200Response] instance.
  ApiV1KioskBoardingCreate200Response({

     this.status,

     this.message,
  });

  @JsonKey(

    name: r'status',
    required: false,
    includeIfNull: false,
  )


  final String? status;



  @JsonKey(

    name: r'message',
    required: false,
    includeIfNull: false,
  )


  final String? message;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiV1KioskBoardingCreate200Response &&
      other.status == status &&
      other.message == message;

    @override
    int get hashCode =>
        status.hashCode +
        message.hashCode;

  factory ApiV1KioskBoardingCreate200Response.fromJson(Map<String, dynamic> json) => _$ApiV1KioskBoardingCreate200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiV1KioskBoardingCreate200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}
