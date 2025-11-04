import 'package:test/test.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';

// tests for PatchedBus
void main() {
  final instance = PatchedBusBuilder();
  // TODO add properties to the builder and call build()

  group(PatchedBus, () {
    // UUID primary key
    // String busId
    test('to test the property `busId`', () async {
      // TODO
    });

    // School-assigned bus number (e.g., 'BUS-001', 'B-12')
    // String busNumber
    test('to test the property `busNumber`', () async {
      // TODO
    });

    // Vehicle license plate number
    // String licensePlate
    test('to test the property `licensePlate`', () async {
      // TODO
    });

    // Route this bus is assigned to
    // String route
    test('to test the property `route`', () async {
      // TODO
    });

    // String routeName
    test('to test the property `routeName`', () async {
      // TODO
    });

    // Maximum number of passengers
    // int capacity
    test('to test the property `capacity`', () async {
      // TODO
    });

    // Kiosk device identifier installed on this bus
    // String deviceId
    test('to test the property `deviceId`', () async {
      // TODO
    });

    // Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
    // String status
    test('to test the property `status`', () async {
      // TODO
    });

    // Bus manufacturer
    // String manufacturer
    test('to test the property `manufacturer`', () async {
      // TODO
    });

    // Bus model
    // String model
    test('to test the property `model`', () async {
      // TODO
    });

    // Manufacturing year
    // int year
    test('to test the property `year`', () async {
      // TODO
    });

    // Date of last maintenance
    // Date lastMaintenance
    test('to test the property `lastMaintenance`', () async {
      // TODO
    });

    // int assignedStudentsCount
    test('to test the property `assignedStudentsCount`', () async {
      // TODO
    });

    // double utilizationPercentage
    test('to test the property `utilizationPercentage`', () async {
      // TODO
    });

    // bool isAvailable
    test('to test the property `isAvailable`', () async {
      // TODO
    });

    // When this bus was added to the system
    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // When this bus record was last updated
    // DateTime updatedAt
    test('to test the property `updatedAt`', () async {
      // TODO
    });

  });
}
