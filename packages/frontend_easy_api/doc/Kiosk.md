# openapi.model.Kiosk

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**kioskId** | **String** | Unique kiosk device identifier (e.g., KIOSK001, BUS123-KIOSK) | [readonly] 
**bus** | **String** |  | [readonly] 
**busLicensePlate** | **String** |  | [readonly] 
**firmwareVersion** | **String** | Current firmware version installed on device | [optional] 
**gitCommitSha** | **String** | Git commit SHA of current kiosk app build | [optional] 
**lastHeartbeat** | [**DateTime**](DateTime.md) | Timestamp of last heartbeat received from device | [optional] 
**isActive** | **bool** | Whether this kiosk is active and accepting requests | [optional] 
**batteryLevel** | **double** |  | [optional] 
**storageUsedMb** | **int** | Storage used in MB on the device | [optional] 
**operationTiming** | [**OperationTiming**](OperationTiming.md) |  | [readonly] 
**statusDisplay** | **String** |  | [readonly] 
**isOnline** | **String** |  | [readonly] 
**createdAt** | [**DateTime**](DateTime.md) | When this kiosk was registered | [readonly] 
**updatedAt** | [**DateTime**](DateTime.md) | When this kiosk record was last updated | [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


