import 'package:test/test.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';

// tests for AuditLog
void main() {
  final instance = AuditLogBuilder();
  // TODO add properties to the builder and call build()

  group(AuditLog, () {
    // int logId
    test('to test the property `logId`', () async {
      // TODO
    });

    // String user
    test('to test the property `user`', () async {
      // TODO
    });

    // String userUsername
    test('to test the property `userUsername`', () async {
      // TODO
    });

    // String userEmail
    test('to test the property `userEmail`', () async {
      // TODO
    });

    // * `CREATE` - Create * `UPDATE` - Update * `DELETE` - Delete * `LOGIN` - Login * `LOGIN_FAILED` - Login Failed * `LOGOUT` - Logout * `API_ACCESS` - API Access
    // String action
    test('to test the property `action`', () async {
      // TODO
    });

    // * `user` - User * `student` - Student * `bus` - Bus * `kiosk` - Kiosk * `event` - Boarding Event * `notification` - Notification
    // String resourceType
    test('to test the property `resourceType`', () async {
      // TODO
    });

    // String resourceId
    test('to test the property `resourceId`', () async {
      // TODO
    });

    // JSON object of changes made
    // JsonObject changes
    test('to test the property `changes`', () async {
      // TODO
    });

    // String ipAddress
    test('to test the property `ipAddress`', () async {
      // TODO
    });

    // String userAgent
    test('to test the property `userAgent`', () async {
      // TODO
    });

    // DateTime timestamp
    test('to test the property `timestamp`', () async {
      // TODO
    });

  });
}
