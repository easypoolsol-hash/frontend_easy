import 'package:test/test.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';


/// tests for KioskActivationApi
void main() {
  final instance = FrontendEasyApi().getKioskActivationApi();

  group(KioskActivationApi, () {
    //      **Fortune 500 Standard: One-time Device Activation**      Used by: Google Nest, Amazon Alexa, Netflix devices      Activates a kiosk using a disposable activation token.     After activation, the token becomes garbage and cannot be reused.      **Security Features:**     - One-time use activation tokens (WhatsApp leak protection)     - Tokens destroyed after first use     - 60-day rotating refresh tokens     - 15-minute access tokens      **Example Request:**     ```json     {         \"kiosk_id\": \"KIOSK-SCHOOL-001\",         \"activation_token\": \"8Jz4Y-x9K2mQ_r5WvLp3NcTg7HfB6DsA1eU0oI9j8Xw\"     }     ```
    //
    //Future<KioskActivationResponse> kioskActivate(KioskActivation kioskActivation) async
    test('test kioskActivate', () async {
      // TODO
    });

  });
}
