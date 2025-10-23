# frontend_easy_api.model.BusLocation

## Load the model package
```dart
import 'package:frontend_easy_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**locationId** | **int** | Auto-incrementing location entry ID |
**latitude** | **double** | GPS latitude coordinate |
**longitude** | **double** | GPS longitude coordinate |
**accuracy** | **double** | GPS accuracy in meters | [optional]
**speed** | **double** | Speed in km/h | [optional]
**heading** | **double** | Heading/bearing in degrees (0-360) | [optional]
**timestamp** | [**DateTime**](DateTime.md) | When this location was recorded by the kiosk |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
