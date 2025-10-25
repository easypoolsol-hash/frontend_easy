// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kiosk_activation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KioskActivation _$KioskActivationFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'KioskActivation',
      json,
      ($checkedConvert) {
        $checkKeys(json, requiredKeys: const ['kiosk_id', 'activation_token']);
        final val = KioskActivation(
          kioskId: $checkedConvert('kiosk_id', (v) => v as String),
          activationToken: $checkedConvert(
            'activation_token',
            (v) => v as String,
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'kioskId': 'kiosk_id',
        'activationToken': 'activation_token',
      },
    );

Map<String, dynamic> _$KioskActivationToJson(KioskActivation instance) =>
    <String, dynamic>{
      'kiosk_id': instance.kioskId,
      'activation_token': instance.activationToken,
    };
