# openapi.model.Role

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**roleId** | **String** |  | [readonly]
**name** | **String** | * `super_admin` - Super Administrator * `backend_engineer` - Backend Engineer * `school_admin` - School Administrator * `parent` - Parent |
**description** | **String** |  | [optional]
**permissions** | [**Object**](.md) | JSON object defining role permissions | [optional]
**isActive** | **bool** |  | [optional]
**createdAt** | [**DateTime**](DateTime.md) |  | [readonly]
**updatedAt** | [**DateTime**](DateTime.md) |  | [readonly]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
