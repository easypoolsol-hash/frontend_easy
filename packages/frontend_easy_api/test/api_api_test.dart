//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for ApiApi
void main() {
  // final instance = ApiApi();

  group('tests for ApiApi', () {
    //Future<APIKeyCreate> apiV1ApiKeysCreate(APIKeyCreate aPIKeyCreate) async
    test('test apiV1ApiKeysCreate', () async {
      // TODO
    });

    //Future apiV1ApiKeysDestroy(String keyId) async
    test('test apiV1ApiKeysDestroy', () async {
      // TODO
    });

    //Future<PaginatedAPIKeyList> apiV1ApiKeysList({ String ordering, int page, String search }) async
    test('test apiV1ApiKeysList', () async {
      // TODO
    });

    //Future<APIKey> apiV1ApiKeysPartialUpdate(String keyId, { PatchedAPIKey patchedAPIKey }) async
    test('test apiV1ApiKeysPartialUpdate', () async {
      // TODO
    });

    //Future<APIKey> apiV1ApiKeysRetrieve(String keyId) async
    test('test apiV1ApiKeysRetrieve', () async {
      // TODO
    });

    //Future<APIKey> apiV1ApiKeysRevokeCreate(String keyId, APIKey aPIKey) async
    test('test apiV1ApiKeysRevokeCreate', () async {
      // TODO
    });

    //Future<APIKey> apiV1ApiKeysUpdate(String keyId, APIKey aPIKey) async
    test('test apiV1ApiKeysUpdate', () async {
      // TODO
    });

    // Read-only ViewSet for attendance records
    //
    //Future<PaginatedAttendanceRecordList> apiV1AttendanceList({ DateTime date, int page, String status, String student }) async
    test('test apiV1AttendanceList', () async {
      // TODO
    });

    // Read-only ViewSet for attendance records
    //
    //Future<AttendanceRecord> apiV1AttendanceRetrieve(String recordId) async
    test('test apiV1AttendanceRetrieve', () async {
      // TODO
    });

    // Get attendance history for a specific student
    //
    //Future<AttendanceRecord> apiV1AttendanceStudentRetrieve(String studentId) async
    test('test apiV1AttendanceStudentRetrieve', () async {
      // TODO
    });

    // Get attendance summary for date range
    //
    //Future<AttendanceRecord> apiV1AttendanceSummaryRetrieve() async
    test('test apiV1AttendanceSummaryRetrieve', () async {
      // TODO
    });

    //Future<PaginatedAuditLogList> apiV1AuditLogsList({ String ordering, int page, String search }) async
    test('test apiV1AuditLogsList', () async {
      // TODO
    });

    //Future<AuditLog> apiV1AuditLogsRetrieve(int logId) async
    test('test apiV1AuditLogsRetrieve', () async {
      // TODO
    });

    // Takes a set of user credentials and returns an access and refresh JSON web token pair to prove the authentication of those credentials.
    //
    //Future<TokenObtainPair> apiV1AuthTokenCreate(TokenObtainPair tokenObtainPair) async
    test('test apiV1AuthTokenCreate', () async {
      // TODO
    });

    //      Custom TokenRefreshView that supports both regular JWT and kiosk JWT tokens.      **Token Rotation Security:**     - Accepts: refresh token only     - Returns: NEW access token (15 min) + NEW refresh token (60 days)     - Old refresh token is immediately blacklisted (cannot be reused)     
    //
    //Future<TokenRefreshResponse> apiV1AuthTokenRefreshCreate(TokenRefreshRequest tokenRefreshRequest) async
    test('test apiV1AuthTokenRefreshCreate', () async {
      // TODO
    });

    // Bulk create boarding events (for high-throughput kiosk operations)
    //
    //Future<BoardingEvent> apiV1BoardingEventsBulkCreate(BoardingEvent boardingEvent) async
    test('test apiV1BoardingEventsBulkCreate', () async {
      // TODO
    });

    // ViewSet for boarding events
    //
    //Future<BoardingEventCreate> apiV1BoardingEventsCreate(BoardingEventCreate boardingEventCreate) async
    test('test apiV1BoardingEventsCreate', () async {
      // TODO
    });

    // ViewSet for boarding events
    //
    //Future apiV1BoardingEventsDestroy(String eventId) async
    test('test apiV1BoardingEventsDestroy', () async {
      // TODO
    });

    // ViewSet for boarding events
    //
    //Future<PaginatedBoardingEventList> apiV1BoardingEventsList({ String busRoute, String kioskId, int page, String student, DateTime timestamp }) async
    test('test apiV1BoardingEventsList', () async {
      // TODO
    });

    // ViewSet for boarding events
    //
    //Future<BoardingEvent> apiV1BoardingEventsPartialUpdate(String eventId, { PatchedBoardingEvent patchedBoardingEvent }) async
    test('test apiV1BoardingEventsPartialUpdate', () async {
      // TODO
    });

    // Get recent boarding events for dashboard
    //
    //Future<BoardingEvent> apiV1BoardingEventsRecentRetrieve() async
    test('test apiV1BoardingEventsRecentRetrieve', () async {
      // TODO
    });

    // ViewSet for boarding events
    //
    //Future<BoardingEvent> apiV1BoardingEventsRetrieve(String eventId) async
    test('test apiV1BoardingEventsRetrieve', () async {
      // TODO
    });

    // ViewSet for boarding events
    //
    //Future<BoardingEvent> apiV1BoardingEventsUpdate(String eventId, BoardingEvent boardingEvent) async
    test('test apiV1BoardingEventsUpdate', () async {
      // TODO
    });

    // Bulk assign students to buses
    //
    //Future<Bus> apiV1BusesAssignStudentsCreate(Bus bus) async
    test('test apiV1BusesAssignStudentsCreate', () async {
      // TODO
    });

    // ViewSet for buses
    //
    //Future<Bus> apiV1BusesCreate(Bus bus) async
    test('test apiV1BusesCreate', () async {
      // TODO
    });

    // ViewSet for buses
    //
    //Future apiV1BusesDestroy(String busId) async
    test('test apiV1BusesDestroy', () async {
      // TODO
    });

    // ViewSet for buses
    //
    //Future<PaginatedBusList> apiV1BusesList({ String deviceId, int page, String route, String status }) async
    test('test apiV1BusesList', () async {
      // TODO
    });

    // ViewSet for buses
    //
    //Future<Bus> apiV1BusesPartialUpdate(String busId, { PatchedBus patchedBus }) async
    test('test apiV1BusesPartialUpdate', () async {
      // TODO
    });

    // ViewSet for buses
    //
    //Future<Bus> apiV1BusesRetrieve(String busId) async
    test('test apiV1BusesRetrieve', () async {
      // TODO
    });

    // Get all students assigned to this bus
    //
    //Future<Bus> apiV1BusesStudentsRetrieve(String busId) async
    test('test apiV1BusesStudentsRetrieve', () async {
      // TODO
    });

    // ViewSet for buses
    //
    //Future<Bus> apiV1BusesUpdate(String busId, Bus bus) async
    test('test apiV1BusesUpdate', () async {
      // TODO
    });

    // Get fleet utilization report
    //
    //Future<Bus> apiV1BusesUtilizationRetrieve() async
    test('test apiV1BusesUtilizationRetrieve', () async {
      // TODO
    });

    // Student boarding endpoint - returns immediate approval and schedules background processing
    //
    //Future<ApiV1KioskBoardingCreate200Response> apiV1KioskBoardingCreate({ Map<String, Object> requestBody }) async
    test('test apiV1KioskBoardingCreate', () async {
      // TODO
    });

    //Future<Parent> apiV1ParentsCreate(Parent parent) async
    test('test apiV1ParentsCreate', () async {
      // TODO
    });

    //Future apiV1ParentsDestroy(String parentId) async
    test('test apiV1ParentsDestroy', () async {
      // TODO
    });

    //Future<PaginatedParentList> apiV1ParentsList({ String ordering, int page, String search }) async
    test('test apiV1ParentsList', () async {
      // TODO
    });

    //Future<Parent> apiV1ParentsPartialUpdate(String parentId, { PatchedParent patchedParent }) async
    test('test apiV1ParentsPartialUpdate', () async {
      // TODO
    });

    //Future<Parent> apiV1ParentsRetrieve(String parentId) async
    test('test apiV1ParentsRetrieve', () async {
      // TODO
    });

    //Future<Parent> apiV1ParentsStudentsRetrieve(String parentId) async
    test('test apiV1ParentsStudentsRetrieve', () async {
      // TODO
    });

    //Future<Parent> apiV1ParentsUpdate(String parentId, Parent parent) async
    test('test apiV1ParentsUpdate', () async {
      // TODO
    });

    //Future<PaginatedRoleList> apiV1RolesList({ String ordering, int page, String search }) async
    test('test apiV1RolesList', () async {
      // TODO
    });

    //Future<Role> apiV1RolesRetrieve(String roleId) async
    test('test apiV1RolesRetrieve', () async {
      // TODO
    });

    // Get all buses assigned to this route
    //
    //Future<Route> apiV1RoutesBusesRetrieve(String routeId) async
    test('test apiV1RoutesBusesRetrieve', () async {
      // TODO
    });

    // ViewSet for bus routes
    //
    //Future<Route> apiV1RoutesCreate(Route route) async
    test('test apiV1RoutesCreate', () async {
      // TODO
    });

    // ViewSet for bus routes
    //
    //Future apiV1RoutesDestroy(String routeId) async
    test('test apiV1RoutesDestroy', () async {
      // TODO
    });

    // ViewSet for bus routes
    //
    //Future<PaginatedRouteList> apiV1RoutesList({ bool isActive, int page }) async
    test('test apiV1RoutesList', () async {
      // TODO
    });

    // ViewSet for bus routes
    //
    //Future<Route> apiV1RoutesPartialUpdate(String routeId, { PatchedRoute patchedRoute }) async
    test('test apiV1RoutesPartialUpdate', () async {
      // TODO
    });

    // ViewSet for bus routes
    //
    //Future<Route> apiV1RoutesRetrieve(String routeId) async
    test('test apiV1RoutesRetrieve', () async {
      // TODO
    });

    // Get all students assigned to buses on this route
    //
    //Future<Route> apiV1RoutesStudentsRetrieve(String routeId) async
    test('test apiV1RoutesStudentsRetrieve', () async {
      // TODO
    });

    // ViewSet for bus routes
    //
    //Future<Route> apiV1RoutesUpdate(String routeId, Route route) async
    test('test apiV1RoutesUpdate', () async {
      // TODO
    });

    //Future<School> apiV1SchoolsCreate(School school) async
    test('test apiV1SchoolsCreate', () async {
      // TODO
    });

    //Future apiV1SchoolsDestroy(String schoolId) async
    test('test apiV1SchoolsDestroy', () async {
      // TODO
    });

    //Future<PaginatedSchoolList> apiV1SchoolsList({ String ordering, int page, String search }) async
    test('test apiV1SchoolsList', () async {
      // TODO
    });

    //Future<School> apiV1SchoolsPartialUpdate(String schoolId, { PatchedSchool patchedSchool }) async
    test('test apiV1SchoolsPartialUpdate', () async {
      // TODO
    });

    //Future<School> apiV1SchoolsRetrieve(String schoolId) async
    test('test apiV1SchoolsRetrieve', () async {
      // TODO
    });

    //Future<School> apiV1SchoolsUpdate(String schoolId, School school) async
    test('test apiV1SchoolsUpdate', () async {
      // TODO
    });

    //Future<StudentParent> apiV1StudentParentsCreate(StudentParent studentParent) async
    test('test apiV1StudentParentsCreate', () async {
      // TODO
    });

    //Future apiV1StudentParentsDestroy(int id) async
    test('test apiV1StudentParentsDestroy', () async {
      // TODO
    });

    //Future<PaginatedStudentParentList> apiV1StudentParentsList({ String ordering, int page, String search }) async
    test('test apiV1StudentParentsList', () async {
      // TODO
    });

    //Future<StudentParent> apiV1StudentParentsPartialUpdate(int id, { PatchedStudentParent patchedStudentParent }) async
    test('test apiV1StudentParentsPartialUpdate', () async {
      // TODO
    });

    //Future<StudentParent> apiV1StudentParentsRetrieve(int id) async
    test('test apiV1StudentParentsRetrieve', () async {
      // TODO
    });

    //Future<StudentParent> apiV1StudentParentsUpdate(int id, StudentParent studentParent) async
    test('test apiV1StudentParentsUpdate', () async {
      // TODO
    });

    //Future<StudentPhoto> apiV1StudentPhotosCreate(StudentPhoto studentPhoto) async
    test('test apiV1StudentPhotosCreate', () async {
      // TODO
    });

    //Future apiV1StudentPhotosDestroy(String photoId) async
    test('test apiV1StudentPhotosDestroy', () async {
      // TODO
    });

    //Future<PaginatedStudentPhotoList> apiV1StudentPhotosList({ String ordering, int page, String search }) async
    test('test apiV1StudentPhotosList', () async {
      // TODO
    });

    //Future<StudentPhoto> apiV1StudentPhotosPartialUpdate(String photoId, { PatchedStudentPhoto patchedStudentPhoto }) async
    test('test apiV1StudentPhotosPartialUpdate', () async {
      // TODO
    });

    //Future<StudentPhoto> apiV1StudentPhotosRetrieve(String photoId) async
    test('test apiV1StudentPhotosRetrieve', () async {
      // TODO
    });

    //Future<StudentPhoto> apiV1StudentPhotosSetPrimaryCreate(String photoId, StudentPhoto studentPhoto) async
    test('test apiV1StudentPhotosSetPrimaryCreate', () async {
      // TODO
    });

    //Future<StudentPhoto> apiV1StudentPhotosUpdate(String photoId, StudentPhoto studentPhoto) async
    test('test apiV1StudentPhotosUpdate', () async {
      // TODO
    });

    //Future<Student> apiV1StudentsAssignBusCreate(String studentId, Student student) async
    test('test apiV1StudentsAssignBusCreate', () async {
      // TODO
    });

    //Future<Student> apiV1StudentsCreate(Student student) async
    test('test apiV1StudentsCreate', () async {
      // TODO
    });

    //Future apiV1StudentsDestroy(String studentId) async
    test('test apiV1StudentsDestroy', () async {
      // TODO
    });

    //Future<PaginatedStudentList> apiV1StudentsList({ String ordering, int page, String search }) async
    test('test apiV1StudentsList', () async {
      // TODO
    });

    //Future<Student> apiV1StudentsParentsRetrieve(String studentId) async
    test('test apiV1StudentsParentsRetrieve', () async {
      // TODO
    });

    //Future<Student> apiV1StudentsPartialUpdate(String studentId, { PatchedStudent patchedStudent }) async
    test('test apiV1StudentsPartialUpdate', () async {
      // TODO
    });

    //Future<Student> apiV1StudentsRetrieve(String studentId) async
    test('test apiV1StudentsRetrieve', () async {
      // TODO
    });

    //Future<Student> apiV1StudentsUpdate(String studentId, Student student) async
    test('test apiV1StudentsUpdate', () async {
      // TODO
    });

    //Future<UserCreate> apiV1UsersCreate(UserCreate userCreate) async
    test('test apiV1UsersCreate', () async {
      // TODO
    });

    //Future apiV1UsersDestroy(String userId) async
    test('test apiV1UsersDestroy', () async {
      // TODO
    });

    //Future<PaginatedUserList> apiV1UsersList({ String ordering, int page, String search }) async
    test('test apiV1UsersList', () async {
      // TODO
    });

    //Future<User> apiV1UsersLoginCreate(User user) async
    test('test apiV1UsersLoginCreate', () async {
      // TODO
    });

    // Logout endpoint - Blacklists refresh token (Fortune 500 standard)  Security: Prevents token reuse even if stolen  Request Body: { \"refresh\": \"...\" } Returns: 200 { \"message\": \"Logout successful\" }
    //
    //Future<User> apiV1UsersLogoutCreate(User user) async
    test('test apiV1UsersLogoutCreate', () async {
      // TODO
    });

    // Get current authenticated user information
    //
    //Future<User> apiV1UsersMeRetrieve() async
    test('test apiV1UsersMeRetrieve', () async {
      // TODO
    });

    //Future<User> apiV1UsersPartialUpdate(String userId, { PatchedUser patchedUser }) async
    test('test apiV1UsersPartialUpdate', () async {
      // TODO
    });

    //Future<User> apiV1UsersRetrieve(String userId) async
    test('test apiV1UsersRetrieve', () async {
      // TODO
    });

    //Future<User> apiV1UsersUpdate(String userId, User user) async
    test('test apiV1UsersUpdate', () async {
      // TODO
    });

    // Check if kiosk needs database update
    //
    //Future<CheckUpdatesResponse> kioskCheckUpdates(String kioskId, { String lastSyncHash }) async
    test('test kioskCheckUpdates', () async {
      // TODO
    });

    // Download kiosk database snapshot (binary SQLite file). Returns raw binary data with x-snapshot-checksum header for verification.
    //
    //Future<MultipartFile> kioskDownloadSnapshot(String kioskId) async
    test('test kioskDownloadSnapshot', () async {
      // TODO
    });

    // Report kiosk health and sync status
    //
    //Future kioskHeartbeat(String kioskId, Heartbeat heartbeat) async
    test('test kioskHeartbeat', () async {
      // TODO
    });

    // Kiosk logging endpoint for device log submission
    //
    //Future<KioskLog200Response> kioskLog(DeviceLog deviceLog) async
    test('test kioskLog', () async {
      // TODO
    });

    // Update bus GPS location. Kiosk sends location when bus moves significantly or every 2 minutes.
    //
    //Future<BusLocation> kioskUpdateLocation(String kioskId, BusLocation busLocation) async
    test('test kioskUpdateLocation', () async {
      // TODO
    });

  });
}
