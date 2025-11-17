# frontend_easy_api.model.RouteStop

## Load the model package
```dart
import 'package:frontend_easy_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**busStop** | **String** | Bus stop on this route | 
**busStopName** | **String** |  | [readonly] 
**latitude** | **double** |  | [readonly] 
**longitude** | **double** |  | [readonly] 
**sequence** | **int** | Order of this stop in the route (1-based) | 
**waypoints** | [**Object**](.md) | Path coordinates to NEXT stop: [{lat, lon}, ...] | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


