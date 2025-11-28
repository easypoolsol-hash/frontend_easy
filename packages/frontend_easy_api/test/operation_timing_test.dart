import 'package:test/test.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';

// tests for OperationTiming
void main() {
  final instance = OperationTimingBuilder();
  // TODO add properties to the builder and call build()

  group(OperationTiming, () {
    // Schedule name (e.g., 'Morning Shift', 'Full Day')
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Optional description of this schedule
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // Whether this schedule is available for selection
    // bool isActive
    test('to test the property `isActive`', () async {
      // TODO
    });

    // BuiltList<OperationSlot> slots
    test('to test the property `slots`', () async {
      // TODO
    });

  });
}
