# openapi.api.ApiApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1ApiKeysCreate**](ApiApi.md#apiv1apikeyscreate) | **POST** /api/v1/api-keys/ | 
[**apiV1ApiKeysDestroy**](ApiApi.md#apiv1apikeysdestroy) | **DELETE** /api/v1/api-keys/{key_id}/ | 
[**apiV1ApiKeysList**](ApiApi.md#apiv1apikeyslist) | **GET** /api/v1/api-keys/ | 
[**apiV1ApiKeysPartialUpdate**](ApiApi.md#apiv1apikeyspartialupdate) | **PATCH** /api/v1/api-keys/{key_id}/ | 
[**apiV1ApiKeysRetrieve**](ApiApi.md#apiv1apikeysretrieve) | **GET** /api/v1/api-keys/{key_id}/ | 
[**apiV1ApiKeysRevokeCreate**](ApiApi.md#apiv1apikeysrevokecreate) | **POST** /api/v1/api-keys/{key_id}/revoke/ | 
[**apiV1ApiKeysUpdate**](ApiApi.md#apiv1apikeysupdate) | **PUT** /api/v1/api-keys/{key_id}/ | 
[**apiV1AttendanceList**](ApiApi.md#apiv1attendancelist) | **GET** /api/v1/attendance/ | 
[**apiV1AttendanceRetrieve**](ApiApi.md#apiv1attendanceretrieve) | **GET** /api/v1/attendance/{record_id}/ | 
[**apiV1AttendanceStudentRetrieve**](ApiApi.md#apiv1attendancestudentretrieve) | **GET** /api/v1/attendance/student/{student_id}/ | 
[**apiV1AttendanceSummaryRetrieve**](ApiApi.md#apiv1attendancesummaryretrieve) | **GET** /api/v1/attendance/summary/ | 
[**apiV1AuditLogsList**](ApiApi.md#apiv1auditlogslist) | **GET** /api/v1/audit-logs/ | 
[**apiV1AuditLogsRetrieve**](ApiApi.md#apiv1auditlogsretrieve) | **GET** /api/v1/audit-logs/{log_id}/ | 
[**apiV1BoardingEventsBulkCreate**](ApiApi.md#apiv1boardingeventsbulkcreate) | **POST** /api/v1/boarding-events/bulk/ | 
[**apiV1BoardingEventsCreate**](ApiApi.md#apiv1boardingeventscreate) | **POST** /api/v1/boarding-events/ | 
[**apiV1BoardingEventsDestroy**](ApiApi.md#apiv1boardingeventsdestroy) | **DELETE** /api/v1/boarding-events/{event_id}/ | 
[**apiV1BoardingEventsList**](ApiApi.md#apiv1boardingeventslist) | **GET** /api/v1/boarding-events/ | 
[**apiV1BoardingEventsPartialUpdate**](ApiApi.md#apiv1boardingeventspartialupdate) | **PATCH** /api/v1/boarding-events/{event_id}/ | 
[**apiV1BoardingEventsRecentRetrieve**](ApiApi.md#apiv1boardingeventsrecentretrieve) | **GET** /api/v1/boarding-events/recent/ | 
[**apiV1BoardingEventsRetrieve**](ApiApi.md#apiv1boardingeventsretrieve) | **GET** /api/v1/boarding-events/{event_id}/ | 
[**apiV1BoardingEventsUpdate**](ApiApi.md#apiv1boardingeventsupdate) | **PUT** /api/v1/boarding-events/{event_id}/ | 
[**apiV1BusesAssignStudentsCreate**](ApiApi.md#apiv1busesassignstudentscreate) | **POST** /api/v1/buses/assign-students/ | 
[**apiV1BusesCreate**](ApiApi.md#apiv1busescreate) | **POST** /api/v1/buses/ | 
[**apiV1BusesDestroy**](ApiApi.md#apiv1busesdestroy) | **DELETE** /api/v1/buses/{bus_id}/ | 
[**apiV1BusesList**](ApiApi.md#apiv1buseslist) | **GET** /api/v1/buses/ | 
[**apiV1BusesPartialUpdate**](ApiApi.md#apiv1busespartialupdate) | **PATCH** /api/v1/buses/{bus_id}/ | 
[**apiV1BusesRetrieve**](ApiApi.md#apiv1busesretrieve) | **GET** /api/v1/buses/{bus_id}/ | 
[**apiV1BusesStudentsRetrieve**](ApiApi.md#apiv1busesstudentsretrieve) | **GET** /api/v1/buses/{bus_id}/students/ | 
[**apiV1BusesUpdate**](ApiApi.md#apiv1busesupdate) | **PUT** /api/v1/buses/{bus_id}/ | 
[**apiV1BusesUtilizationRetrieve**](ApiApi.md#apiv1busesutilizationretrieve) | **GET** /api/v1/buses/utilization/ | 
[**apiV1DashboardStatsRetrieve**](ApiApi.md#apiv1dashboardstatsretrieve) | **GET** /api/v1/dashboard/stats/ | Get dashboard summary statistics
[**apiV1DashboardStudentsRetrieve**](ApiApi.md#apiv1dashboardstudentsretrieve) | **GET** /api/v1/dashboard/students/ | Get students with boarding events
[**apiV1GeocodeCreate**](ApiApi.md#apiv1geocodecreate) | **POST** /api/v1/geocode/ | 
[**apiV1GroupsList**](ApiApi.md#apiv1groupslist) | **GET** /api/v1/groups/ | 
[**apiV1GroupsRetrieve**](ApiApi.md#apiv1groupsretrieve) | **GET** /api/v1/groups/{id}/ | 
[**apiV1KioskBoardingCreate**](ApiApi.md#apiv1kioskboardingcreate) | **POST** /api/v1/kiosk/boarding/ | 
[**apiV1KiosksCreate**](ApiApi.md#apiv1kioskscreate) | **POST** /api/v1/kiosks/ | 
[**apiV1KiosksDestroy**](ApiApi.md#apiv1kiosksdestroy) | **DELETE** /api/v1/kiosks/{kiosk_id}/ | 
[**apiV1KiosksList**](ApiApi.md#apiv1kioskslist) | **GET** /api/v1/kiosks/ | 
[**apiV1KiosksPartialUpdate**](ApiApi.md#apiv1kioskspartialupdate) | **PATCH** /api/v1/kiosks/{kiosk_id}/ | 
[**apiV1KiosksRetrieve**](ApiApi.md#apiv1kiosksretrieve) | **GET** /api/v1/kiosks/{kiosk_id}/ | 
[**apiV1KiosksUpdate**](ApiApi.md#apiv1kiosksupdate) | **PUT** /api/v1/kiosks/{kiosk_id}/ | 
[**apiV1LogsList**](ApiApi.md#apiv1logslist) | **GET** /api/v1/logs/ | 
[**apiV1LogsRetrieve**](ApiApi.md#apiv1logsretrieve) | **GET** /api/v1/logs/{log_id}/ | 
[**apiV1LogsSummaryRetrieve**](ApiApi.md#apiv1logssummaryretrieve) | **GET** /api/v1/logs/summary/ | 
[**apiV1NotificationsProcessCreate**](ApiApi.md#apiv1notificationsprocesscreate) | **POST** /api/v1/notifications/process/ | 
[**apiV1ParentsCreate**](ApiApi.md#apiv1parentscreate) | **POST** /api/v1/parents/ | 
[**apiV1ParentsDestroy**](ApiApi.md#apiv1parentsdestroy) | **DELETE** /api/v1/parents/{parent_id}/ | 
[**apiV1ParentsList**](ApiApi.md#apiv1parentslist) | **GET** /api/v1/parents/ | 
[**apiV1ParentsMeBusLocationsRetrieve**](ApiApi.md#apiv1parentsmebuslocationsretrieve) | **GET** /api/v1/parents/me/bus-locations/ | 
[**apiV1ParentsMeBusesLocationRetrieve**](ApiApi.md#apiv1parentsmebuseslocationretrieve) | **GET** /api/v1/parents/me/buses/{bus_id}/location/ | 
[**apiV1ParentsMeBusesRetrieve**](ApiApi.md#apiv1parentsmebusesretrieve) | **GET** /api/v1/parents/me/buses/ | 
[**apiV1ParentsMeChildrenList**](ApiApi.md#apiv1parentsmechildrenlist) | **GET** /api/v1/parents/me/children/ | 
[**apiV1ParentsMeFaceEnrollmentStatusRetrieve**](ApiApi.md#apiv1parentsmefaceenrollmentstatusretrieve) | **GET** /api/v1/parents/me/{id}/face-enrollment/status/ | 
[**apiV1ParentsMeFaceEnrollmentSubmitCreate**](ApiApi.md#apiv1parentsmefaceenrollmentsubmitcreate) | **POST** /api/v1/parents/me/{id}/face-enrollment/submit/ | 
[**apiV1ParentsMeFcmTokensCreate**](ApiApi.md#apiv1parentsmefcmtokenscreate) | **POST** /api/v1/parents/me/fcm-tokens/ | 
[**apiV1ParentsMeFcmTokensDestroy**](ApiApi.md#apiv1parentsmefcmtokensdestroy) | **DELETE** /api/v1/parents/me/fcm-tokens/ | 
[**apiV1ParentsMeNotificationPreferencesPartialUpdate**](ApiApi.md#apiv1parentsmenotificationpreferencespartialupdate) | **PATCH** /api/v1/parents/me/notification-preferences/ | 
[**apiV1ParentsMeNotificationPreferencesRetrieve**](ApiApi.md#apiv1parentsmenotificationpreferencesretrieve) | **GET** /api/v1/parents/me/notification-preferences/ | 
[**apiV1ParentsMeNotificationsRetrieve**](ApiApi.md#apiv1parentsmenotificationsretrieve) | **GET** /api/v1/parents/me/notifications/ | 
[**apiV1ParentsMeProfileRetrieve**](ApiApi.md#apiv1parentsmeprofileretrieve) | **GET** /api/v1/parents/me/profile/ | 
[**apiV1ParentsMeReadCreate**](ApiApi.md#apiv1parentsmereadcreate) | **POST** /api/v1/parents/me/{id}/read/ | 
[**apiV1ParentsPartialUpdate**](ApiApi.md#apiv1parentspartialupdate) | **PATCH** /api/v1/parents/{parent_id}/ | 
[**apiV1ParentsRegisterCreate**](ApiApi.md#apiv1parentsregistercreate) | **POST** /api/v1/parents/register/ | 
[**apiV1ParentsRetrieve**](ApiApi.md#apiv1parentsretrieve) | **GET** /api/v1/parents/{parent_id}/ | 
[**apiV1ParentsStudentsRetrieve**](ApiApi.md#apiv1parentsstudentsretrieve) | **GET** /api/v1/parents/{parent_id}/students/ | 
[**apiV1ParentsUpdate**](ApiApi.md#apiv1parentsupdate) | **PUT** /api/v1/parents/{parent_id}/ | 
[**apiV1RoutesBusesRetrieve**](ApiApi.md#apiv1routesbusesretrieve) | **GET** /api/v1/routes/{route_id}/buses/ | 
[**apiV1RoutesCreate**](ApiApi.md#apiv1routescreate) | **POST** /api/v1/routes/ | 
[**apiV1RoutesDestroy**](ApiApi.md#apiv1routesdestroy) | **DELETE** /api/v1/routes/{route_id}/ | 
[**apiV1RoutesList**](ApiApi.md#apiv1routeslist) | **GET** /api/v1/routes/ | 
[**apiV1RoutesPartialUpdate**](ApiApi.md#apiv1routespartialupdate) | **PATCH** /api/v1/routes/{route_id}/ | 
[**apiV1RoutesRetrieve**](ApiApi.md#apiv1routesretrieve) | **GET** /api/v1/routes/{route_id}/ | 
[**apiV1RoutesStudentsRetrieve**](ApiApi.md#apiv1routesstudentsretrieve) | **GET** /api/v1/routes/{route_id}/students/ | 
[**apiV1RoutesUpdate**](ApiApi.md#apiv1routesupdate) | **PUT** /api/v1/routes/{route_id}/ | 
[**apiV1SchoolsCreate**](ApiApi.md#apiv1schoolscreate) | **POST** /api/v1/schools/ | 
[**apiV1SchoolsDestroy**](ApiApi.md#apiv1schoolsdestroy) | **DELETE** /api/v1/schools/{school_id}/ | 
[**apiV1SchoolsList**](ApiApi.md#apiv1schoolslist) | **GET** /api/v1/schools/ | 
[**apiV1SchoolsPartialUpdate**](ApiApi.md#apiv1schoolspartialupdate) | **PATCH** /api/v1/schools/{school_id}/ | 
[**apiV1SchoolsRetrieve**](ApiApi.md#apiv1schoolsretrieve) | **GET** /api/v1/schools/{school_id}/ | 
[**apiV1SchoolsUpdate**](ApiApi.md#apiv1schoolsupdate) | **PUT** /api/v1/schools/{school_id}/ | 
[**apiV1StudentParentsCreate**](ApiApi.md#apiv1studentparentscreate) | **POST** /api/v1/student-parents/ | 
[**apiV1StudentParentsDestroy**](ApiApi.md#apiv1studentparentsdestroy) | **DELETE** /api/v1/student-parents/{id}/ | 
[**apiV1StudentParentsList**](ApiApi.md#apiv1studentparentslist) | **GET** /api/v1/student-parents/ | 
[**apiV1StudentParentsPartialUpdate**](ApiApi.md#apiv1studentparentspartialupdate) | **PATCH** /api/v1/student-parents/{id}/ | 
[**apiV1StudentParentsRetrieve**](ApiApi.md#apiv1studentparentsretrieve) | **GET** /api/v1/student-parents/{id}/ | 
[**apiV1StudentParentsUpdate**](ApiApi.md#apiv1studentparentsupdate) | **PUT** /api/v1/student-parents/{id}/ | 
[**apiV1StudentPhotosCreate**](ApiApi.md#apiv1studentphotoscreate) | **POST** /api/v1/student-photos/ | 
[**apiV1StudentPhotosDestroy**](ApiApi.md#apiv1studentphotosdestroy) | **DELETE** /api/v1/student-photos/{photo_id}/ | 
[**apiV1StudentPhotosList**](ApiApi.md#apiv1studentphotoslist) | **GET** /api/v1/student-photos/ | 
[**apiV1StudentPhotosPartialUpdate**](ApiApi.md#apiv1studentphotospartialupdate) | **PATCH** /api/v1/student-photos/{photo_id}/ | 
[**apiV1StudentPhotosRetrieve**](ApiApi.md#apiv1studentphotosretrieve) | **GET** /api/v1/student-photos/{photo_id}/ | 
[**apiV1StudentPhotosSetPrimaryCreate**](ApiApi.md#apiv1studentphotossetprimarycreate) | **POST** /api/v1/student-photos/{photo_id}/set_primary/ | 
[**apiV1StudentPhotosUpdate**](ApiApi.md#apiv1studentphotosupdate) | **PUT** /api/v1/student-photos/{photo_id}/ | 
[**apiV1StudentsAllRetrieve**](ApiApi.md#apiv1studentsallretrieve) | **GET** /api/v1/students/all/ | Get all registered students
[**apiV1StudentsAssignBusCreate**](ApiApi.md#apiv1studentsassignbuscreate) | **POST** /api/v1/students/{student_id}/assign_bus/ | 
[**apiV1StudentsCreate**](ApiApi.md#apiv1studentscreate) | **POST** /api/v1/students/ | 
[**apiV1StudentsDestroy**](ApiApi.md#apiv1studentsdestroy) | **DELETE** /api/v1/students/{student_id}/ | 
[**apiV1StudentsList**](ApiApi.md#apiv1studentslist) | **GET** /api/v1/students/ | 
[**apiV1StudentsParentsRetrieve**](ApiApi.md#apiv1studentsparentsretrieve) | **GET** /api/v1/students/{student_id}/parents/ | 
[**apiV1StudentsPartialUpdate**](ApiApi.md#apiv1studentspartialupdate) | **PATCH** /api/v1/students/{student_id}/ | 
[**apiV1StudentsRetrieve**](ApiApi.md#apiv1studentsretrieve) | **GET** /api/v1/students/{student_id}/ | 
[**apiV1StudentsUpdate**](ApiApi.md#apiv1studentsupdate) | **PUT** /api/v1/students/{student_id}/ | 
[**apiV1UsersCreate**](ApiApi.md#apiv1userscreate) | **POST** /api/v1/users/ | 
[**apiV1UsersDestroy**](ApiApi.md#apiv1usersdestroy) | **DELETE** /api/v1/users/{user_id}/ | 
[**apiV1UsersList**](ApiApi.md#apiv1userslist) | **GET** /api/v1/users/ | 
[**apiV1UsersMeRetrieve**](ApiApi.md#apiv1usersmeretrieve) | **GET** /api/v1/users/me/ | 
[**apiV1UsersPartialUpdate**](ApiApi.md#apiv1userspartialupdate) | **PATCH** /api/v1/users/{user_id}/ | 
[**apiV1UsersRetrieve**](ApiApi.md#apiv1usersretrieve) | **GET** /api/v1/users/{user_id}/ | 
[**apiV1UsersUpdate**](ApiApi.md#apiv1usersupdate) | **PUT** /api/v1/users/{user_id}/ | 
[**kioskCheckUpdates**](ApiApi.md#kioskcheckupdates) | **GET** /api/v1/kiosks/{kiosk_id}/check-updates/ | 
[**kioskDownloadSnapshot**](ApiApi.md#kioskdownloadsnapshot) | **GET** /api/v1/kiosks/{kiosk_id}/snapshot/ | 
[**kioskGetMe**](ApiApi.md#kioskgetme) | **GET** /api/v1/kiosks/me/ | 
[**kioskHeartbeat**](ApiApi.md#kioskheartbeat) | **POST** /api/v1/kiosks/{kiosk_id}/heartbeat/ | 
[**kioskLog**](ApiApi.md#kiosklog) | **POST** /api/v1/kiosks/logs/ | 
[**kioskTriggerSos**](ApiApi.md#kiosktriggersos) | **POST** /api/v1/kiosks/{kiosk_id}/sos/ | 
[**kioskUpdateLocation**](ApiApi.md#kioskupdatelocation) | **POST** /api/v1/kiosks/{kiosk_id}/location/ | 


# **apiV1ApiKeysCreate**
> APIKeyCreate apiV1ApiKeysCreate(aPIKeyCreate)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final aPIKeyCreate = APIKeyCreate(); // APIKeyCreate | 

try {
    final result = api_instance.apiV1ApiKeysCreate(aPIKeyCreate);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1ApiKeysCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aPIKeyCreate** | [**APIKeyCreate**](APIKeyCreate.md)|  | 

### Return type

[**APIKeyCreate**](APIKeyCreate.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ApiKeysDestroy**
> apiV1ApiKeysDestroy(keyId)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final keyId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this api key.

try {
    api_instance.apiV1ApiKeysDestroy(keyId);
} catch (e) {
    print('Exception when calling ApiApi->apiV1ApiKeysDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyId** | **String**| A UUID string identifying this api key. | 

### Return type

void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ApiKeysList**
> PaginatedAPIKeyList apiV1ApiKeysList(ordering, page, search)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final ordering = ordering_example; // String | Which field to use when ordering the results.
final page = 56; // int | A page number within the paginated result set.
final search = search_example; // String | A search term.

try {
    final result = api_instance.apiV1ApiKeysList(ordering, page, search);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1ApiKeysList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **page** | **int**| A page number within the paginated result set. | [optional] 
 **search** | **String**| A search term. | [optional] 

### Return type

[**PaginatedAPIKeyList**](PaginatedAPIKeyList.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ApiKeysPartialUpdate**
> APIKey apiV1ApiKeysPartialUpdate(keyId, patchedAPIKey)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final keyId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this api key.
final patchedAPIKey = PatchedAPIKey(); // PatchedAPIKey | 

try {
    final result = api_instance.apiV1ApiKeysPartialUpdate(keyId, patchedAPIKey);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1ApiKeysPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyId** | **String**| A UUID string identifying this api key. | 
 **patchedAPIKey** | [**PatchedAPIKey**](PatchedAPIKey.md)|  | [optional] 

### Return type

[**APIKey**](APIKey.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ApiKeysRetrieve**
> APIKey apiV1ApiKeysRetrieve(keyId)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final keyId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this api key.

try {
    final result = api_instance.apiV1ApiKeysRetrieve(keyId);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1ApiKeysRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyId** | **String**| A UUID string identifying this api key. | 

### Return type

[**APIKey**](APIKey.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ApiKeysRevokeCreate**
> APIKey apiV1ApiKeysRevokeCreate(keyId, aPIKey)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final keyId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this api key.
final aPIKey = APIKey(); // APIKey | 

try {
    final result = api_instance.apiV1ApiKeysRevokeCreate(keyId, aPIKey);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1ApiKeysRevokeCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyId** | **String**| A UUID string identifying this api key. | 
 **aPIKey** | [**APIKey**](APIKey.md)|  | 

### Return type

[**APIKey**](APIKey.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ApiKeysUpdate**
> APIKey apiV1ApiKeysUpdate(keyId, aPIKey)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final keyId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this api key.
final aPIKey = APIKey(); // APIKey | 

try {
    final result = api_instance.apiV1ApiKeysUpdate(keyId, aPIKey);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1ApiKeysUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyId** | **String**| A UUID string identifying this api key. | 
 **aPIKey** | [**APIKey**](APIKey.md)|  | 

### Return type

[**APIKey**](APIKey.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AttendanceList**
> PaginatedAttendanceRecordList apiV1AttendanceList(date, page, status, student)



Read-only ViewSet for attendance records  PERMISSION: IsSchoolAdmin (school administrators only)  NOTE: Old permission was IsAuthenticated (too permissive!) Now using AWS-style deny-by-default with explicit permissions.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final date = 2013-10-20; // DateTime | 
final page = 56; // int | A page number within the paginated result set.
final status = status_example; // String | Overall attendance status  * `present` - Present * `absent` - Absent * `partial` - Partial
final student = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.apiV1AttendanceList(date, page, status, student);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1AttendanceList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **DateTime**|  | [optional] 
 **page** | **int**| A page number within the paginated result set. | [optional] 
 **status** | **String**| Overall attendance status  * `present` - Present * `absent` - Absent * `partial` - Partial | [optional] 
 **student** | **String**|  | [optional] 

### Return type

[**PaginatedAttendanceRecordList**](PaginatedAttendanceRecordList.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AttendanceRetrieve**
> AttendanceRecord apiV1AttendanceRetrieve(recordId)



Read-only ViewSet for attendance records  PERMISSION: IsSchoolAdmin (school administrators only)  NOTE: Old permission was IsAuthenticated (too permissive!) Now using AWS-style deny-by-default with explicit permissions.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final recordId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.apiV1AttendanceRetrieve(recordId);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1AttendanceRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recordId** | **String**|  | 

### Return type

[**AttendanceRecord**](AttendanceRecord.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AttendanceStudentRetrieve**
> AttendanceRecord apiV1AttendanceStudentRetrieve(studentId)



Get attendance history for a specific student

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final studentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.apiV1AttendanceStudentRetrieve(studentId);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1AttendanceStudentRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **studentId** | **String**|  | 

### Return type

[**AttendanceRecord**](AttendanceRecord.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AttendanceSummaryRetrieve**
> AttendanceRecord apiV1AttendanceSummaryRetrieve()



Get attendance summary for date range

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();

try {
    final result = api_instance.apiV1AttendanceSummaryRetrieve();
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1AttendanceSummaryRetrieve: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AttendanceRecord**](AttendanceRecord.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AuditLogsList**
> PaginatedAuditLogList apiV1AuditLogsList(ordering, page, search)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final ordering = ordering_example; // String | Which field to use when ordering the results.
final page = 56; // int | A page number within the paginated result set.
final search = search_example; // String | A search term.

try {
    final result = api_instance.apiV1AuditLogsList(ordering, page, search);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1AuditLogsList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **page** | **int**| A page number within the paginated result set. | [optional] 
 **search** | **String**| A search term. | [optional] 

### Return type

[**PaginatedAuditLogList**](PaginatedAuditLogList.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AuditLogsRetrieve**
> AuditLog apiV1AuditLogsRetrieve(logId)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final logId = 56; // int | A unique integer value identifying this audit log.

try {
    final result = api_instance.apiV1AuditLogsRetrieve(logId);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1AuditLogsRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **logId** | **int**| A unique integer value identifying this audit log. | 

### Return type

[**AuditLog**](AuditLog.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1BoardingEventsBulkCreate**
> BoardingEvent apiV1BoardingEventsBulkCreate(boardingEvent)



Bulk create boarding events (for high-throughput kiosk operations)

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ApiApi();
final boardingEvent = BoardingEvent(); // BoardingEvent | 

try {
    final result = api_instance.apiV1BoardingEventsBulkCreate(boardingEvent);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1BoardingEventsBulkCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **boardingEvent** | [**BoardingEvent**](BoardingEvent.md)|  | 

### Return type

[**BoardingEvent**](BoardingEvent.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1BoardingEventsCreate**
> BoardingEventCreate apiV1BoardingEventsCreate(boardingEventCreate)



ViewSet for boarding events  PERMISSIONS: - CREATE/BULK: IsKiosk (kiosk devices only) - LIST/RETRIEVE/UPDATE/DELETE: IsSchoolAdmin (school admins only) - RECENT: IsSchoolAdmin (school admins only)  NOTE: Old permission was IsAuthenticated (too permissive!) Now using AWS-style deny-by-default with explicit permissions.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ApiApi();
final boardingEventCreate = BoardingEventCreate(); // BoardingEventCreate | 

try {
    final result = api_instance.apiV1BoardingEventsCreate(boardingEventCreate);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1BoardingEventsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **boardingEventCreate** | [**BoardingEventCreate**](BoardingEventCreate.md)|  | 

### Return type

[**BoardingEventCreate**](BoardingEventCreate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1BoardingEventsDestroy**
> apiV1BoardingEventsDestroy(eventId)



ViewSet for boarding events  PERMISSIONS: - CREATE/BULK: IsKiosk (kiosk devices only) - LIST/RETRIEVE/UPDATE/DELETE: IsSchoolAdmin (school admins only) - RECENT: IsSchoolAdmin (school admins only)  NOTE: Old permission was IsAuthenticated (too permissive!) Now using AWS-style deny-by-default with explicit permissions.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ApiApi();
final eventId = eventId_example; // String | 

try {
    api_instance.apiV1BoardingEventsDestroy(eventId);
} catch (e) {
    print('Exception when calling ApiApi->apiV1BoardingEventsDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1BoardingEventsList**
> PaginatedBoardingEventList apiV1BoardingEventsList(busRoute, kioskId, page, student, timestamp)



ViewSet for boarding events  PERMISSIONS: - CREATE/BULK: IsKiosk (kiosk devices only) - LIST/RETRIEVE/UPDATE/DELETE: IsSchoolAdmin (school admins only) - RECENT: IsSchoolAdmin (school admins only)  NOTE: Old permission was IsAuthenticated (too permissive!) Now using AWS-style deny-by-default with explicit permissions.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ApiApi();
final busRoute = busRoute_example; // String | 
final kioskId = kioskId_example; // String | 
final page = 56; // int | A page number within the paginated result set.
final student = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final timestamp = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.apiV1BoardingEventsList(busRoute, kioskId, page, student, timestamp);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1BoardingEventsList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **busRoute** | **String**|  | [optional] 
 **kioskId** | **String**|  | [optional] 
 **page** | **int**| A page number within the paginated result set. | [optional] 
 **student** | **String**|  | [optional] 
 **timestamp** | **DateTime**|  | [optional] 

### Return type

[**PaginatedBoardingEventList**](PaginatedBoardingEventList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1BoardingEventsPartialUpdate**
> BoardingEvent apiV1BoardingEventsPartialUpdate(eventId, patchedBoardingEvent)



ViewSet for boarding events  PERMISSIONS: - CREATE/BULK: IsKiosk (kiosk devices only) - LIST/RETRIEVE/UPDATE/DELETE: IsSchoolAdmin (school admins only) - RECENT: IsSchoolAdmin (school admins only)  NOTE: Old permission was IsAuthenticated (too permissive!) Now using AWS-style deny-by-default with explicit permissions.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ApiApi();
final eventId = eventId_example; // String | 
final patchedBoardingEvent = PatchedBoardingEvent(); // PatchedBoardingEvent | 

try {
    final result = api_instance.apiV1BoardingEventsPartialUpdate(eventId, patchedBoardingEvent);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1BoardingEventsPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventId** | **String**|  | 
 **patchedBoardingEvent** | [**PatchedBoardingEvent**](PatchedBoardingEvent.md)|  | [optional] 

### Return type

[**BoardingEvent**](BoardingEvent.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1BoardingEventsRecentRetrieve**
> BoardingEvent apiV1BoardingEventsRecentRetrieve()



Get recent boarding events for dashboard

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ApiApi();

try {
    final result = api_instance.apiV1BoardingEventsRecentRetrieve();
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1BoardingEventsRecentRetrieve: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BoardingEvent**](BoardingEvent.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1BoardingEventsRetrieve**
> BoardingEvent apiV1BoardingEventsRetrieve(eventId)



ViewSet for boarding events  PERMISSIONS: - CREATE/BULK: IsKiosk (kiosk devices only) - LIST/RETRIEVE/UPDATE/DELETE: IsSchoolAdmin (school admins only) - RECENT: IsSchoolAdmin (school admins only)  NOTE: Old permission was IsAuthenticated (too permissive!) Now using AWS-style deny-by-default with explicit permissions.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ApiApi();
final eventId = eventId_example; // String | 

try {
    final result = api_instance.apiV1BoardingEventsRetrieve(eventId);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1BoardingEventsRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventId** | **String**|  | 

### Return type

[**BoardingEvent**](BoardingEvent.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1BoardingEventsUpdate**
> BoardingEvent apiV1BoardingEventsUpdate(eventId, boardingEvent)



ViewSet for boarding events  PERMISSIONS: - CREATE/BULK: IsKiosk (kiosk devices only) - LIST/RETRIEVE/UPDATE/DELETE: IsSchoolAdmin (school admins only) - RECENT: IsSchoolAdmin (school admins only)  NOTE: Old permission was IsAuthenticated (too permissive!) Now using AWS-style deny-by-default with explicit permissions.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ApiApi();
final eventId = eventId_example; // String | 
final boardingEvent = BoardingEvent(); // BoardingEvent | 

try {
    final result = api_instance.apiV1BoardingEventsUpdate(eventId, boardingEvent);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1BoardingEventsUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventId** | **String**|  | 
 **boardingEvent** | [**BoardingEvent**](BoardingEvent.md)|  | 

### Return type

[**BoardingEvent**](BoardingEvent.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1BusesAssignStudentsCreate**
> Bus apiV1BusesAssignStudentsCreate(bus)



Bulk assign students to buses

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final bus = Bus(); // Bus | 

try {
    final result = api_instance.apiV1BusesAssignStudentsCreate(bus);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1BusesAssignStudentsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bus** | [**Bus**](Bus.md)|  | 

### Return type

[**Bus**](Bus.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1BusesCreate**
> Bus apiV1BusesCreate(bus)



ViewSet for buses

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final bus = Bus(); // Bus | 

try {
    final result = api_instance.apiV1BusesCreate(bus);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1BusesCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bus** | [**Bus**](Bus.md)|  | 

### Return type

[**Bus**](Bus.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1BusesDestroy**
> apiV1BusesDestroy(busId)



ViewSet for buses

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final busId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.apiV1BusesDestroy(busId);
} catch (e) {
    print('Exception when calling ApiApi->apiV1BusesDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **busId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1BusesList**
> PaginatedBusList apiV1BusesList(deviceId, page, route, status)



ViewSet for buses

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final deviceId = deviceId_example; // String | 
final page = 56; // int | A page number within the paginated result set.
final route = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | UUID primary key
final status = status_example; // String | Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired

try {
    final result = api_instance.apiV1BusesList(deviceId, page, route, status);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1BusesList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **String**|  | [optional] 
 **page** | **int**| A page number within the paginated result set. | [optional] 
 **route** | **String**| UUID primary key | [optional] 
 **status** | **String**| Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired | [optional] 

### Return type

[**PaginatedBusList**](PaginatedBusList.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1BusesPartialUpdate**
> Bus apiV1BusesPartialUpdate(busId, patchedBus)



ViewSet for buses

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final busId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final patchedBus = PatchedBus(); // PatchedBus | 

try {
    final result = api_instance.apiV1BusesPartialUpdate(busId, patchedBus);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1BusesPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **busId** | **String**|  | 
 **patchedBus** | [**PatchedBus**](PatchedBus.md)|  | [optional] 

### Return type

[**Bus**](Bus.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1BusesRetrieve**
> Bus apiV1BusesRetrieve(busId)



ViewSet for buses

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final busId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.apiV1BusesRetrieve(busId);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1BusesRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **busId** | **String**|  | 

### Return type

[**Bus**](Bus.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1BusesStudentsRetrieve**
> Bus apiV1BusesStudentsRetrieve(busId)



Get all students assigned to this bus

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final busId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.apiV1BusesStudentsRetrieve(busId);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1BusesStudentsRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **busId** | **String**|  | 

### Return type

[**Bus**](Bus.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1BusesUpdate**
> Bus apiV1BusesUpdate(busId, bus)



ViewSet for buses

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final busId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final bus = Bus(); // Bus | 

try {
    final result = api_instance.apiV1BusesUpdate(busId, bus);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1BusesUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **busId** | **String**|  | 
 **bus** | [**Bus**](Bus.md)|  | 

### Return type

[**Bus**](Bus.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1BusesUtilizationRetrieve**
> Bus apiV1BusesUtilizationRetrieve()



Get fleet utilization report

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();

try {
    final result = api_instance.apiV1BusesUtilizationRetrieve();
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1BusesUtilizationRetrieve: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Bus**](Bus.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DashboardStatsRetrieve**
> DashboardStats apiV1DashboardStatsRetrieve()

Get dashboard summary statistics

Returns summary statistics for school dashboard (buses, students boarded) for TODAY only. Cached for 10 seconds.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();

try {
    final result = api_instance.apiV1DashboardStatsRetrieve();
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1DashboardStatsRetrieve: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DashboardStats**](DashboardStats.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DashboardStudentsRetrieve**
> DashboardStudentsResponse apiV1DashboardStudentsRetrieve(limit, offset)

Get students with boarding events

Returns paginated list of students who boarded TODAY with all their events

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final limit = 56; // int | Number of students per page (default=50)
final offset = 56; // int | Offset for pagination (default=0)

try {
    final result = api_instance.apiV1DashboardStudentsRetrieve(limit, offset);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1DashboardStudentsRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of students per page (default=50) | [optional] 
 **offset** | **int**| Offset for pagination (default=0) | [optional] 

### Return type

[**DashboardStudentsResponse**](DashboardStudentsResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1GeocodeCreate**
> apiV1GeocodeCreate()



Geocode an address to coordinates.  POST /api/v1/geocode/ Body: {\"address\": \"Imperial College London\"}  Returns: {     \"latitude\": 51.4988,     \"longitude\": -0.1749,     \"formatted_address\": \"Imperial College London, Exhibition Rd, London SW7 2AZ, UK\" }

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();

try {
    api_instance.apiV1GeocodeCreate();
} catch (e) {
    print('Exception when calling ApiApi->apiV1GeocodeCreate: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1GroupsList**
> PaginatedGroupList apiV1GroupsList(ordering, page, search)



API endpoint for Groups (Roles). Read-only following IAM principle - groups managed via seed_groups command. Groups represent user roles: school_admin, parent, driver.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final ordering = ordering_example; // String | Which field to use when ordering the results.
final page = 56; // int | A page number within the paginated result set.
final search = search_example; // String | A search term.

try {
    final result = api_instance.apiV1GroupsList(ordering, page, search);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1GroupsList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **page** | **int**| A page number within the paginated result set. | [optional] 
 **search** | **String**| A search term. | [optional] 

### Return type

[**PaginatedGroupList**](PaginatedGroupList.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1GroupsRetrieve**
> Group apiV1GroupsRetrieve(id)



API endpoint for Groups (Roles). Read-only following IAM principle - groups managed via seed_groups command. Groups represent user roles: school_admin, parent, driver.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final id = 56; // int | A unique integer value identifying this group.

try {
    final result = api_instance.apiV1GroupsRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1GroupsRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this group. | 

### Return type

[**Group**](Group.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1KioskBoardingCreate**
> ApiV1KioskBoardingCreate200Response apiV1KioskBoardingCreate(requestBody)



Student boarding endpoint - returns immediate approval and schedules background processing

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.apiV1KioskBoardingCreate(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1KioskBoardingCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**Map<String, Object>**](Object.md)|  | [optional] 

### Return type

[**ApiV1KioskBoardingCreate200Response**](ApiV1KioskBoardingCreate200Response.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1KiosksCreate**
> Kiosk apiV1KiosksCreate(kiosk)



ViewSet for kiosk management (admin only)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final kiosk = Kiosk(); // Kiosk | 

try {
    final result = api_instance.apiV1KiosksCreate(kiosk);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1KiosksCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kiosk** | [**Kiosk**](Kiosk.md)|  | [optional] 

### Return type

[**Kiosk**](Kiosk.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1KiosksDestroy**
> apiV1KiosksDestroy(kioskId)



ViewSet for kiosk management (admin only)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final kioskId = kioskId_example; // String | 

try {
    api_instance.apiV1KiosksDestroy(kioskId);
} catch (e) {
    print('Exception when calling ApiApi->apiV1KiosksDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kioskId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1KiosksList**
> PaginatedKioskList apiV1KiosksList(ordering, page, search)



ViewSet for kiosk management (admin only)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final ordering = ordering_example; // String | Which field to use when ordering the results.
final page = 56; // int | A page number within the paginated result set.
final search = search_example; // String | A search term.

try {
    final result = api_instance.apiV1KiosksList(ordering, page, search);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1KiosksList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **page** | **int**| A page number within the paginated result set. | [optional] 
 **search** | **String**| A search term. | [optional] 

### Return type

[**PaginatedKioskList**](PaginatedKioskList.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1KiosksPartialUpdate**
> Kiosk apiV1KiosksPartialUpdate(kioskId, patchedKiosk)



ViewSet for kiosk management (admin only)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final kioskId = kioskId_example; // String | 
final patchedKiosk = PatchedKiosk(); // PatchedKiosk | 

try {
    final result = api_instance.apiV1KiosksPartialUpdate(kioskId, patchedKiosk);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1KiosksPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kioskId** | **String**|  | 
 **patchedKiosk** | [**PatchedKiosk**](PatchedKiosk.md)|  | [optional] 

### Return type

[**Kiosk**](Kiosk.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1KiosksRetrieve**
> Kiosk apiV1KiosksRetrieve(kioskId)



ViewSet for kiosk management (admin only)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final kioskId = kioskId_example; // String | 

try {
    final result = api_instance.apiV1KiosksRetrieve(kioskId);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1KiosksRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kioskId** | **String**|  | 

### Return type

[**Kiosk**](Kiosk.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1KiosksUpdate**
> Kiosk apiV1KiosksUpdate(kioskId, kiosk)



ViewSet for kiosk management (admin only)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final kioskId = kioskId_example; // String | 
final kiosk = Kiosk(); // Kiosk | 

try {
    final result = api_instance.apiV1KiosksUpdate(kioskId, kiosk);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1KiosksUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kioskId** | **String**|  | 
 **kiosk** | [**Kiosk**](Kiosk.md)|  | [optional] 

### Return type

[**Kiosk**](Kiosk.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1LogsList**
> PaginatedDeviceLogList apiV1LogsList(kiosk, logLevel, page, timestamp)



Read-only ViewSet for device logs (any authenticated user)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final kiosk = kiosk_example; // String | Unique kiosk device identifier (e.g., KIOSK001, BUS123-KIOSK)
final logLevel = logLevel_example; // String | Log level severity  * `DEBUG` - Debug * `INFO` - Info * `WARN` - Warning * `ERROR` - Error * `CRITICAL` - Critical
final page = 56; // int | A page number within the paginated result set.
final timestamp = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.apiV1LogsList(kiosk, logLevel, page, timestamp);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1LogsList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kiosk** | **String**| Unique kiosk device identifier (e.g., KIOSK001, BUS123-KIOSK) | [optional] 
 **logLevel** | **String**| Log level severity  * `DEBUG` - Debug * `INFO` - Info * `WARN` - Warning * `ERROR` - Error * `CRITICAL` - Critical | [optional] 
 **page** | **int**| A page number within the paginated result set. | [optional] 
 **timestamp** | **DateTime**|  | [optional] 

### Return type

[**PaginatedDeviceLogList**](PaginatedDeviceLogList.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1LogsRetrieve**
> DeviceLog apiV1LogsRetrieve(logId)



Read-only ViewSet for device logs (any authenticated user)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final logId = 56; // int | 

try {
    final result = api_instance.apiV1LogsRetrieve(logId);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1LogsRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **logId** | **int**|  | 

### Return type

[**DeviceLog**](DeviceLog.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1LogsSummaryRetrieve**
> DeviceLog apiV1LogsSummaryRetrieve()



Get logs summary by level and time

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();

try {
    final result = api_instance.apiV1LogsSummaryRetrieve();
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1LogsSummaryRetrieve: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DeviceLog**](DeviceLog.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1NotificationsProcessCreate**
> apiV1NotificationsProcessCreate()



Process a queued notification. POST /api/v1/notifications/process/ Called by Cloud Tasks.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ApiApi();

try {
    api_instance.apiV1NotificationsProcessCreate();
} catch (e) {
    print('Exception when calling ApiApi->apiV1NotificationsProcessCreate: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ParentsCreate**
> Parent apiV1ParentsCreate(parent)



Admin-only parent management - NO row-level filtering (requires admin access)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final parent = Parent(); // Parent | 

try {
    final result = api_instance.apiV1ParentsCreate(parent);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1ParentsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parent** | [**Parent**](Parent.md)|  | 

### Return type

[**Parent**](Parent.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ParentsDestroy**
> apiV1ParentsDestroy(parentId)



Admin-only parent management - NO row-level filtering (requires admin access)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final parentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this parent.

try {
    api_instance.apiV1ParentsDestroy(parentId);
} catch (e) {
    print('Exception when calling ApiApi->apiV1ParentsDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parentId** | **String**| A UUID string identifying this parent. | 

### Return type

void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ParentsList**
> PaginatedParentList apiV1ParentsList(ordering, page, search)



Admin-only parent management - NO row-level filtering (requires admin access)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final ordering = ordering_example; // String | Which field to use when ordering the results.
final page = 56; // int | A page number within the paginated result set.
final search = search_example; // String | A search term.

try {
    final result = api_instance.apiV1ParentsList(ordering, page, search);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1ParentsList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **page** | **int**| A page number within the paginated result set. | [optional] 
 **search** | **String**| A search term. | [optional] 

### Return type

[**PaginatedParentList**](PaginatedParentList.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ParentsMeBusLocationsRetrieve**
> List<ApiV1ParentsMeBusLocationsRetrieve200ResponseInner> apiV1ParentsMeBusLocationsRetrieve()



Get real-time locations for all buses assigned to my children (row-level security enforced). Cached for 30 seconds.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();

try {
    final result = api_instance.apiV1ParentsMeBusLocationsRetrieve();
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1ParentsMeBusLocationsRetrieve: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<ApiV1ParentsMeBusLocationsRetrieve200ResponseInner>**](ApiV1ParentsMeBusLocationsRetrieve200ResponseInner.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ParentsMeBusesLocationRetrieve**
> ApiV1ParentsMeBusesLocationRetrieve200Response apiV1ParentsMeBusesLocationRetrieve(busId)



Get real-time location for a specific bus (only buses for my children). Cached for 30 seconds.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final busId = busId_example; // String | 

try {
    final result = api_instance.apiV1ParentsMeBusesLocationRetrieve(busId);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1ParentsMeBusesLocationRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **busId** | **String**|  | 

### Return type

[**ApiV1ParentsMeBusesLocationRetrieve200Response**](ApiV1ParentsMeBusesLocationRetrieve200Response.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ParentsMeBusesRetrieve**
> ApiV1ParentsMeBusesRetrieve200Response apiV1ParentsMeBusesRetrieve()



Get all buses for my children

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();

try {
    final result = api_instance.apiV1ParentsMeBusesRetrieve();
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1ParentsMeBusesRetrieve: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApiV1ParentsMeBusesRetrieve200Response**](ApiV1ParentsMeBusesRetrieve200Response.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ParentsMeChildrenList**
> List<Student> apiV1ParentsMeChildrenList()



Get my children

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();

try {
    final result = api_instance.apiV1ParentsMeChildrenList();
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1ParentsMeChildrenList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Student>**](Student.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ParentsMeFaceEnrollmentStatusRetrieve**
> FaceEnrollmentStatus apiV1ParentsMeFaceEnrollmentStatusRetrieve(id)



Check face enrollment status for child

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final id = id_example; // String | 

try {
    final result = api_instance.apiV1ParentsMeFaceEnrollmentStatusRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1ParentsMeFaceEnrollmentStatusRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**FaceEnrollmentStatus**](FaceEnrollmentStatus.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ParentsMeFaceEnrollmentSubmitCreate**
> FaceEnrollmentStatus apiV1ParentsMeFaceEnrollmentSubmitCreate(id, faceEnrollmentSubmission)



Submit face enrollment photos for child

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final id = id_example; // String | 
final faceEnrollmentSubmission = FaceEnrollmentSubmission(); // FaceEnrollmentSubmission | 

try {
    final result = api_instance.apiV1ParentsMeFaceEnrollmentSubmitCreate(id, faceEnrollmentSubmission);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1ParentsMeFaceEnrollmentSubmitCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **faceEnrollmentSubmission** | [**FaceEnrollmentSubmission**](FaceEnrollmentSubmission.md)|  | 

### Return type

[**FaceEnrollmentStatus**](FaceEnrollmentStatus.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ParentsMeFcmTokensCreate**
> apiV1ParentsMeFcmTokensCreate()



Manage FCM tokens for push notifications. POST /api/v1/parents/me/fcm-tokens/ - Register token DELETE /api/v1/parents/me/fcm-tokens/ - Delete token  Google Pattern: Infrastructure operation - works for authenticated users. Parent may have \"pending\" approval status - that's OK for device management.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();

try {
    api_instance.apiV1ParentsMeFcmTokensCreate();
} catch (e) {
    print('Exception when calling ApiApi->apiV1ParentsMeFcmTokensCreate: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ParentsMeFcmTokensDestroy**
> apiV1ParentsMeFcmTokensDestroy()



Manage FCM tokens for push notifications. POST /api/v1/parents/me/fcm-tokens/ - Register token DELETE /api/v1/parents/me/fcm-tokens/ - Delete token  Google Pattern: Infrastructure operation - works for authenticated users. Parent may have \"pending\" approval status - that's OK for device management.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();

try {
    api_instance.apiV1ParentsMeFcmTokensDestroy();
} catch (e) {
    print('Exception when calling ApiApi->apiV1ParentsMeFcmTokensDestroy: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ParentsMeNotificationPreferencesPartialUpdate**
> apiV1ParentsMeNotificationPreferencesPartialUpdate()



Get or update notification preferences. GET/PATCH /api/v1/parents/me/notification-preferences/

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();

try {
    api_instance.apiV1ParentsMeNotificationPreferencesPartialUpdate();
} catch (e) {
    print('Exception when calling ApiApi->apiV1ParentsMeNotificationPreferencesPartialUpdate: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ParentsMeNotificationPreferencesRetrieve**
> apiV1ParentsMeNotificationPreferencesRetrieve()



Get or update notification preferences. GET/PATCH /api/v1/parents/me/notification-preferences/

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();

try {
    api_instance.apiV1ParentsMeNotificationPreferencesRetrieve();
} catch (e) {
    print('Exception when calling ApiApi->apiV1ParentsMeNotificationPreferencesRetrieve: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ParentsMeNotificationsRetrieve**
> apiV1ParentsMeNotificationsRetrieve()



List all notifications for the parent. GET /api/v1/parents/me/notifications/

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();

try {
    api_instance.apiV1ParentsMeNotificationsRetrieve();
} catch (e) {
    print('Exception when calling ApiApi->apiV1ParentsMeNotificationsRetrieve: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ParentsMeProfileRetrieve**
> Parent apiV1ParentsMeProfileRetrieve()



Get my parent profile

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();

try {
    final result = api_instance.apiV1ParentsMeProfileRetrieve();
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1ParentsMeProfileRetrieve: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Parent**](Parent.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ParentsMeReadCreate**
> apiV1ParentsMeReadCreate(id)



Mark a notification as read. POST /api/v1/parents/me/notifications/{notification_id}/read/

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final id = id_example; // String | 

try {
    api_instance.apiV1ParentsMeReadCreate(id);
} catch (e) {
    print('Exception when calling ApiApi->apiV1ParentsMeReadCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ParentsPartialUpdate**
> Parent apiV1ParentsPartialUpdate(parentId, patchedParent)



Admin-only parent management - NO row-level filtering (requires admin access)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final parentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this parent.
final patchedParent = PatchedParent(); // PatchedParent | 

try {
    final result = api_instance.apiV1ParentsPartialUpdate(parentId, patchedParent);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1ParentsPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parentId** | **String**| A UUID string identifying this parent. | 
 **patchedParent** | [**PatchedParent**](PatchedParent.md)|  | [optional] 

### Return type

[**Parent**](Parent.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ParentsRegisterCreate**
> Parent apiV1ParentsRegisterCreate()



Register as a parent (called from parent_easy app after Firebase login)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();

try {
    final result = api_instance.apiV1ParentsRegisterCreate();
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1ParentsRegisterCreate: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Parent**](Parent.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ParentsRetrieve**
> Parent apiV1ParentsRetrieve(parentId)



Admin-only parent management - NO row-level filtering (requires admin access)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final parentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this parent.

try {
    final result = api_instance.apiV1ParentsRetrieve(parentId);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1ParentsRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parentId** | **String**| A UUID string identifying this parent. | 

### Return type

[**Parent**](Parent.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ParentsStudentsRetrieve**
> Parent apiV1ParentsStudentsRetrieve(parentId)



Admin-only parent management - NO row-level filtering (requires admin access)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final parentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this parent.

try {
    final result = api_instance.apiV1ParentsStudentsRetrieve(parentId);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1ParentsStudentsRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parentId** | **String**| A UUID string identifying this parent. | 

### Return type

[**Parent**](Parent.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ParentsUpdate**
> Parent apiV1ParentsUpdate(parentId, parent)



Admin-only parent management - NO row-level filtering (requires admin access)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final parentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this parent.
final parent = Parent(); // Parent | 

try {
    final result = api_instance.apiV1ParentsUpdate(parentId, parent);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1ParentsUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parentId** | **String**| A UUID string identifying this parent. | 
 **parent** | [**Parent**](Parent.md)|  | 

### Return type

[**Parent**](Parent.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1RoutesBusesRetrieve**
> Route apiV1RoutesBusesRetrieve(routeId)



Get all buses assigned to this route

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final routeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.apiV1RoutesBusesRetrieve(routeId);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1RoutesBusesRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **routeId** | **String**|  | 

### Return type

[**Route**](Route.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1RoutesCreate**
> Route apiV1RoutesCreate(route)



ViewSet for bus routes

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final route = Route(); // Route | 

try {
    final result = api_instance.apiV1RoutesCreate(route);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1RoutesCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **route** | [**Route**](Route.md)|  | 

### Return type

[**Route**](Route.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1RoutesDestroy**
> apiV1RoutesDestroy(routeId)



ViewSet for bus routes

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final routeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.apiV1RoutesDestroy(routeId);
} catch (e) {
    print('Exception when calling ApiApi->apiV1RoutesDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **routeId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1RoutesList**
> PaginatedRouteList apiV1RoutesList(isActive, page)



ViewSet for bus routes

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final isActive = true; // bool | 
final page = 56; // int | A page number within the paginated result set.

try {
    final result = api_instance.apiV1RoutesList(isActive, page);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1RoutesList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **isActive** | **bool**|  | [optional] 
 **page** | **int**| A page number within the paginated result set. | [optional] 

### Return type

[**PaginatedRouteList**](PaginatedRouteList.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1RoutesPartialUpdate**
> Route apiV1RoutesPartialUpdate(routeId, patchedRoute)



ViewSet for bus routes

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final routeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final patchedRoute = PatchedRoute(); // PatchedRoute | 

try {
    final result = api_instance.apiV1RoutesPartialUpdate(routeId, patchedRoute);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1RoutesPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **routeId** | **String**|  | 
 **patchedRoute** | [**PatchedRoute**](PatchedRoute.md)|  | [optional] 

### Return type

[**Route**](Route.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1RoutesRetrieve**
> Route apiV1RoutesRetrieve(routeId)



ViewSet for bus routes

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final routeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.apiV1RoutesRetrieve(routeId);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1RoutesRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **routeId** | **String**|  | 

### Return type

[**Route**](Route.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1RoutesStudentsRetrieve**
> Route apiV1RoutesStudentsRetrieve(routeId)



Get all students assigned to buses on this route

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final routeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.apiV1RoutesStudentsRetrieve(routeId);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1RoutesStudentsRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **routeId** | **String**|  | 

### Return type

[**Route**](Route.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1RoutesUpdate**
> Route apiV1RoutesUpdate(routeId, route)



ViewSet for bus routes

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final routeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final route = Route(); // Route | 

try {
    final result = api_instance.apiV1RoutesUpdate(routeId, route);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1RoutesUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **routeId** | **String**|  | 
 **route** | [**Route**](Route.md)|  | 

### Return type

[**Route**](Route.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1SchoolsCreate**
> School apiV1SchoolsCreate(school)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final school = School(); // School | 

try {
    final result = api_instance.apiV1SchoolsCreate(school);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1SchoolsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **school** | [**School**](School.md)|  | 

### Return type

[**School**](School.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1SchoolsDestroy**
> apiV1SchoolsDestroy(schoolId)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final schoolId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this school.

try {
    api_instance.apiV1SchoolsDestroy(schoolId);
} catch (e) {
    print('Exception when calling ApiApi->apiV1SchoolsDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schoolId** | **String**| A UUID string identifying this school. | 

### Return type

void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1SchoolsList**
> PaginatedSchoolList apiV1SchoolsList(ordering, page, search)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final ordering = ordering_example; // String | Which field to use when ordering the results.
final page = 56; // int | A page number within the paginated result set.
final search = search_example; // String | A search term.

try {
    final result = api_instance.apiV1SchoolsList(ordering, page, search);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1SchoolsList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **page** | **int**| A page number within the paginated result set. | [optional] 
 **search** | **String**| A search term. | [optional] 

### Return type

[**PaginatedSchoolList**](PaginatedSchoolList.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1SchoolsPartialUpdate**
> School apiV1SchoolsPartialUpdate(schoolId, patchedSchool)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final schoolId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this school.
final patchedSchool = PatchedSchool(); // PatchedSchool | 

try {
    final result = api_instance.apiV1SchoolsPartialUpdate(schoolId, patchedSchool);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1SchoolsPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schoolId** | **String**| A UUID string identifying this school. | 
 **patchedSchool** | [**PatchedSchool**](PatchedSchool.md)|  | [optional] 

### Return type

[**School**](School.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1SchoolsRetrieve**
> School apiV1SchoolsRetrieve(schoolId)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final schoolId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this school.

try {
    final result = api_instance.apiV1SchoolsRetrieve(schoolId);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1SchoolsRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schoolId** | **String**| A UUID string identifying this school. | 

### Return type

[**School**](School.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1SchoolsUpdate**
> School apiV1SchoolsUpdate(schoolId, school)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final schoolId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this school.
final school = School(); // School | 

try {
    final result = api_instance.apiV1SchoolsUpdate(schoolId, school);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1SchoolsUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schoolId** | **String**| A UUID string identifying this school. | 
 **school** | [**School**](School.md)|  | 

### Return type

[**School**](School.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1StudentParentsCreate**
> StudentParent apiV1StudentParentsCreate(studentParent)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final studentParent = StudentParent(); // StudentParent | 

try {
    final result = api_instance.apiV1StudentParentsCreate(studentParent);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1StudentParentsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **studentParent** | [**StudentParent**](StudentParent.md)|  | 

### Return type

[**StudentParent**](StudentParent.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1StudentParentsDestroy**
> apiV1StudentParentsDestroy(id)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final id = 56; // int | A unique integer value identifying this student parent.

try {
    api_instance.apiV1StudentParentsDestroy(id);
} catch (e) {
    print('Exception when calling ApiApi->apiV1StudentParentsDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this student parent. | 

### Return type

void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1StudentParentsList**
> PaginatedStudentParentList apiV1StudentParentsList(ordering, page, search)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final ordering = ordering_example; // String | Which field to use when ordering the results.
final page = 56; // int | A page number within the paginated result set.
final search = search_example; // String | A search term.

try {
    final result = api_instance.apiV1StudentParentsList(ordering, page, search);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1StudentParentsList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **page** | **int**| A page number within the paginated result set. | [optional] 
 **search** | **String**| A search term. | [optional] 

### Return type

[**PaginatedStudentParentList**](PaginatedStudentParentList.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1StudentParentsPartialUpdate**
> StudentParent apiV1StudentParentsPartialUpdate(id, patchedStudentParent)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final id = 56; // int | A unique integer value identifying this student parent.
final patchedStudentParent = PatchedStudentParent(); // PatchedStudentParent | 

try {
    final result = api_instance.apiV1StudentParentsPartialUpdate(id, patchedStudentParent);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1StudentParentsPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this student parent. | 
 **patchedStudentParent** | [**PatchedStudentParent**](PatchedStudentParent.md)|  | [optional] 

### Return type

[**StudentParent**](StudentParent.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1StudentParentsRetrieve**
> StudentParent apiV1StudentParentsRetrieve(id)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final id = 56; // int | A unique integer value identifying this student parent.

try {
    final result = api_instance.apiV1StudentParentsRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1StudentParentsRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this student parent. | 

### Return type

[**StudentParent**](StudentParent.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1StudentParentsUpdate**
> StudentParent apiV1StudentParentsUpdate(id, studentParent)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final id = 56; // int | A unique integer value identifying this student parent.
final studentParent = StudentParent(); // StudentParent | 

try {
    final result = api_instance.apiV1StudentParentsUpdate(id, studentParent);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1StudentParentsUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this student parent. | 
 **studentParent** | [**StudentParent**](StudentParent.md)|  | 

### Return type

[**StudentParent**](StudentParent.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1StudentPhotosCreate**
> StudentPhoto apiV1StudentPhotosCreate(studentPhoto)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final studentPhoto = StudentPhoto(); // StudentPhoto | 

try {
    final result = api_instance.apiV1StudentPhotosCreate(studentPhoto);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1StudentPhotosCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **studentPhoto** | [**StudentPhoto**](StudentPhoto.md)|  | 

### Return type

[**StudentPhoto**](StudentPhoto.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1StudentPhotosDestroy**
> apiV1StudentPhotosDestroy(photoId)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final photoId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this student photo.

try {
    api_instance.apiV1StudentPhotosDestroy(photoId);
} catch (e) {
    print('Exception when calling ApiApi->apiV1StudentPhotosDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **photoId** | **String**| A UUID string identifying this student photo. | 

### Return type

void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1StudentPhotosList**
> PaginatedStudentPhotoList apiV1StudentPhotosList(ordering, page, search)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final ordering = ordering_example; // String | Which field to use when ordering the results.
final page = 56; // int | A page number within the paginated result set.
final search = search_example; // String | A search term.

try {
    final result = api_instance.apiV1StudentPhotosList(ordering, page, search);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1StudentPhotosList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **page** | **int**| A page number within the paginated result set. | [optional] 
 **search** | **String**| A search term. | [optional] 

### Return type

[**PaginatedStudentPhotoList**](PaginatedStudentPhotoList.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1StudentPhotosPartialUpdate**
> StudentPhoto apiV1StudentPhotosPartialUpdate(photoId, patchedStudentPhoto)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final photoId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this student photo.
final patchedStudentPhoto = PatchedStudentPhoto(); // PatchedStudentPhoto | 

try {
    final result = api_instance.apiV1StudentPhotosPartialUpdate(photoId, patchedStudentPhoto);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1StudentPhotosPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **photoId** | **String**| A UUID string identifying this student photo. | 
 **patchedStudentPhoto** | [**PatchedStudentPhoto**](PatchedStudentPhoto.md)|  | [optional] 

### Return type

[**StudentPhoto**](StudentPhoto.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1StudentPhotosRetrieve**
> StudentPhoto apiV1StudentPhotosRetrieve(photoId)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final photoId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this student photo.

try {
    final result = api_instance.apiV1StudentPhotosRetrieve(photoId);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1StudentPhotosRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **photoId** | **String**| A UUID string identifying this student photo. | 

### Return type

[**StudentPhoto**](StudentPhoto.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1StudentPhotosSetPrimaryCreate**
> StudentPhoto apiV1StudentPhotosSetPrimaryCreate(photoId, studentPhoto)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final photoId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this student photo.
final studentPhoto = StudentPhoto(); // StudentPhoto | 

try {
    final result = api_instance.apiV1StudentPhotosSetPrimaryCreate(photoId, studentPhoto);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1StudentPhotosSetPrimaryCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **photoId** | **String**| A UUID string identifying this student photo. | 
 **studentPhoto** | [**StudentPhoto**](StudentPhoto.md)|  | 

### Return type

[**StudentPhoto**](StudentPhoto.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1StudentPhotosUpdate**
> StudentPhoto apiV1StudentPhotosUpdate(photoId, studentPhoto)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final photoId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this student photo.
final studentPhoto = StudentPhoto(); // StudentPhoto | 

try {
    final result = api_instance.apiV1StudentPhotosUpdate(photoId, studentPhoto);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1StudentPhotosUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **photoId** | **String**| A UUID string identifying this student photo. | 
 **studentPhoto** | [**StudentPhoto**](StudentPhoto.md)|  | 

### Return type

[**StudentPhoto**](StudentPhoto.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1StudentsAllRetrieve**
> ApiV1StudentsAllRetrieve200Response apiV1StudentsAllRetrieve(limit, offset, search)

Get all registered students

Returns paginated list of ALL registered students (not just students who boarded today). Cached for 5 minutes.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final limit = 56; // int | Number of students per page (default=50, max=100)
final offset = 56; // int | Offset for pagination (default=0)
final search = search_example; // String | Search by student name, school ID, or grade

try {
    final result = api_instance.apiV1StudentsAllRetrieve(limit, offset, search);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1StudentsAllRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of students per page (default=50, max=100) | [optional] 
 **offset** | **int**| Offset for pagination (default=0) | [optional] 
 **search** | **String**| Search by student name, school ID, or grade | [optional] 

### Return type

[**ApiV1StudentsAllRetrieve200Response**](ApiV1StudentsAllRetrieve200Response.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1StudentsAssignBusCreate**
> Student apiV1StudentsAssignBusCreate(studentId, student)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final studentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this student.
final student = Student(); // Student | 

try {
    final result = api_instance.apiV1StudentsAssignBusCreate(studentId, student);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1StudentsAssignBusCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **studentId** | **String**| A UUID string identifying this student. | 
 **student** | [**Student**](Student.md)|  | 

### Return type

[**Student**](Student.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1StudentsCreate**
> Student apiV1StudentsCreate(student)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final student = Student(); // Student | 

try {
    final result = api_instance.apiV1StudentsCreate(student);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1StudentsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **student** | [**Student**](Student.md)|  | 

### Return type

[**Student**](Student.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1StudentsDestroy**
> apiV1StudentsDestroy(studentId)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final studentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this student.

try {
    api_instance.apiV1StudentsDestroy(studentId);
} catch (e) {
    print('Exception when calling ApiApi->apiV1StudentsDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **studentId** | **String**| A UUID string identifying this student. | 

### Return type

void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1StudentsList**
> PaginatedStudentListList apiV1StudentsList(ordering, page, search)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final ordering = ordering_example; // String | Which field to use when ordering the results.
final page = 56; // int | A page number within the paginated result set.
final search = search_example; // String | A search term.

try {
    final result = api_instance.apiV1StudentsList(ordering, page, search);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1StudentsList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **page** | **int**| A page number within the paginated result set. | [optional] 
 **search** | **String**| A search term. | [optional] 

### Return type

[**PaginatedStudentListList**](PaginatedStudentListList.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1StudentsParentsRetrieve**
> Student apiV1StudentsParentsRetrieve(studentId)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final studentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this student.

try {
    final result = api_instance.apiV1StudentsParentsRetrieve(studentId);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1StudentsParentsRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **studentId** | **String**| A UUID string identifying this student. | 

### Return type

[**Student**](Student.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1StudentsPartialUpdate**
> Student apiV1StudentsPartialUpdate(studentId, patchedStudent)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final studentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this student.
final patchedStudent = PatchedStudent(); // PatchedStudent | 

try {
    final result = api_instance.apiV1StudentsPartialUpdate(studentId, patchedStudent);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1StudentsPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **studentId** | **String**| A UUID string identifying this student. | 
 **patchedStudent** | [**PatchedStudent**](PatchedStudent.md)|  | [optional] 

### Return type

[**Student**](Student.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1StudentsRetrieve**
> Student apiV1StudentsRetrieve(studentId)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final studentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this student.

try {
    final result = api_instance.apiV1StudentsRetrieve(studentId);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1StudentsRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **studentId** | **String**| A UUID string identifying this student. | 

### Return type

[**Student**](Student.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1StudentsUpdate**
> Student apiV1StudentsUpdate(studentId, student)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final studentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this student.
final student = Student(); // Student | 

try {
    final result = api_instance.apiV1StudentsUpdate(studentId, student);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1StudentsUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **studentId** | **String**| A UUID string identifying this student. | 
 **student** | [**Student**](Student.md)|  | 

### Return type

[**Student**](Student.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1UsersCreate**
> User apiV1UsersCreate(user)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final user = User(); // User | 

try {
    final result = api_instance.apiV1UsersCreate(user);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1UsersCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | [**User**](User.md)|  | 

### Return type

[**User**](User.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1UsersDestroy**
> apiV1UsersDestroy(userId)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this user.

try {
    api_instance.apiV1UsersDestroy(userId);
} catch (e) {
    print('Exception when calling ApiApi->apiV1UsersDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| A UUID string identifying this user. | 

### Return type

void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1UsersList**
> PaginatedUserList apiV1UsersList(ordering, page, search)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final ordering = ordering_example; // String | Which field to use when ordering the results.
final page = 56; // int | A page number within the paginated result set.
final search = search_example; // String | A search term.

try {
    final result = api_instance.apiV1UsersList(ordering, page, search);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1UsersList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **page** | **int**| A page number within the paginated result set. | [optional] 
 **search** | **String**| A search term. | [optional] 

### Return type

[**PaginatedUserList**](PaginatedUserList.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1UsersMeRetrieve**
> User apiV1UsersMeRetrieve()



Get current authenticated user information

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();

try {
    final result = api_instance.apiV1UsersMeRetrieve();
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1UsersMeRetrieve: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**User**](User.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1UsersPartialUpdate**
> User apiV1UsersPartialUpdate(userId, patchedUser)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this user.
final patchedUser = PatchedUser(); // PatchedUser | 

try {
    final result = api_instance.apiV1UsersPartialUpdate(userId, patchedUser);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1UsersPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| A UUID string identifying this user. | 
 **patchedUser** | [**PatchedUser**](PatchedUser.md)|  | [optional] 

### Return type

[**User**](User.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1UsersRetrieve**
> User apiV1UsersRetrieve(userId)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this user.

try {
    final result = api_instance.apiV1UsersRetrieve(userId);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1UsersRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| A UUID string identifying this user. | 

### Return type

[**User**](User.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1UsersUpdate**
> User apiV1UsersUpdate(userId, user)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this user.
final user = User(); // User | 

try {
    final result = api_instance.apiV1UsersUpdate(userId, user);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->apiV1UsersUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| A UUID string identifying this user. | 
 **user** | [**User**](User.md)|  | 

### Return type

[**User**](User.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **kioskCheckUpdates**
> CheckUpdatesResponse kioskCheckUpdates(kioskId, lastSyncHash)



Check if kiosk needs database update

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ApiApi();
final kioskId = kioskId_example; // String | 
final lastSyncHash = lastSyncHash_example; // String | Last content hash from kiosk

try {
    final result = api_instance.kioskCheckUpdates(kioskId, lastSyncHash);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->kioskCheckUpdates: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kioskId** | **String**|  | 
 **lastSyncHash** | **String**| Last content hash from kiosk | [optional] 

### Return type

[**CheckUpdatesResponse**](CheckUpdatesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **kioskDownloadSnapshot**
> MultipartFile kioskDownloadSnapshot(kioskId)



Download kiosk database snapshot (binary SQLite file). Returns raw binary data with x-snapshot-checksum header for verification.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ApiApi();
final kioskId = kioskId_example; // String | 

try {
    final result = api_instance.kioskDownloadSnapshot(kioskId);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->kioskDownloadSnapshot: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kioskId** | **String**|  | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **kioskGetMe**
> Kiosk kioskGetMe()



Get current authenticated kiosk details including bus assignment

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ApiApi();

try {
    final result = api_instance.kioskGetMe();
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->kioskGetMe: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Kiosk**](Kiosk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **kioskHeartbeat**
> kioskHeartbeat(kioskId, heartbeat)



Report kiosk health and sync status

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ApiApi();
final kioskId = kioskId_example; // String | 
final heartbeat = Heartbeat(); // Heartbeat | 

try {
    api_instance.kioskHeartbeat(kioskId, heartbeat);
} catch (e) {
    print('Exception when calling ApiApi->kioskHeartbeat: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kioskId** | **String**|  | 
 **heartbeat** | [**Heartbeat**](Heartbeat.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **kioskLog**
> KioskLog200Response kioskLog(deviceLog)



Kiosk logging endpoint for device log submission

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ApiApi();
final deviceLog = DeviceLog(); // DeviceLog | 

try {
    final result = api_instance.kioskLog(deviceLog);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->kioskLog: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceLog** | [**DeviceLog**](DeviceLog.md)|  | 

### Return type

[**KioskLog200Response**](KioskLog200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **kioskTriggerSos**
> SOSAlert kioskTriggerSos(kioskId, sOSAlertCreate)



Trigger SOS emergency alert. Creates an active alert with optional location and message.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ApiApi();
final kioskId = kioskId_example; // String | 
final sOSAlertCreate = SOSAlertCreate(); // SOSAlertCreate | 

try {
    final result = api_instance.kioskTriggerSos(kioskId, sOSAlertCreate);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->kioskTriggerSos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kioskId** | **String**|  | 
 **sOSAlertCreate** | [**SOSAlertCreate**](SOSAlertCreate.md)|  | [optional] 

### Return type

[**SOSAlert**](SOSAlert.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **kioskUpdateLocation**
> BusLocation kioskUpdateLocation(kioskId, busLocation)



Update bus GPS location. Kiosk sends location when bus moves significantly or every 2 minutes.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ApiApi();
final kioskId = kioskId_example; // String | 
final busLocation = BusLocation(); // BusLocation | 

try {
    final result = api_instance.kioskUpdateLocation(kioskId, busLocation);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->kioskUpdateLocation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kioskId** | **String**|  | 
 **busLocation** | [**BusLocation**](BusLocation.md)|  | 

### Return type

[**BusLocation**](BusLocation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

