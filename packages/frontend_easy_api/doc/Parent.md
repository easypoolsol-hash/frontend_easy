# frontend_easy_api.model.Parent

## Load the model package
```dart
import 'package:frontend_easy_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**parentId** | **String** |  | 
**decryptedName** | **String** |  | 
**decryptedPhone** | **String** |  | 
**decryptedEmail** | **String** |  | 
**name** | **String** | Encrypted name (plaintext validated max 100 chars) | 
**phone** | **String** | Encrypted phone number (plaintext validated as +91XXXXXXXXXX) | 
**email** | **String** | Encrypted email address (plaintext validated per RFC 5321) | 
**createdAt** | [**DateTime**](DateTime.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


