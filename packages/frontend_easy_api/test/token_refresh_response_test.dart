import 'package:test/test.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';

// tests for TokenRefreshResponse
void main() {
  final instance = TokenRefreshResponseBuilder();
  // TODO add properties to the builder and call build()

  group(TokenRefreshResponse, () {
    // New access token (valid for 15 minutes)
    // String access
    test('to test the property `access`', () async {
      // TODO
    });

    // New refresh token (valid for 60 days). Old refresh token is now blacklisted.
    // String refresh
    test('to test the property `refresh`', () async {
      // TODO
    });

  });
}
