# frontend_easy_api.model.AuditLog

## Load the model package
```dart
import 'package:frontend_easy_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**logId** | **int** |  | 
**user** | **String** |  | [optional] 
**userUsername** | **String** |  | 
**userEmail** | **String** |  | 
**action** | **String** | * `CREATE` - Create * `UPDATE` - Update * `DELETE` - Delete * `LOGIN` - Login * `LOGIN_FAILED` - Login Failed * `LOGOUT` - Logout * `API_ACCESS` - API Access | 
**resourceType** | **String** | * `user` - User * `student` - Student * `bus` - Bus * `kiosk` - Kiosk * `event` - Boarding Event * `notification` - Notification | 
**resourceId** | **String** |  | [optional] 
**changes** | [**JsonObject**](.md) | JSON object of changes made | [optional] 
**ipAddress** | **String** |  | [optional] 
**userAgent** | **String** |  | [optional] 
**timestamp** | [**DateTime**](DateTime.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


