# frontend_easy_api.model.Bus

## Load the model package
```dart
import 'package:frontend_easy_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**busId** | **String** | UUID primary key | 
**licensePlate** | **String** | Vehicle license plate number | 
**route** | **String** | Route this bus is assigned to | [optional] 
**routeName** | **String** |  | 
**capacity** | **int** | Maximum number of passengers | 
**deviceId** | **String** | Kiosk device identifier installed on this bus | [optional] 
**status** | **String** | Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired | [optional] 
**manufacturer** | **String** | Bus manufacturer | [optional] 
**model** | **String** | Bus model | [optional] 
**year** | **int** | Manufacturing year | [optional] 
**lastMaintenance** | [**DateTime**](DateTime.md) | Date of last maintenance | [optional] 
**assignedStudentsCount** | **String** |  | 
**utilizationPercentage** | **String** |  | 
**isAvailable** | **String** |  | 
**createdAt** | [**DateTime**](DateTime.md) | When this bus was added to the system | 
**updatedAt** | [**DateTime**](DateTime.md) | When this bus record was last updated | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


