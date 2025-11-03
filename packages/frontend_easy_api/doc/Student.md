# frontend_easy_api.model.Student

## Load the model package
```dart
import 'package:frontend_easy_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studentId** | **String** |  | [readonly] 
**school** | **String** |  | 
**decryptedName** | **String** |  | [readonly] 
**name** | **String** | Encrypted at application layer | 
**grade** | **String** |  | 
**section** | **String** |  | [optional] 
**assignedBus** | **String** | UUID primary key | [optional] 
**status** | **String** | * `active` - Active * `inactive` - Inactive * `suspended` - Suspended | [optional] 
**enrollmentDate** | [**DateTime**](DateTime.md) |  | 
**schoolDetails** | [**School**](School.md) |  | [readonly] 
**busDetails** | [**BusBasic**](BusBasic.md) |  | [readonly] 
**parents** | [**List<StudentParent>**](StudentParent.md) |  | [readonly] [default to const []]
**photos** | [**List<StudentPhoto>**](StudentPhoto.md) |  | [readonly] [default to const []]
**createdAt** | [**DateTime**](DateTime.md) |  | [readonly] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


