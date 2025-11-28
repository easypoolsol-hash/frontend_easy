# frontend_easy_api.model.FaceEnrollmentStatus

## Load the model package
```dart
import 'package:frontend_easy_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enrollmentId** | **String** |  | 
**status** | **String** | Approval status  * `pending_approval` - Pending Approval * `approved` - Approved * `rejected` - Rejected | 
**photoCount** | **int** | Number of photos in this enrollment | 
**submittedAt** | [**DateTime**](DateTime.md) | When parent submitted enrollment | 
**reviewedAt** | [**DateTime**](DateTime.md) | When enrollment was reviewed | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


