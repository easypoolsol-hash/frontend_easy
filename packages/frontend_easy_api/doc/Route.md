# frontend_easy_api.model.Route

## Load the model package
```dart
import 'package:frontend_easy_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**routeId** | **String** | UUID primary key |
**name** | **String** | Route name (e.g., 'Route A', 'North Loop') |
**description** | **String** | Detailed description of the route | [optional]
**stops** | **Object** | Array of stop objects: [{name, lat, lon, sequence, estimated_time}] | [optional]
**schedule** | **Object** | Schedule data: {morning: {start, end}, afternoon: {start, end}} | [optional]
**isActive** | **bool** | Whether this route is currently active | [optional]
**stopCount** | **String** |  |
**totalStudents** | **String** |  |
**createdAt** | [**DateTime**](DateTime.md) | When this route was created |
**updatedAt** | [**DateTime**](DateTime.md) | When this route was last updated |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
