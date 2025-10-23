# frontend_easy_api.model.PatchedBoardingEvent

## Load the model package
```dart
import 'package:frontend_easy_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**eventId** | **String** | ULID primary key for global uniqueness and time sorting | [optional] 
**student** | **String** | Student who boarded the bus | [optional] 
**kioskId** | **String** | Kiosk device identifier | [optional] 
**confidenceScore** | **double** | Face recognition confidence score (0.0-1.0) | [optional] 
**timestamp** | [**DateTime**](DateTime.md) | When the boarding event occurred | [optional] 
**latitude** | **double** | GPS latitude coordinate | [optional] 
**longitude** | **double** | GPS longitude coordinate | [optional] 
**busRoute** | **String** | Bus route identifier | [optional] 
**faceImageUrl** | **String** | S3 URL to face image for verification (optional) | [optional] 
**modelVersion** | **String** | Face recognition model version used | [optional] 
**metadata** | **Object** | Additional metadata as JSON | [optional] 
**createdAt** | [**DateTime**](DateTime.md) | When this record was created in database | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


