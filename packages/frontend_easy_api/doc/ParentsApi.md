# frontend_easy_api.api.ParentsApi

## Load the API package
```dart
import 'package:frontend_easy_api/api.dart';
```

All URIs are relative to *http://localhost:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**parentBusLocations**](ParentsApi.md#parentbuslocations) | **GET** /api/v1/parent/my-buses/ | 


# **parentBusLocations**
> ParentBusLocationsResponse parentBusLocations()



     **Fortune 500 IAM-style Parent Bus Locations**      Returns bus locations ONLY for buses assigned to the parent's children.      **Authorization:**     - Requires authentication (JWT token)     - Requires role: parent     - Filters results by parent-child-bus assignments     - Zero-trust: Parents can ONLY see their own children's buses      **Response:**     GeoJSON FeatureCollection with bus location points     

### Example
```dart
import 'package:frontend_easy_api/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api = FrontendEasyApi().getParentsApi();

try {
    final response = api.parentBusLocations();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ParentsApi->parentBusLocations: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ParentBusLocationsResponse**](ParentBusLocationsResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

