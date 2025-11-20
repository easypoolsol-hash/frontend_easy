# openapi.api.BusesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**busLocationsApi**](BusesApi.md#buslocationsapi) | **GET** /api/v1/locations/ | 
[**busLocationsApi2**](BusesApi.md#buslocationsapi2) | **GET** /api/v1/school/api/bus-locations/ | 
[**busLocationsHistoryApi**](BusesApi.md#buslocationshistoryapi) | **GET** /api/v1/locations/history/ | 


# **busLocationsApi**
> BusLocationsResponse busLocationsApi()



     Returns real-time bus locations for ALL buses in the fleet as GeoJSON.      Accessible by any authenticated user (school administrators, staff, etc.).      **Response Format:**     GeoJSON FeatureCollection with Point geometries for each bus location.      Each feature includes properties:     - id: Kiosk ID     - name: Bus license plate     - status: Bus status     - last_update: Timestamp of last location update     - speed: Current speed (km/h)     - heading: Direction heading (degrees)     

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = BusesApi();

try {
    final result = api_instance.busLocationsApi();
    print(result);
} catch (e) {
    print('Exception when calling BusesApi->busLocationsApi: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BusLocationsResponse**](BusLocationsResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **busLocationsApi2**
> BusLocationsResponse busLocationsApi2()



     Returns real-time bus locations for ALL buses in the fleet as GeoJSON.      Accessible by any authenticated user (school administrators, staff, etc.).      **Response Format:**     GeoJSON FeatureCollection with Point geometries for each bus location.      Each feature includes properties:     - id: Kiosk ID     - name: Bus license plate     - status: Bus status     - last_update: Timestamp of last location update     - speed: Current speed (km/h)     - heading: Direction heading (degrees)     

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = BusesApi();

try {
    final result = api_instance.busLocationsApi2();
    print(result);
} catch (e) {
    print('Exception when calling BusesApi->busLocationsApi2: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BusLocationsResponse**](BusLocationsResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **busLocationsHistoryApi**
> BusLocationHistoryResponse busLocationsHistoryApi(busUuid, date)



     Returns historical bus locations for a specific bus on a specific date as GeoJSON.      Accessible by school administrators only.      **Response Format:**     GeoJSON FeatureCollection with Point geometries for each location record.      Each feature includes properties:     - id: Location record ID     - bus_number: Bus identifier     - bus_name: Bus license plate     - timestamp: When the location was recorded     - speed: Speed at that moment (km/h)     - heading: Direction heading (degrees)     - accuracy: GPS accuracy (meters)     

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = BusesApi();
final busUuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Bus UUID (primary key)
final date = 2013-10-20; // DateTime | Date in YYYY-MM-DD format (max 7 days in the past)

try {
    final result = api_instance.busLocationsHistoryApi(busUuid, date);
    print(result);
} catch (e) {
    print('Exception when calling BusesApi->busLocationsHistoryApi: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **busUuid** | **String**| Bus UUID (primary key) | 
 **date** | **DateTime**| Date in YYYY-MM-DD format (max 7 days in the past) | 

### Return type

[**BusLocationHistoryResponse**](BusLocationHistoryResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

