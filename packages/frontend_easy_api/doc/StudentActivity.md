# frontend_easy_api.model.StudentActivity

## Load the model package
```dart
import 'package:frontend_easy_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**schoolStudentId** | **String** | School-provided student ID (e.g., STU-2024-001) | 
**studentName** | **String** | Student name (decrypted by backend) | 
**grade** | **String** | Student grade | 
**busNumber** | **String** | Bus license plate | [optional] 
**routeName** | **String** | Route name | [optional] 
**events** | [**BuiltList&lt;BoardingEventNested&gt;**](BoardingEventNested.md) | All boarding events for this student today | 
**eventCount** | **int** | Number of events today | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


