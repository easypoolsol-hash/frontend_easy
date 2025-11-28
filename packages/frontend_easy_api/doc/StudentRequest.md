# frontend_easy_api.model.StudentRequest

## Load the model package
```dart
import 'package:frontend_easy_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**school** | **String** |  | 
**schoolStudentId** | **String** | School-provided student ID (e.g., STU-2024-001) | 
**grade** | **String** |  | 
**section** | **String** |  | [optional] 
**addressLatitude** | **double** | Student home address latitude | [optional] 
**addressLongitude** | **double** | Student home address longitude | [optional] 
**assignedBus** | **String** | UUID primary key | [optional] 
**status** | **String** | * `active` - Active * `inactive` - Inactive * `suspended` - Suspended | [optional] 
**enrollmentDate** | [**Date**](Date.md) | Date student enrolled in school | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


