# frontend_easy_api.model.BusBasic

## Load the model package
```dart
import 'package:frontend_easy_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**busId** | **String** | UUID primary key | 
**licensePlate** | **String** | Vehicle license plate number | 
**busNumber** | **String** | School-assigned bus number (e.g., 'BUS-001', 'B-12') | 
**capacity** | **int** | Maximum number of passengers | [optional] 
**status** | **String** | Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired | [optional] 
**createdAt** | [**DateTime**](DateTime.md) | When this bus was added to the system | 
**updatedAt** | [**DateTime**](DateTime.md) | When this bus record was last updated | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


