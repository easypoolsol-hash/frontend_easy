import 'package:test/test.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';

// tests for BoardingEventNested
void main() {
  final instance = BoardingEventNestedBuilder();
  // TODO add properties to the builder and call build()

  group(BoardingEventNested, () {
    // Event ULID
    // String eventId
    test('to test the property `eventId`', () async {
      // TODO
    });

    // When event occurred
    // DateTime timestamp
    test('to test the property `timestamp`', () async {
      // TODO
    });

    // Kiosk device ID
    // String kioskId
    test('to test the property `kioskId`', () async {
      // TODO
    });

    // Event type (boarding/pickup/dropoff)
    // String eventType
    test('to test the property `eventType`', () async {
      // TODO
    });

    // List of signed URLs for confirmation faces (flexible - 1 to N photos)
    // BuiltList<String> confirmationFaceUrls
    test('to test the property `confirmationFaceUrls`', () async {
      // TODO
    });

  });
}
