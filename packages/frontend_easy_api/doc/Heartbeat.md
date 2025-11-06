# openapi.model.Heartbeat

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**timestamp** | [**DateTime**](DateTime.md) | Heartbeat timestamp | 
**databaseVersion** | **String** | Current database version on kiosk | 
**databaseHash** | **String** | Database content hash | [optional] 
**studentCount** | **int** | Students in DB | 
**embeddingCount** | **int** | Embeddings in DB | 
**health** | [**HealthData**](HealthData.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


