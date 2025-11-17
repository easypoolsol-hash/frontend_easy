# frontend_easy_api.model.PatchedBus

## Load the model package
```dart
import 'package:frontend_easy_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**busId** | **String** | UUID primary key | [optional] [readonly] 
**busNumber** | **String** | School-assigned bus number (e.g., 'BUS-001', 'B-12') | [optional] 
**licensePlate** | **String** | Vehicle license plate number | [optional] 
**route** | **String** | Route this bus is assigned to | [optional] 
**routeName** | **String** |  | [optional] [readonly] 
**capacity** | **int** | Maximum number of passengers | [optional] 
**deviceId** | **String** | Kiosk device identifier installed on this bus | [optional] 
**status** | **String** | Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired | [optional] 
**manufacturer** | **String** | Bus manufacturer | [optional] 
**model** | **String** | Bus model | [optional] 
**year** | **int** | Manufacturing year | [optional] 
**lastMaintenance** | [**DateTime**](DateTime.md) | Date of last maintenance | [optional] 
**driverName** | **String** | Driver's full name | [optional] 
**driverPhone** | **String** | Driver's contact number | [optional] 
**driverAddress** | **String** | Driver's address | [optional] 
**driverLicenseNumber** | **String** | Driver's license number | [optional] 
**conductorName** | **String** | Conductor's full name | [optional] 
**conductorPhone** | **String** | Conductor's contact number | [optional] 
**conductorAddress** | **String** | Conductor's address | [optional] 
**assignedStudentsCount** | **int** |  | [optional] [readonly] 
**utilizationPercentage** | **double** |  | [optional] [readonly] 
**isAvailable** | **bool** |  | [optional] [readonly] 
**createdAt** | [**DateTime**](DateTime.md) | When this bus was added to the system | [optional] [readonly] 
**updatedAt** | [**DateTime**](DateTime.md) | When this bus record was last updated | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


