import 'package:test/test.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';

// tests for RouteStopRequest
void main() {
  final instance = RouteStopRequestBuilder();
  // TODO add properties to the builder and call build()

  group(RouteStopRequest, () {
    // Bus stop on this route
    // String busStop
    test('to test the property `busStop`', () async {
      // TODO
    });

    // Order of this stop in the route (1-based)
    // int sequence
    test('to test the property `sequence`', () async {
      // TODO
    });

    // Path coordinates to NEXT stop: [{lat, lon}, ...]
    // JsonObject waypoints
    test('to test the property `waypoints`', () async {
      // TODO
    });

  });
}
