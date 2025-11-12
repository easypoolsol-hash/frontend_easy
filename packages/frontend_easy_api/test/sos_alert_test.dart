import 'package:test/test.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';

// tests for SOSAlert
void main() {
  final instance = SOSAlertBuilder();
  // TODO add properties to the builder and call build()

  group(SOSAlert, () {
    // Auto-incrementing alert ID
    // int alertId
    test('to test the property `alertId`', () async {
      // TODO
    });

    // String kioskId
    test('to test the property `kioskId`', () async {
      // TODO
    });

    // String busLicensePlate
    test('to test the property `busLicensePlate`', () async {
      // TODO
    });

    // String busNumber
    test('to test the property `busNumber`', () async {
      // TODO
    });

    // GPS latitude at time of alert
    // double latitude
    test('to test the property `latitude`', () async {
      // TODO
    });

    // GPS longitude at time of alert
    // double longitude
    test('to test the property `longitude`', () async {
      // TODO
    });

    // Current status of the alert  * `active` - Active * `acknowledged` - Acknowledged * `resolved` - Resolved * `false_alarm` - False Alarm
    // String status
    test('to test the property `status`', () async {
      // TODO
    });

    // Optional message/notes from the kiosk operator
    // String message
    test('to test the property `message`', () async {
      // TODO
    });

    // Additional data (battery level, network status, etc.)
    // JsonObject metadata
    test('to test the property `metadata`', () async {
      // TODO
    });

    // When the alert was created
    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // When the alert was first acknowledged by staff
    // DateTime acknowledgedAt
    test('to test the property `acknowledgedAt`', () async {
      // TODO
    });

    // When the alert was resolved
    // DateTime resolvedAt
    test('to test the property `resolvedAt`', () async {
      // TODO
    });

    // Name/ID of person who acknowledged the alert
    // String acknowledgedBy
    test('to test the property `acknowledgedBy`', () async {
      // TODO
    });

    // Name/ID of person who resolved the alert
    // String resolvedBy
    test('to test the property `resolvedBy`', () async {
      // TODO
    });

  });
}
