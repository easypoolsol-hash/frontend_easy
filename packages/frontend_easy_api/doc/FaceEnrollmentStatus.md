# openapi.model.FaceEnrollmentStatus

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enrollmentId** | **String** |  | [readonly] 
**status** | **String** | Approval status  * `pending_approval` - Pending Approval * `approved` - Approved * `rejected` - Rejected | [readonly] 
**photoCount** | **int** | Number of photos in this enrollment | [readonly] 
**submittedAt** | [**DateTime**](DateTime.md) | When parent submitted enrollment | [readonly] 
**reviewedAt** | [**DateTime**](DateTime.md) | When enrollment was reviewed | [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


