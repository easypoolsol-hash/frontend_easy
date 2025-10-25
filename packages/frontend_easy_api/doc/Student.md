# frontend_easy_api.model.Student

## Load the model package
```dart
import 'package:frontend_easy_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studentId** | **String** |  | 
**school** | **String** |  | 
**decryptedName** | **String** |  | 
**name** | **String** | Encrypted at application layer | 
**grade** | **String** |  | 
**section** | **String** |  | [optional] 
**assignedBus** | **String** | UUID primary key | [optional] 
**status** | **String** | * `active` - Active * `inactive` - Inactive * `suspended` - Suspended | [optional] 
**enrollmentDate** | [**DateTime**](DateTime.md) |  | 
**schoolDetails** | [**School**](School.md) |  | 
**busDetails** | [**BusBasic**](BusBasic.md) |  | 
**parents** | [**List&lt;StudentParent&gt;**](StudentParent.md) |  | 
**photos** | [**List&lt;StudentPhoto&gt;**](StudentPhoto.md) |  | 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**updatedAt** | [**DateTime**](DateTime.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


