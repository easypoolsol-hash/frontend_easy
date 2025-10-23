# openapi.model.AttendanceRecord

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**recordId** | **String** | UUID primary key | [readonly]
**student** | **String** | Student attendance record |
**studentName** | **String** |  | [readonly]
**studentGrade** | **String** |  | [readonly]
**date** | [**DateTime**](DateTime.md) | Date of attendance record |
**morningBoarded** | **bool** | Whether student boarded in the morning | [optional]
**morningTime** | [**DateTime**](DateTime.md) | Time of morning boarding | [optional]
**afternoonBoarded** | **bool** | Whether student boarded in the afternoon | [optional]
**afternoonTime** | [**DateTime**](DateTime.md) | Time of afternoon boarding | [optional]
**status** | **String** | Overall attendance status  * `present` - Present * `absent` - Absent * `partial` - Partial | [readonly]
**createdAt** | [**DateTime**](DateTime.md) | When this record was created | [readonly]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
