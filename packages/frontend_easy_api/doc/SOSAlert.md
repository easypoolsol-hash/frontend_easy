# openapi.model.SOSAlert

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**alertId** | **int** | Auto-incrementing alert ID | [readonly] 
**kioskId** | **String** |  | [readonly] 
**busLicensePlate** | **String** |  | [readonly] 
**busNumber** | **String** |  | [readonly] 
**latitude** | **double** | GPS latitude at time of alert | [optional] 
**longitude** | **double** | GPS longitude at time of alert | [optional] 
**status** | **String** | Current status of the alert  * `active` - Active * `acknowledged` - Acknowledged * `resolved` - Resolved * `false_alarm` - False Alarm | [optional] 
**message** | **String** | Optional message/notes from the kiosk operator | [optional] 
**metadata** | [**Object**](.md) | Additional data (battery level, network status, etc.) | [optional] 
**createdAt** | [**DateTime**](DateTime.md) | When the alert was created | [readonly] 
**acknowledgedAt** | [**DateTime**](DateTime.md) | When the alert was first acknowledged by staff | [readonly] 
**resolvedAt** | [**DateTime**](DateTime.md) | When the alert was resolved | [readonly] 
**acknowledgedBy** | **String** | Name/ID of person who acknowledged the alert | [optional] 
**resolvedBy** | **String** | Name/ID of person who resolved the alert | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


