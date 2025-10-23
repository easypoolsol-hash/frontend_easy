import 'package:frontend_easy_api/src/model/api_key.dart';
import 'package:frontend_easy_api/src/model/api_key_create.dart';
import 'package:frontend_easy_api/src/model/api_v1_kiosk_boarding_create200_response.dart';
import 'package:frontend_easy_api/src/model/attendance_record.dart';
import 'package:frontend_easy_api/src/model/audit_log.dart';
import 'package:frontend_easy_api/src/model/boarding_event.dart';
import 'package:frontend_easy_api/src/model/boarding_event_create.dart';
import 'package:frontend_easy_api/src/model/bus.dart';
import 'package:frontend_easy_api/src/model/bus_basic.dart';
import 'package:frontend_easy_api/src/model/bus_location.dart';
import 'package:frontend_easy_api/src/model/check_updates_response.dart';
import 'package:frontend_easy_api/src/model/device_log.dart';
import 'package:frontend_easy_api/src/model/health_data.dart';
import 'package:frontend_easy_api/src/model/heartbeat.dart';
import 'package:frontend_easy_api/src/model/kiosk_activation.dart';
import 'package:frontend_easy_api/src/model/kiosk_activation_response.dart';
import 'package:frontend_easy_api/src/model/kiosk_log200_response.dart';
import 'package:frontend_easy_api/src/model/paginated_api_key_list.dart';
import 'package:frontend_easy_api/src/model/paginated_attendance_record_list.dart';
import 'package:frontend_easy_api/src/model/paginated_audit_log_list.dart';
import 'package:frontend_easy_api/src/model/paginated_boarding_event_list.dart';
import 'package:frontend_easy_api/src/model/paginated_bus_list.dart';
import 'package:frontend_easy_api/src/model/paginated_parent_list.dart';
import 'package:frontend_easy_api/src/model/paginated_role_list.dart';
import 'package:frontend_easy_api/src/model/paginated_route_list.dart';
import 'package:frontend_easy_api/src/model/paginated_school_list.dart';
import 'package:frontend_easy_api/src/model/paginated_student_list.dart';
import 'package:frontend_easy_api/src/model/paginated_student_parent_list.dart';
import 'package:frontend_easy_api/src/model/paginated_student_photo_list.dart';
import 'package:frontend_easy_api/src/model/paginated_user_list.dart';
import 'package:frontend_easy_api/src/model/parent.dart';
import 'package:frontend_easy_api/src/model/patched_api_key.dart';
import 'package:frontend_easy_api/src/model/patched_boarding_event.dart';
import 'package:frontend_easy_api/src/model/patched_bus.dart';
import 'package:frontend_easy_api/src/model/patched_parent.dart';
import 'package:frontend_easy_api/src/model/patched_route.dart';
import 'package:frontend_easy_api/src/model/patched_school.dart';
import 'package:frontend_easy_api/src/model/patched_student.dart';
import 'package:frontend_easy_api/src/model/patched_student_parent.dart';
import 'package:frontend_easy_api/src/model/patched_student_photo.dart';
import 'package:frontend_easy_api/src/model/patched_user.dart';
import 'package:frontend_easy_api/src/model/role.dart';
import 'package:frontend_easy_api/src/model/route.dart';
import 'package:frontend_easy_api/src/model/school.dart';
import 'package:frontend_easy_api/src/model/student.dart';
import 'package:frontend_easy_api/src/model/student_parent.dart';
import 'package:frontend_easy_api/src/model/student_photo.dart';
import 'package:frontend_easy_api/src/model/token_obtain_pair.dart';
import 'package:frontend_easy_api/src/model/token_refresh_request.dart';
import 'package:frontend_easy_api/src/model/token_refresh_response.dart';
import 'package:frontend_easy_api/src/model/user.dart';
import 'package:frontend_easy_api/src/model/user_create.dart';

final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

  ReturnType deserialize<ReturnType, BaseType>(dynamic value, String targetType, {bool growable= true}) {
      switch (targetType) {
        case 'String':
          return '$value' as ReturnType;
        case 'int':
          return (value is int ? value : int.parse('$value')) as ReturnType;
        case 'bool':
          if (value is bool) {
            return value as ReturnType;
          }
          final valueString = '$value'.toLowerCase();
          return (valueString == 'true' || valueString == '1') as ReturnType;
        case 'double':
          return (value is double ? value : double.parse('$value')) as ReturnType;
        case 'APIKey':
          return APIKey.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'APIKeyCreate':
          return APIKeyCreate.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ApiV1KioskBoardingCreate200Response':
          return ApiV1KioskBoardingCreate200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AttendanceRecord':
          return AttendanceRecord.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AuditLog':
          return AuditLog.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BoardingEvent':
          return BoardingEvent.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BoardingEventCreate':
          return BoardingEventCreate.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Bus':
          return Bus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BusBasic':
          return BusBasic.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BusLocation':
          return BusLocation.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CheckUpdatesResponse':
          return CheckUpdatesResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DeviceLog':
          return DeviceLog.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'HealthData':
          return HealthData.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Heartbeat':
          return Heartbeat.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'KioskActivation':
          return KioskActivation.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'KioskActivationResponse':
          return KioskActivationResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'KioskLog200Response':
          return KioskLog200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedAPIKeyList':
          return PaginatedAPIKeyList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedAttendanceRecordList':
          return PaginatedAttendanceRecordList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedAuditLogList':
          return PaginatedAuditLogList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedBoardingEventList':
          return PaginatedBoardingEventList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedBusList':
          return PaginatedBusList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedParentList':
          return PaginatedParentList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedRoleList':
          return PaginatedRoleList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedRouteList':
          return PaginatedRouteList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedSchoolList':
          return PaginatedSchoolList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedStudentList':
          return PaginatedStudentList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedStudentParentList':
          return PaginatedStudentParentList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedStudentPhotoList':
          return PaginatedStudentPhotoList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedUserList':
          return PaginatedUserList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Parent':
          return Parent.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedAPIKey':
          return PatchedAPIKey.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedBoardingEvent':
          return PatchedBoardingEvent.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedBus':
          return PatchedBus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedParent':
          return PatchedParent.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedRoute':
          return PatchedRoute.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedSchool':
          return PatchedSchool.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedStudent':
          return PatchedStudent.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedStudentParent':
          return PatchedStudentParent.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedStudentPhoto':
          return PatchedStudentPhoto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedUser':
          return PatchedUser.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Role':
          return Role.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Route':
          return Route.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'School':
          return School.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Student':
          return Student.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'StudentParent':
          return StudentParent.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'StudentPhoto':
          return StudentPhoto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TokenObtainPair':
          return TokenObtainPair.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TokenRefreshRequest':
          return TokenRefreshRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TokenRefreshResponse':
          return TokenRefreshResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'User':
          return User.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserCreate':
          return UserCreate.fromJson(value as Map<String, dynamic>) as ReturnType;
        default:
          RegExpMatch? match;

          if (value is List && (match = _regList.firstMatch(targetType)) != null) {
            targetType = match![1]!; // ignore: parameter_assignments
            return value
              .map<BaseType>((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable))
              .toList(growable: growable) as ReturnType;
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)) != null) {
            targetType = match![1]!; // ignore: parameter_assignments
            return value
              .map<BaseType>((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable))
              .toSet() as ReturnType;
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)) != null) {
            targetType = match![1]!.trim(); // ignore: parameter_assignments
            return Map<String, BaseType>.fromIterables(
              value.keys as Iterable<String>,
              value.values.map((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable)),
            ) as ReturnType;
          }
          break;
    }
    throw Exception('Cannot deserialize');
  }
