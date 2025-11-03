//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class KioskActivationApi {
  KioskActivationApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  ///      **Fortune 500 Standard: One-time Device Activation**      Used by: Google Nest, Amazon Alexa, Netflix devices      Activates a kiosk using a disposable activation token.     After activation, the token becomes garbage and cannot be reused.      **Security Features:**     - One-time use activation tokens (WhatsApp leak protection)     - Tokens destroyed after first use     - 60-day rotating refresh tokens     - 15-minute access tokens      **Example Request:**     ```json     {         \"kiosk_id\": \"KIOSK-SCHOOL-001\",         \"activation_token\": \"8Jz4Y-x9K2mQ_r5WvLp3NcTg7HfB6DsA1eU0oI9j8Xw\"     }     ```     
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [KioskActivation] kioskActivation (required):
  Future<Response> kioskActivateWithHttpInfo(KioskActivation kioskActivation,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/kiosks/activate/';

    // ignore: prefer_final_locals
    Object? postBody = kioskActivation;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  ///      **Fortune 500 Standard: One-time Device Activation**      Used by: Google Nest, Amazon Alexa, Netflix devices      Activates a kiosk using a disposable activation token.     After activation, the token becomes garbage and cannot be reused.      **Security Features:**     - One-time use activation tokens (WhatsApp leak protection)     - Tokens destroyed after first use     - 60-day rotating refresh tokens     - 15-minute access tokens      **Example Request:**     ```json     {         \"kiosk_id\": \"KIOSK-SCHOOL-001\",         \"activation_token\": \"8Jz4Y-x9K2mQ_r5WvLp3NcTg7HfB6DsA1eU0oI9j8Xw\"     }     ```     
  ///
  /// Parameters:
  ///
  /// * [KioskActivation] kioskActivation (required):
  Future<KioskActivationResponse?> kioskActivate(KioskActivation kioskActivation,) async {
    final response = await kioskActivateWithHttpInfo(kioskActivation,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'KioskActivationResponse',) as KioskActivationResponse;
    
    }
    return null;
  }
}
