# openapi.model.Parent

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**parentId** | **String** |  | [readonly] 
**decryptedName** | **String** |  | [readonly] 
**decryptedPhone** | **String** |  | [readonly] 
**decryptedEmail** | **String** |  | [readonly] 
**name** | **String** | Encrypted name (plaintext validated max 100 chars) | 
**phone** | **String** | Encrypted phone number (plaintext validated as +91XXXXXXXXXX) | 
**email** | **String** | Encrypted email address (plaintext validated per RFC 5321) | 
**createdAt** | [**DateTime**](DateTime.md) |  | [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


