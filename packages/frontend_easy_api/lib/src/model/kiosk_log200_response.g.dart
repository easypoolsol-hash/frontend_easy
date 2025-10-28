// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kiosk_log200_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KioskLog200Response _$KioskLog200ResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('KioskLog200Response', json, ($checkedConvert) {
      final val = KioskLog200Response(
        status: $checkedConvert('status', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$KioskLog200ResponseToJson(
  KioskLog200Response instance,
) => <String, dynamic>{if (instance.status case final value?) 'status': value};
