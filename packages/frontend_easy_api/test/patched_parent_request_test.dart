import 'package:test/test.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';

// tests for PatchedParentRequest
void main() {
  final instance = PatchedParentRequestBuilder();
  // TODO add properties to the builder and call build()

  group(PatchedParentRequest, () {
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

  });
}
