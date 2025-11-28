import 'package:test/test.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';

// tests for BusBasicRequest
void main() {
  final instance = BusBasicRequestBuilder();
  // TODO add properties to the builder and call build()

  group(BusBasicRequest, () {
    // Vehicle license plate number
    // String licensePlate
    test('to test the property `licensePlate`', () async {
      // TODO
    });

    // School-assigned bus number (e.g., 'BUS-001', 'B-12')
    // String busNumber
    test('to test the property `busNumber`', () async {
      // TODO
    });

    // Maximum number of passengers
    // int capacity
    test('to test the property `capacity`', () async {
      // TODO
    });

    // Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
    // String status
    test('to test the property `status`', () async {
      // TODO
    });

  });
}
