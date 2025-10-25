import 'package:test/test.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';


/// tests for ParentsApi
void main() {
  final instance = FrontendEasyApi().getParentsApi();

  group(ParentsApi, () {
    //      **Fortune 500 IAM-style Parent Bus Locations**      Returns bus locations ONLY for buses assigned to the parent's children.      **Authorization:**     - Requires authentication (JWT token)     - Requires role: parent     - Filters results by parent-child-bus assignments     - Zero-trust: Parents can ONLY see their own children's buses      **Response:**     GeoJSON FeatureCollection with bus location points     
    //
    //Future<ParentBusLocationsResponse> parentBusLocations() async
    test('test parentBusLocations', () async {
      // TODO
    });

  });
}
