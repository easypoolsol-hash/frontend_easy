import 'package:test/test.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';

// tests for DeviceLogRequest
void main() {
  final instance = DeviceLogRequestBuilder();
  // TODO add properties to the builder and call build()

  group(DeviceLogRequest, () {
    // Kiosk that generated this log entry
    // String kiosk
    test('to test the property `kiosk`', () async {
      // TODO
    });

    // Log level severity  * `DEBUG` - Debug * `INFO` - Info * `WARN` - Warning * `ERROR` - Error * `CRITICAL` - Critical
    // String logLevel
    test('to test the property `logLevel`', () async {
      // TODO
    });

    // Log message content
    // String message
    test('to test the property `message`', () async {
      // TODO
    });

    // Additional structured data as JSON
    // JsonObject metadata
    test('to test the property `metadata`', () async {
      // TODO
    });

  });
}
