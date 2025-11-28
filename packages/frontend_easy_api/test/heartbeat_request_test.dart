import 'package:test/test.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';

// tests for HeartbeatRequest
void main() {
  final instance = HeartbeatRequestBuilder();
  // TODO add properties to the builder and call build()

  group(HeartbeatRequest, () {
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

    // Git commit SHA of the kiosk app build (40 chars). Null for dev builds.
    // String gitCommitSha
    test('to test the property `gitCommitSha`', () async {
      // TODO
    });

    // HealthDataRequest health
    test('to test the property `health`', () async {
      // TODO
    });

  });
}
