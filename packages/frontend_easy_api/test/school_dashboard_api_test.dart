import 'package:test/test.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';


/// tests for SchoolDashboardApi
void main() {
  final instance = FrontendEasyApi().getSchoolDashboardApi();

  group(SchoolDashboardApi, () {
    //      **Fortune 500 IAM-style School Bus Locations (Admin Only)**      Returns real-time bus locations for ALL buses in the fleet.      **Authorization:**     - Requires authentication (JWT token)     - Requires role: school_admin OR super_admin     - Returns ALL bus locations (full visibility for admins)      **For Parents:**     Parents should use `/api/v1/users/parent/my-buses/` instead (filtered by child assignment)      **Response:**     GeoJSON FeatureCollection with bus location points including:     - Real-time GPS coordinates     - Bus status, speed, heading     - Last update timestamp     
    //
    //Future<BusLocationsGeoJSONResponse> schoolBusLocationsList() async
    test('test schoolBusLocationsList', () async {
      // TODO
    });

  });
}
