// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_kiosk_boarding_create200_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiV1KioskBoardingCreate200Response
_$ApiV1KioskBoardingCreate200ResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ApiV1KioskBoardingCreate200Response', json, (
      $checkedConvert,
    ) {
      final val = ApiV1KioskBoardingCreate200Response(
        status: $checkedConvert('status', (v) => v as String?),
        message: $checkedConvert('message', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$ApiV1KioskBoardingCreate200ResponseToJson(
  ApiV1KioskBoardingCreate200Response instance,
) => <String, dynamic>{
  if (instance.status case final value?) 'status': value,
  if (instance.message case final value?) 'message': value,
};
