# frontend_easy_api.model.PatchedStudent

## Load the model package
```dart
import 'package:frontend_easy_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studentId** | **String** |  | [optional] 
**school** | **String** |  | [optional] 
**decryptedName** | **String** |  | [optional] 
**name** | **String** | Encrypted at application layer | [optional] 
**grade** | **String** |  | [optional] 
**section** | **String** |  | [optional] 
**assignedBus** | **String** | UUID primary key | [optional] 
**status** | **String** | * `active` - Active * `inactive` - Inactive * `suspended` - Suspended | [optional] 
**enrollmentDate** | [**DateTime**](DateTime.md) |  | [optional] 
**schoolDetails** | [**School**](School.md) |  | [optional] 
**busDetails** | [**BusBasic**](BusBasic.md) |  | [optional] 
**parents** | **String** |  | [optional] 
**photos** | **String** |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


