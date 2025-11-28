import 'package:test/test.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';

// tests for FaceEnrollmentStatus
void main() {
  final instance = FaceEnrollmentStatusBuilder();
  // TODO add properties to the builder and call build()

  group(FaceEnrollmentStatus, () {
    // String enrollmentId
    test('to test the property `enrollmentId`', () async {
      // TODO
    });

    // Approval status  * `pending_approval` - Pending Approval * `approved` - Approved * `rejected` - Rejected
    // String status
    test('to test the property `status`', () async {
      // TODO
    });

    // Number of photos in this enrollment
    // int photoCount
    test('to test the property `photoCount`', () async {
      // TODO
    });

    // When parent submitted enrollment
    // DateTime submittedAt
    test('to test the property `submittedAt`', () async {
      // TODO
    });

    // When enrollment was reviewed
    // DateTime reviewedAt
    test('to test the property `reviewedAt`', () async {
      // TODO
    });

  });
}
