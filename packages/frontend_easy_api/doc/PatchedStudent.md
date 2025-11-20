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
**schoolStudentId** | **String** | School-provided student ID (e.g., STU-2024-001) | [optional] 
**decryptedName** | **String** |  | [optional] 
**grade** | **String** |  | [optional] 
**section** | **String** |  | [optional] 
**addressLatitude** | **double** | Student home address latitude | [optional] 
**addressLongitude** | **double** | Student home address longitude | [optional] 
**assignedBus** | **String** | UUID primary key | [optional] 
**status** | **String** | * `active` - Active * `inactive` - Inactive * `suspended` - Suspended | [optional] 
**enrollmentDate** | [**Date**](Date.md) | Date student enrolled in school | [optional] 
**schoolDetails** | [**School**](School.md) |  | [optional] 
**busDetails** | [**BusBasic**](BusBasic.md) |  | [optional] 
**parents** | [**BuiltList&lt;StudentParent&gt;**](StudentParent.md) |  | [optional] 
**photos** | [**BuiltList&lt;StudentPhoto&gt;**](StudentPhoto.md) |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


