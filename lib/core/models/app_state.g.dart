// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppState _$AppStateFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_AppState', json, ($checkedConvert) {
      final val = _AppState(
        userId: $checkedConvert('userId', (v) => v as String),
        isOnline: $checkedConvert('isOnline', (v) => v as bool),
        isDarkMode: $checkedConvert('isDarkMode', (v) => v as bool? ?? false),
        unreadNotifications: $checkedConvert(
          'unreadNotifications',
          (v) => (v as num?)?.toInt() ?? 0,
        ),
      );
      return val;
    });

Map<String, dynamic> _$AppStateToJson(_AppState instance) => <String, dynamic>{
  'userId': instance.userId,
  'isOnline': instance.isOnline,
  'isDarkMode': instance.isDarkMode,
  'unreadNotifications': instance.unreadNotifications,
};
