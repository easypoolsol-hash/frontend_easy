//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:frontend_easy_api/src/date_serializer.dart';
import 'package:frontend_easy_api/src/model/date.dart';

import 'package:frontend_easy_api/src/model/api_key.dart';
import 'package:frontend_easy_api/src/model/api_key_create.dart';
import 'package:frontend_easy_api/src/model/api_v1_kiosk_boarding_create200_response.dart';
import 'package:frontend_easy_api/src/model/attendance_record.dart';
import 'package:frontend_easy_api/src/model/audit_log.dart';
import 'package:frontend_easy_api/src/model/boarding_event.dart';
import 'package:frontend_easy_api/src/model/boarding_event_create.dart';
import 'package:frontend_easy_api/src/model/boarding_event_nested.dart';
import 'package:frontend_easy_api/src/model/bus.dart';
import 'package:frontend_easy_api/src/model/bus_basic.dart';
import 'package:frontend_easy_api/src/model/bus_location.dart';
import 'package:frontend_easy_api/src/model/check_updates_response.dart';
import 'package:frontend_easy_api/src/model/dashboard_stats.dart';
import 'package:frontend_easy_api/src/model/dashboard_students_response.dart';
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
import 'package:frontend_easy_api/src/model/route_stop.dart';
import 'package:frontend_easy_api/src/model/school.dart';
import 'package:frontend_easy_api/src/model/student.dart';
import 'package:frontend_easy_api/src/model/student_activity.dart';
import 'package:frontend_easy_api/src/model/student_parent.dart';
import 'package:frontend_easy_api/src/model/student_photo.dart';
import 'package:frontend_easy_api/src/model/token_obtain_pair.dart';
import 'package:frontend_easy_api/src/model/token_refresh_request.dart';
import 'package:frontend_easy_api/src/model/token_refresh_response.dart';
import 'package:frontend_easy_api/src/model/user.dart';
import 'package:frontend_easy_api/src/model/user_create.dart';

part 'serializers.g.dart';

@SerializersFor([
  APIKey,
  APIKeyCreate,
  ApiV1KioskBoardingCreate200Response,
  AttendanceRecord,
  AuditLog,
  BoardingEvent,
  BoardingEventCreate,
  BoardingEventNested,
  Bus,
  BusBasic,
  BusLocation,
  CheckUpdatesResponse,
  DashboardStats,
  DashboardStudentsResponse,
  DeviceLog,
  HealthData,
  Heartbeat,
  KioskActivation,
  KioskActivationResponse,
  KioskLog200Response,
  PaginatedAPIKeyList,
  PaginatedAttendanceRecordList,
  PaginatedAuditLogList,
  PaginatedBoardingEventList,
  PaginatedBusList,
  PaginatedParentList,
  PaginatedRoleList,
  PaginatedRouteList,
  PaginatedSchoolList,
  PaginatedStudentList,
  PaginatedStudentParentList,
  PaginatedStudentPhotoList,
  PaginatedUserList,
  Parent,
  PatchedAPIKey,
  PatchedBoardingEvent,
  PatchedBus,
  PatchedParent,
  PatchedRoute,
  PatchedSchool,
  PatchedStudent,
  PatchedStudentParent,
  PatchedStudentPhoto,
  PatchedUser,
  Role,
  Route,
  RouteStop,
  School,
  Student,
  StudentActivity,
  StudentParent,
  StudentPhoto,
  TokenObtainPair,
  TokenRefreshRequest,
  TokenRefreshResponse,
  User,
  UserCreate,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
        () => MapBuilder<String, JsonObject>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
