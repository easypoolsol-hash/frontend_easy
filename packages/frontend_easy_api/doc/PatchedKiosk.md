# frontend_easy_api.model.PatchedKiosk

## Load the model package
```dart
import 'package:frontend_easy_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**kioskId** | **String** | Unique kiosk device identifier (e.g., KIOSK001, BUS123-KIOSK) | [optional] 
**bus** | **String** |  | [optional] 
**busLicensePlate** | **String** |  | [optional] 
**firmwareVersion** | **String** | Current firmware version installed on device | [optional] 
**lastHeartbeat** | [**DateTime**](DateTime.md) | Timestamp of last heartbeat received from device | [optional] 
**isActive** | **bool** | Whether this kiosk is active and accepting requests | [optional] 
**batteryLevel** | **double** |  | [optional] 
**storageUsedMb** | **int** | Storage used in MB on the device | [optional] 
**statusDisplay** | **String** |  | [optional] 
**isOnline** | **String** |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) | When this kiosk was registered | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) | When this kiosk record was last updated | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


