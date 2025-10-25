# frontend_easy_api.api.SchoolDashboardApi

## Load the API package
```dart
import 'package:frontend_easy_api/api.dart';
```

All URIs are relative to *http://localhost:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**schoolBusLocationsList**](SchoolDashboardApi.md#schoolbuslocationslist) | **GET** /api/v1/school/api/bus-locations/ | 


# **schoolBusLocationsList**
> BusLocationsGeoJSONResponse schoolBusLocationsList()



     **Fortune 500 IAM-style School Bus Locations (Admin Only)**      Returns real-time bus locations for ALL buses in the fleet.      **Authorization:**     - Requires authentication (JWT token)     - Requires role: school_admin OR super_admin     - Returns ALL bus locations (full visibility for admins)      **For Parents:**     Parents should use `/api/v1/users/parent/my-buses/` instead (filtered by child assignment)      **Response:**     GeoJSON FeatureCollection with bus location points including:     - Real-time GPS coordinates     - Bus status, speed, heading     - Last update timestamp     

### Example
```dart
import 'package:frontend_easy_api/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api = FrontendEasyApi().getSchoolDashboardApi();

try {
    final response = api.schoolBusLocationsList();
    print(response);
} catch on DioException (e) {
    print('Exception when calling SchoolDashboardApi->schoolBusLocationsList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BusLocationsGeoJSONResponse**](BusLocationsGeoJSONResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [KioskJWTAuth](../README.md#KioskJWTAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

