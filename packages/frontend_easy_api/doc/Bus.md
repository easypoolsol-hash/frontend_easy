# openapi.model.Bus

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**busId** | **String** | UUID primary key | [readonly]
**licensePlate** | **String** | Vehicle license plate number |
**route** | **String** | Route this bus is assigned to | [optional]
**routeName** | **String** |  | [readonly]
**capacity** | **int** | Maximum number of passengers |
**deviceId** | **String** | Kiosk device identifier installed on this bus | [optional]
**status** | **String** | Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired | [optional]
**manufacturer** | **String** | Bus manufacturer | [optional]
**model** | **String** | Bus model | [optional]
**year** | **int** | Manufacturing year | [optional]
**lastMaintenance** | [**DateTime**](DateTime.md) | Date of last maintenance | [optional]
**assignedStudentsCount** | **String** |  | [readonly]
**utilizationPercentage** | **String** |  | [readonly]
**isAvailable** | **String** |  | [readonly]
**createdAt** | [**DateTime**](DateTime.md) | When this bus was added to the system | [readonly]
**updatedAt** | [**DateTime**](DateTime.md) | When this bus record was last updated | [readonly]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
