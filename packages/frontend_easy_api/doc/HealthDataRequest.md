# frontend_easy_api.model.HealthDataRequest

## Load the model package
```dart
import 'package:frontend_easy_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**batteryLevel** | **int** |  | [optional] 
**deviceTemperature** | **int** | Device temperature in deciselsius (Celsius * 10) | [optional] 
**isCharging** | **bool** |  | [optional] [default to false]
**storageAvailableMb** | **int** |  | [optional] 
**cameraActive** | **bool** |  | [optional] [default to false]
**networkType** | **String** |  | [optional] 
**appVersion** | **String** |  | [optional] 
**lastFaceDetectedAgoMin** | **int** |  | [optional] 
**facesDetectedToday** | **int** |  | [optional] [default to 0]
**studentsIdentifiedToday** | **int** |  | [optional] [default to 0]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


