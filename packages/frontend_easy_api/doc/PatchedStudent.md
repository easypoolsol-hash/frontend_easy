# openapi.model.PatchedStudent

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studentId** | **String** |  | [optional] [readonly]
**school** | **String** |  | [optional]
**decryptedName** | **String** |  | [optional] [readonly]
**name** | **String** | Encrypted at application layer | [optional]
**grade** | **String** |  | [optional]
**section** | **String** |  | [optional]
**assignedBus** | **String** | UUID primary key | [optional]
**status** | **String** | * `active` - Active * `inactive` - Inactive * `suspended` - Suspended | [optional]
**enrollmentDate** | [**DateTime**](DateTime.md) |  | [optional]
**schoolDetails** | [**School**](School.md) |  | [optional] [readonly]
**busDetails** | [**BusBasic**](BusBasic.md) |  | [optional] [readonly]
**parents** | **String** |  | [optional] [readonly]
**photos** | **String** |  | [optional] [readonly]
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] [readonly]
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] [readonly]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
