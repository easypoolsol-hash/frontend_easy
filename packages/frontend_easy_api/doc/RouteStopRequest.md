# frontend_easy_api.model.RouteStopRequest

## Load the model package
```dart
import 'package:frontend_easy_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**busStop** | **String** | Bus stop on this route | 
**sequence** | **int** | Order of this stop in the route (1-based) | 
**waypoints** | [**JsonObject**](.md) | Path coordinates to NEXT stop: [{lat, lon}, ...] | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


