# frontend_easy_api.model.BoardingEventRequest

## Load the model package
```dart
import 'package:frontend_easy_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**student** | **String** | Student who boarded the bus (null for unidentified faces) | [optional] 
**kioskId** | **String** | Kiosk device identifier | 
**confidenceScore** | **double** | Face recognition confidence score (0.0-1.0) | 
**timestamp** | [**DateTime**](DateTime.md) | When the boarding event occurred | 
**latitude** | **double** | GPS latitude coordinate | [optional] 
**longitude** | **double** | GPS longitude coordinate | [optional] 
**busRoute** | **String** | Bus route identifier | [optional] 
**faceImageUrl** | **String** | S3 URL to face image for verification (optional) | [optional] 
**modelVersion** | **String** | Face recognition model version used | 
**metadata** | [**JsonObject**](.md) | Additional metadata as JSON | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


