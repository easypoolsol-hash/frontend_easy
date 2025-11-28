import 'package:test/test.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';


/// tests for BusesApi
void main() {
  final instance = FrontendEasyApi().getBusesApi();

  group(BusesApi, () {
    //      Returns real-time bus locations for ALL buses in the fleet as GeoJSON.      Accessible by any authenticated user (school administrators, staff, etc.).      **Response Format:**     GeoJSON FeatureCollection with Point geometries for each bus location.      Each feature includes properties:     - id: Kiosk ID     - name: Bus license plate     - status: Bus status     - last_update: Timestamp of last location update     - speed: Current speed (km/h)     - heading: Direction heading (degrees)     
    //
    //Future<BusLocationsResponse> busLocationsApi() async
    test('test busLocationsApi', () async {
      // TODO
    });

    //      Returns real-time bus locations for ALL buses in the fleet as GeoJSON.      Accessible by any authenticated user (school administrators, staff, etc.).      **Response Format:**     GeoJSON FeatureCollection with Point geometries for each bus location.      Each feature includes properties:     - id: Kiosk ID     - name: Bus license plate     - status: Bus status     - last_update: Timestamp of last location update     - speed: Current speed (km/h)     - heading: Direction heading (degrees)     
    //
    //Future<BusLocationsResponse> busLocationsApi2() async
    test('test busLocationsApi2', () async {
      // TODO
    });

    //      Returns historical bus locations for a specific bus on a specific date as GeoJSON.      Accessible by school administrators only.      **Response Format:**     GeoJSON FeatureCollection with Point geometries for each location record.      Each feature includes properties:     - id: Location record ID     - bus_number: Bus identifier     - bus_name: Bus license plate     - timestamp: When the location was recorded     - speed: Speed at that moment (km/h)     - heading: Direction heading (degrees)     - accuracy: GPS accuracy (meters)     
    //
    //Future<BusLocationHistoryResponse> busLocationsHistoryApi(String busUuid, Date date) async
    test('test busLocationsHistoryApi', () async {
      // TODO
    });

  });
}
