import 'package:test/test.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';

// tests for PatchedKioskRequest
void main() {
  final instance = PatchedKioskRequestBuilder();
  // TODO add properties to the builder and call build()

  group(PatchedKioskRequest, () {
    // Current firmware version installed on device
    // String firmwareVersion
    test('to test the property `firmwareVersion`', () async {
      // TODO
    });

    // Git commit SHA of current kiosk app build
    // String gitCommitSha
    test('to test the property `gitCommitSha`', () async {
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

  });
}
