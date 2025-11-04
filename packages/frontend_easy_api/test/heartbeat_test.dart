import 'package:test/test.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';

// tests for Heartbeat
void main() {
  final instance = HeartbeatBuilder();
  // TODO add properties to the builder and call build()

  group(Heartbeat, () {
    // Heartbeat timestamp
    // DateTime timestamp
    test('to test the property `timestamp`', () async {
      // TODO
    });

    // Current database version on kiosk
    // String databaseVersion
    test('to test the property `databaseVersion`', () async {
      // TODO
    });

    // Database content hash
    // String databaseHash
    test('to test the property `databaseHash`', () async {
      // TODO
    });

    // Students in DB
    // int studentCount
    test('to test the property `studentCount`', () async {
      // TODO
    });

    // Embeddings in DB
    // int embeddingCount
    test('to test the property `embeddingCount`', () async {
      // TODO
    });

    // HealthData health
    test('to test the property `health`', () async {
      // TODO
    });

  });
}
