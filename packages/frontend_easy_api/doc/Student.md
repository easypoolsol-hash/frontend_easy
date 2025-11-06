# openapi.model.Student

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studentId** | **String** |  | [readonly] 
**school** | **String** |  | 
**schoolStudentId** | **String** | School-provided student ID (e.g., STU-2024-001) | 
**decryptedName** | **String** |  | [readonly] 
**grade** | **String** |  | 
**section** | **String** |  | [optional] 
**addressLatitude** | **double** | Student home address latitude | [optional] 
**addressLongitude** | **double** | Student home address longitude | [optional] 
**assignedBus** | **String** | UUID primary key | [optional] 
**status** | **String** | * `active` - Active * `inactive` - Inactive * `suspended` - Suspended | [optional] 
**enrollmentDate** | [**DateTime**](DateTime.md) | Date student enrolled in school | [optional] 
**schoolDetails** | [**School**](School.md) |  | [readonly] 
**busDetails** | [**BusBasic**](BusBasic.md) |  | [readonly] 
**parents** | [**List<StudentParent>**](StudentParent.md) |  | [readonly] [default to const []]
**photos** | [**List<StudentPhoto>**](StudentPhoto.md) |  | [readonly] [default to const []]
**createdAt** | [**DateTime**](DateTime.md) |  | [readonly] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


