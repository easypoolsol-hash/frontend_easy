# frontend_easy_api.model.BoardingEventNested

## Load the model package
```dart
import 'package:frontend_easy_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**eventId** | **String** | Event ULID | 
**timestamp** | [**DateTime**](DateTime.md) | When event occurred | 
**kioskId** | **String** | Kiosk device ID | 
**eventType** | **String** | Event type (boarding/pickup/dropoff) | 
**confirmationFaceUrls** | **BuiltList&lt;String&gt;** | List of signed URLs for confirmation faces (flexible - 1 to N photos) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


