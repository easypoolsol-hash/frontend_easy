# frontend_easy_api.model.PatchedParent

## Load the model package
```dart
import 'package:frontend_easy_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**parentId** | **String** |  | [optional]
**decryptedName** | **String** |  | [optional]
**decryptedPhone** | **String** |  | [optional]
**decryptedEmail** | **String** |  | [optional]
**name** | **String** | Encrypted name (plaintext validated max 100 chars) | [optional]
**phone** | **String** | Encrypted phone number (plaintext validated as +91XXXXXXXXXX) | [optional]
**email** | **String** | Encrypted email address (plaintext validated per RFC 5321) | [optional]
**createdAt** | [**DateTime**](DateTime.md) |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
