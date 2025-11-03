// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_health.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Operational _$OperationalFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Operational', json, ($checkedConvert) {
      final val = Operational(
        $type: $checkedConvert('runtimeType', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {r'$type': 'runtimeType'});

Map<String, dynamic> _$OperationalToJson(Operational instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

Degraded _$DegradedFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Degraded', json, ($checkedConvert) {
      final val = Degraded(
        userMessage: $checkedConvert('userMessage', (v) => v as String),
        lastSuccessfulSync: $checkedConvert(
          'lastSuccessfulSync',
          (v) => DateTime.parse(v as String),
        ),
        $type: $checkedConvert('runtimeType', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {r'$type': 'runtimeType'});

Map<String, dynamic> _$DegradedToJson(Degraded instance) => <String, dynamic>{
  'userMessage': instance.userMessage,
  'lastSuccessfulSync': instance.lastSuccessfulSync.toIso8601String(),
  'runtimeType': instance.$type,
};
