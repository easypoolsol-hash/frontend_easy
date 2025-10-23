# frontend_easy_api.model.PatchedRoute

## Load the model package
```dart
import 'package:frontend_easy_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**routeId** | **String** | UUID primary key | [optional]
**name** | **String** | Route name (e.g., 'Route A', 'North Loop') | [optional]
**description** | **String** | Detailed description of the route | [optional]
**stops** | **Object** | Array of stop objects: [{name, lat, lon, sequence, estimated_time}] | [optional]
**schedule** | **Object** | Schedule data: {morning: {start, end}, afternoon: {start, end}} | [optional]
**isActive** | **bool** | Whether this route is currently active | [optional]
**stopCount** | **String** |  | [optional]
**totalStudents** | **String** |  | [optional]
**createdAt** | [**DateTime**](DateTime.md) | When this route was created | [optional]
**updatedAt** | [**DateTime**](DateTime.md) | When this route was last updated | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
