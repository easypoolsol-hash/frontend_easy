# openapi.model.Route

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**routeId** | **String** | UUID primary key | [readonly] 
**name** | **String** | Route name (e.g., 'Route A', 'North Loop') | 
**description** | **String** | Detailed description of the route | [optional] 
**colorCode** | **String** | Hex color for map display (e.g., #FF5733) | [optional] 
**linePattern** | **String** | Line pattern for map visualization  * `solid` - Solid Line * `dashed` - Dashed Line | [optional] 
**isActive** | **bool** | Whether this route is currently active | [optional] 
**stopCount** | **String** |  | [readonly] 
**totalStudents** | **String** |  | [readonly] 
**routeStops** | [**List<RouteStop>**](RouteStop.md) |  | [readonly] [default to const []]
**createdAt** | [**DateTime**](DateTime.md) | When this route was created | [readonly] 
**updatedAt** | [**DateTime**](DateTime.md) | When this route was last updated | [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


