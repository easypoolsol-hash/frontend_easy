// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kiosk_activation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KioskActivationResponse _$KioskActivationResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'KioskActivationResponse',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'message',
        'access',
        'refresh',
        'kiosk_id',
        'activation_token_destroyed',
      ],
    );
    final val = KioskActivationResponse(
      message: $checkedConvert('message', (v) => v as String),
      access: $checkedConvert('access', (v) => v as String),
      refresh: $checkedConvert('refresh', (v) => v as String),
      kioskId: $checkedConvert('kiosk_id', (v) => v as String),
      busId: $checkedConvert('bus_id', (v) => v as String?),
      activationTokenDestroyed: $checkedConvert(
        'activation_token_destroyed',
        (v) => v as bool,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'kioskId': 'kiosk_id',
    'busId': 'bus_id',
    'activationTokenDestroyed': 'activation_token_destroyed',
  },
);

Map<String, dynamic> _$KioskActivationResponseToJson(
  KioskActivationResponse instance,
) => <String, dynamic>{
  'message': instance.message,
  'access': instance.access,
  'refresh': instance.refresh,
  'kiosk_id': instance.kioskId,
  if (instance.busId case final value?) 'bus_id': value,
  'activation_token_destroyed': instance.activationTokenDestroyed,
};
