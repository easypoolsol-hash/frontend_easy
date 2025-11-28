import 'package:test/test.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';

// tests for RouteRequest
void main() {
  final instance = RouteRequestBuilder();
  // TODO add properties to the builder and call build()

  group(RouteRequest, () {
    // Route name (e.g., 'Route A', 'North Loop')
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Detailed description of the route
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // Hex color for map display (e.g., #FF5733)
    // String colorCode
    test('to test the property `colorCode`', () async {
      // TODO
    });

    // Line pattern for map visualization  * `solid` - Solid Line * `dashed` - Dashed Line
    // String linePattern
    test('to test the property `linePattern`', () async {
      // TODO
    });

    // Whether this route is currently active
    // bool isActive
    test('to test the property `isActive`', () async {
      // TODO
    });

  });
}
