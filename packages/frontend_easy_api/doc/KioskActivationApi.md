# frontend_easy_api.api.KioskActivationApi

## Load the API package
```dart
import 'package:frontend_easy_api/api.dart';
```

All URIs are relative to *http://localhost:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**kioskActivate**](KioskActivationApi.md#kioskactivate) | **POST** /api/v1/kiosks/activate/ | 


# **kioskActivate**
> KioskActivationResponse kioskActivate(kioskActivation)



     **Fortune 500 Standard: One-time Device Activation**      Used by: Google Nest, Amazon Alexa, Netflix devices      Activates a kiosk using a disposable activation token.     After activation, the token becomes garbage and cannot be reused.      **Security Features:**     - One-time use activation tokens (WhatsApp leak protection)     - Tokens destroyed after first use     - 60-day rotating refresh tokens     - 15-minute access tokens      **Example Request:**     ```json     {         \"kiosk_id\": \"KIOSK-SCHOOL-001\",         \"activation_token\": \"8Jz4Y-x9K2mQ_r5WvLp3NcTg7HfB6DsA1eU0oI9j8Xw\"     }     ```     

### Example
```dart
import 'package:frontend_easy_api/api.dart';

final api = FrontendEasyApi().getKioskActivationApi();
final KioskActivation kioskActivation = ; // KioskActivation | 

try {
    final response = api.kioskActivate(kioskActivation);
    print(response);
} catch on DioException (e) {
    print('Exception when calling KioskActivationApi->kioskActivate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kioskActivation** | [**KioskActivation**](KioskActivation.md)|  | 

### Return type

[**KioskActivationResponse**](KioskActivationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

