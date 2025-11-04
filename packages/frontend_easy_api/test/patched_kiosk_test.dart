import 'package:test/test.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';

// tests for PatchedKiosk
void main() {
  final instance = PatchedKioskBuilder();
  // TODO add properties to the builder and call build()

  group(PatchedKiosk, () {
    // Unique kiosk device identifier (e.g., KIOSK001, BUS123-KIOSK)
    // String kioskId
    test('to test the property `kioskId`', () async {
      // TODO
    });

    // String bus
    test('to test the property `bus`', () async {
      // TODO
    });

    // String busLicensePlate
    test('to test the property `busLicensePlate`', () async {
      // TODO
    });

    // Current firmware version installed on device
    // String firmwareVersion
    test('to test the property `firmwareVersion`', () async {
      // TODO
    });

    // Timestamp of last heartbeat received from device
    // DateTime lastHeartbeat
    test('to test the property `lastHeartbeat`', () async {
      // TODO
    });

    // Whether this kiosk is active and accepting requests
    // bool isActive
    test('to test the property `isActive`', () async {
      // TODO
    });

    // double batteryLevel
    test('to test the property `batteryLevel`', () async {
      // TODO
    });

    // Storage used in MB on the device
    // int storageUsedMb
    test('to test the property `storageUsedMb`', () async {
      // TODO
    });

    // String statusDisplay
    test('to test the property `statusDisplay`', () async {
      // TODO
    });

    // String isOnline
    test('to test the property `isOnline`', () async {
      // TODO
    });

    // When this kiosk was registered
    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // When this kiosk record was last updated
    // DateTime updatedAt
    test('to test the property `updatedAt`', () async {
      // TODO
    });

  });
}
