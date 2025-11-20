# openapi.model.OperationTiming

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Schedule name (e.g., 'Morning Shift', 'Full Day') | 
**description** | **String** | Optional description of this schedule | [optional] 
**isActive** | **bool** | Whether this schedule is available for selection | [optional] 
**slots** | [**List<OperationSlot>**](OperationSlot.md) |  | [readonly] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


