# frontend_easy_api.model.HeartbeatRequest

## Load the model package
```dart
import 'package:frontend_easy_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**timestamp** | [**DateTime**](DateTime.md) | Heartbeat timestamp | 
**databaseVersion** | **String** | Current database version on kiosk | 
**databaseHash** | **String** | Database content hash | [optional] 
**studentCount** | **int** | Students in DB | 
**embeddingCount** | **int** | Embeddings in DB | 
**gitCommitSha** | **String** | Git commit SHA of the kiosk app build (40 chars). Null for dev builds. | [optional] 
**health** | [**HealthDataRequest**](HealthDataRequest.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


