import 'package:test/test.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';

// tests for Parent
void main() {
  final instance = ParentBuilder();
  // TODO add properties to the builder and call build()

  group(Parent, () {
    // String parentId
    test('to test the property `parentId`', () async {
      // TODO
    });

    // String decryptedName
    test('to test the property `decryptedName`', () async {
      // TODO
    });

    // String decryptedPhone
    test('to test the property `decryptedPhone`', () async {
      // TODO
    });

    // String decryptedEmail
    test('to test the property `decryptedEmail`', () async {
      // TODO
    });

    // Encrypted name (plaintext validated max 100 chars)
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Encrypted phone number (plaintext validated as +91XXXXXXXXXX)
    // String phone
    test('to test the property `phone`', () async {
      // TODO
    });

    // Encrypted email address (plaintext validated per RFC 5321)
    // String email
    test('to test the property `email`', () async {
      // TODO
    });

    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

  });
}
