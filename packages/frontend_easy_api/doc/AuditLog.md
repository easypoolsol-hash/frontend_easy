# openapi.model.AuditLog

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**logId** | **int** |  | [readonly]
**user** | **String** |  | [optional]
**userUsername** | **String** |  | [readonly]
**userEmail** | **String** |  | [readonly]
**action** | **String** | * `CREATE` - Create * `UPDATE` - Update * `DELETE` - Delete * `LOGIN` - Login * `LOGOUT` - Logout * `API_ACCESS` - API Access |
**resourceType** | **String** | * `user` - User * `student` - Student * `bus` - Bus * `kiosk` - Kiosk * `event` - Boarding Event * `notification` - Notification |
**resourceId** | **String** |  | [optional]
**changes** | [**Object**](.md) | JSON object of changes made | [optional]
**ipAddress** | **String** |  | [optional]
**userAgent** | **String** |  | [optional]
**timestamp** | [**DateTime**](DateTime.md) |  | [readonly]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
