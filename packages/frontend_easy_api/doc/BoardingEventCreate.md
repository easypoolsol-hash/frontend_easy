# openapi.model.BoardingEventCreate

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**eventId** | **String** | ULID primary key for global uniqueness and time sorting | [readonly] 
**student** | **String** | Student who boarded the bus (null for unidentified faces) | [optional] 
**kioskId** | **String** | Kiosk device identifier | 
**confidenceScore** | **double** | Face recognition confidence score (0.0-1.0) | 
**timestamp** | [**DateTime**](DateTime.md) | When the boarding event occurred | 
**gpsCoords** | **List<double>** | GPS coordinates as [latitude, longitude]. Optional - boarding events can be created without location. | [optional] [default to const []]
**busRoute** | **String** | Bus route identifier | [optional] 
**faceImageUrl** | **String** | S3 URL to face image for verification (optional) | [optional] 
**modelVersion** | **String** | Face recognition model version used | 
**metadata** | [**Object**](.md) | Additional metadata as JSON | [optional] 
**confirmationFacesBase64** | **List<String>** | Array of base64-encoded confirmation faces (112x112 JPEG). Send up to 3 consecutive frames. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


