# frontend_easy_api.model.DeviceLogRequest

## Load the model package
```dart
import 'package:frontend_easy_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**kiosk** | **String** | Kiosk that generated this log entry | 
**logLevel** | **String** | Log level severity  * `DEBUG` - Debug * `INFO` - Info * `WARN` - Warning * `ERROR` - Error * `CRITICAL` - Critical | 
**message** | **String** | Log message content | 
**metadata** | [**JsonObject**](.md) | Additional structured data as JSON | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


