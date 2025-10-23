# frontend_easy_api.model.KioskActivationResponse

## Load the model package
```dart
import 'package:frontend_easy_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **String** | Success message |
**access** | **String** | JWT access token (15 minutes) |
**refresh** | **String** | JWT refresh token (60 days) |
**kioskId** | **String** | Activated kiosk ID |
**busId** | **String** | Assigned bus ID | [optional]
**activationTokenDestroyed** | **bool** | Confirms token is now garbage |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
