//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/api_api.dart';
part 'api/parents_api.dart';

part 'model/api_key.dart';
part 'model/api_key_create.dart';
part 'model/api_v1_kiosk_boarding_create200_response.dart';
part 'model/attendance_record.dart';
part 'model/audit_log.dart';
part 'model/boarding_event.dart';
part 'model/boarding_event_create.dart';
part 'model/boarding_event_nested.dart';
part 'model/bus.dart';
part 'model/bus_basic.dart';
part 'model/bus_location.dart';
part 'model/check_updates_response.dart';
part 'model/dashboard_stats.dart';
part 'model/dashboard_students_response.dart';
part 'model/device_log.dart';
part 'model/group.dart';
part 'model/health_data.dart';
part 'model/heartbeat.dart';
part 'model/kiosk.dart';
part 'model/kiosk_log200_response.dart';
part 'model/paginated_api_key_list.dart';
part 'model/paginated_attendance_record_list.dart';
part 'model/paginated_audit_log_list.dart';
part 'model/paginated_boarding_event_list.dart';
part 'model/paginated_bus_list.dart';
part 'model/paginated_device_log_list.dart';
part 'model/paginated_group_list.dart';
part 'model/paginated_kiosk_list.dart';
part 'model/paginated_parent_list.dart';
part 'model/paginated_route_list.dart';
part 'model/paginated_school_list.dart';
part 'model/paginated_student_list.dart';
part 'model/paginated_student_parent_list.dart';
part 'model/paginated_student_photo_list.dart';
part 'model/paginated_user_list.dart';
part 'model/parent.dart';
part 'model/parent_bus_locations_response.dart';
part 'model/patched_api_key.dart';
part 'model/patched_boarding_event.dart';
part 'model/patched_bus.dart';
part 'model/patched_kiosk.dart';
part 'model/patched_parent.dart';
part 'model/patched_route.dart';
part 'model/patched_school.dart';
part 'model/patched_student.dart';
part 'model/patched_student_parent.dart';
part 'model/patched_student_photo.dart';
part 'model/patched_user.dart';
part 'model/route.dart';
part 'model/route_stop.dart';
part 'model/school.dart';
part 'model/student.dart';
part 'model/student_activity.dart';
part 'model/student_parent.dart';
part 'model/student_photo.dart';
part 'model/user.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
