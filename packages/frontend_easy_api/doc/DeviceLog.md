# frontend_easy_api.model.DeviceLog

## Load the model package
```dart
import 'package:frontend_easy_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**logId** | **int** | Auto-incrementing log entry ID | [readonly] 
**kiosk** | **String** | Kiosk that generated this log entry | 
**kioskId** | **String** |  | [readonly] 
**logLevel** | **String** | Log level severity  * `DEBUG` - Debug * `INFO` - Info * `WARN` - Warning * `ERROR` - Error * `CRITICAL` - Critical | 
**message** | **String** | Log message content | 
**metadata** | [**Object**](.md) | Additional structured data as JSON | [optional] 
**timestamp** | [**DateTime**](DateTime.md) | When this log entry was created | [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


