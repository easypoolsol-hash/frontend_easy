import 'package:test/test.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';

// tests for BoardingEventCreateRequest
void main() {
  final instance = BoardingEventCreateRequestBuilder();
  // TODO add properties to the builder and call build()

  group(BoardingEventCreateRequest, () {
    // Student who boarded the bus (null for unidentified faces)
    // String student
    test('to test the property `student`', () async {
      // TODO
    });

    // Kiosk device identifier
    // String kioskId
    test('to test the property `kioskId`', () async {
      // TODO
    });

    // Face recognition confidence score (0.0-1.0)
    // double confidenceScore
    test('to test the property `confidenceScore`', () async {
      // TODO
    });

    // When the boarding event occurred
    // DateTime timestamp
    test('to test the property `timestamp`', () async {
      // TODO
    });

    // GPS coordinates as [latitude, longitude]. Optional - boarding events can be created without location.
    // BuiltList<double> gpsCoords
    test('to test the property `gpsCoords`', () async {
      // TODO
    });

    // Bus route identifier
    // String busRoute
    test('to test the property `busRoute`', () async {
      // TODO
    });

    // S3 URL to face image for verification (optional)
    // String faceImageUrl
    test('to test the property `faceImageUrl`', () async {
      // TODO
    });

    // Face recognition model version used
    // String modelVersion
    test('to test the property `modelVersion`', () async {
      // TODO
    });

    // Additional metadata as JSON
    // JsonObject metadata
    test('to test the property `metadata`', () async {
      // TODO
    });

    // Array of base64-encoded confirmation faces (112x112 JPEG). Send up to 3 consecutive frames.
    // BuiltList<String> confirmationFacesBase64
    test('to test the property `confirmationFacesBase64`', () async {
      // TODO
    });

  });
}
