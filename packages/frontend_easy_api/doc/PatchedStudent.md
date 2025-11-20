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
**schoolStudentId** | **String** | School-provided student ID (e.g., STU-2024-001) | [optional] 
**decryptedName** | **String** |  | [optional] [readonly] 
**grade** | **String** |  | [optional] 
**section** | **String** |  | [optional] 
**addressLatitude** | **double** | Student home address latitude | [optional] 
**addressLongitude** | **double** | Student home address longitude | [optional] 
**assignedBus** | **String** | UUID primary key | [optional] 
**status** | **String** | * `active` - Active * `inactive` - Inactive * `suspended` - Suspended | [optional] 
**enrollmentDate** | [**DateTime**](DateTime.md) | Date student enrolled in school | [optional] 
**schoolDetails** | [**School**](School.md) |  | [optional] [readonly] 
**busDetails** | [**BusBasic**](BusBasic.md) |  | [optional] [readonly] 
**parents** | [**List<StudentParent>**](StudentParent.md) |  | [optional] [readonly] [default to const []]
**photos** | [**List<StudentPhoto>**](StudentPhoto.md) |  | [optional] [readonly] [default to const []]
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] [readonly] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


