import 'package:test/test.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';

// tests for StudentActivity
void main() {
  final instance = StudentActivityBuilder();
  // TODO add properties to the builder and call build()

  group(StudentActivity, () {
    // School-provided student ID (e.g., STU-2024-001)
    // String schoolStudentId
    test('to test the property `schoolStudentId`', () async {
      // TODO
    });

    // Student name (decrypted by backend)
    // String studentName
    test('to test the property `studentName`', () async {
      // TODO
    });

    // Student grade
    // String grade
    test('to test the property `grade`', () async {
      // TODO
    });

    // Bus license plate
    // String busNumber
    test('to test the property `busNumber`', () async {
      // TODO
    });

    // Route name
    // String routeName
    test('to test the property `routeName`', () async {
      // TODO
    });

    // All boarding events for this student today
    // BuiltList<BoardingEventNested> events
    test('to test the property `events`', () async {
      // TODO
    });

    // Number of events today
    // int eventCount
    test('to test the property `eventCount`', () async {
      // TODO
    });

  });
}
