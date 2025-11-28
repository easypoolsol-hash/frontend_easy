# frontend_easy_api.model.KioskRequest

## Load the model package
```dart
import 'package:frontend_easy_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**firmwareVersion** | **String** | Current firmware version installed on device | [optional] 
**gitCommitSha** | **String** | Git commit SHA of current kiosk app build | [optional] 
**lastHeartbeat** | [**DateTime**](DateTime.md) | Timestamp of last heartbeat received from device | [optional] 
**isActive** | **bool** | Whether this kiosk is active and accepting requests | [optional] 
**batteryLevel** | **double** |  | [optional] 
**storageUsedMb** | **int** | Storage used in MB on the device | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


