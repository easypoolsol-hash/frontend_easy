# frontend_easy_api.model.PatchedRoute

## Load the model package
```dart
import 'package:frontend_easy_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**routeId** | **String** | UUID primary key | [optional] [readonly] 
**name** | **String** | Route name (e.g., 'Route A', 'North Loop') | [optional] 
**description** | **String** | Detailed description of the route | [optional] 
**colorCode** | **String** | Hex color for map display (e.g., #FF5733) | [optional] 
**linePattern** | **String** | Line pattern for map visualization  * `solid` - Solid Line * `dashed` - Dashed Line | [optional] 
**isActive** | **bool** | Whether this route is currently active | [optional] 
**stopCount** | **int** |  | [optional] [readonly] 
**totalStudents** | **int** |  | [optional] [readonly] 
**routeStops** | [**List<RouteStop>**](RouteStop.md) |  | [optional] [readonly] [default to const []]
**encodedPolyline** | **String** |  | [optional] [readonly] 
**busStops** | **String** |  | [optional] [readonly] 
**createdAt** | [**DateTime**](DateTime.md) | When this route was created | [optional] [readonly] 
**updatedAt** | [**DateTime**](DateTime.md) | When this route was last updated | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


