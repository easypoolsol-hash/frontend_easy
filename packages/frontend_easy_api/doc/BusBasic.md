# openapi.model.BusBasic

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**busId** | **String** | UUID primary key | [readonly]
**licensePlate** | **String** | Vehicle license plate number |
**capacity** | **int** | Maximum number of passengers |
**status** | **String** | Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired | [optional]
**createdAt** | [**DateTime**](DateTime.md) | When this bus was added to the system | [readonly]
**updatedAt** | [**DateTime**](DateTime.md) | When this bus record was last updated | [readonly]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
