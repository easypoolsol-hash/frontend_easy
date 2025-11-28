# frontend_easy_api.model.BusRequest

## Load the model package
```dart
import 'package:frontend_easy_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**busNumber** | **String** | School-assigned bus number (e.g., 'BUS-001', 'B-12') | 
**licensePlate** | **String** | Vehicle license plate number | 
**route** | **String** | Route this bus is assigned to | [optional] 
**capacity** | **int** | Maximum number of passengers | [optional] 
**deviceId** | **String** | Kiosk device identifier installed on this bus | [optional] 
**status** | **String** | Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired | [optional] 
**manufacturer** | **String** | Bus manufacturer | [optional] 
**model** | **String** | Bus model | [optional] 
**year** | **int** | Manufacturing year | [optional] 
**lastMaintenance** | [**Date**](Date.md) | Date of last maintenance | [optional] 
**driverName** | **String** | Driver's full name | [optional] 
**driverPhone** | **String** | Driver's contact number | [optional] 
**driverAddress** | **String** | Driver's address | [optional] 
**driverLicenseNumber** | **String** | Driver's license number | [optional] 
**conductorName** | **String** | Conductor's full name | [optional] 
**conductorPhone** | **String** | Conductor's contact number | [optional] 
**conductorAddress** | **String** | Conductor's address | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


