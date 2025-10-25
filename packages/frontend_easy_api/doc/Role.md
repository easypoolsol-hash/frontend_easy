# frontend_easy_api.model.Role

## Load the model package
```dart
import 'package:frontend_easy_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**roleId** | **String** |  | 
**name** | **String** | * `super_admin` - Super Administrator * `backend_engineer` - Backend Engineer * `school_admin` - School Administrator * `parent` - Parent | 
**description** | **String** |  | [optional] 
**permissions** | [**JsonObject**](.md) | JSON object defining role permissions | [optional] 
**isActive** | **bool** |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**updatedAt** | [**DateTime**](DateTime.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


