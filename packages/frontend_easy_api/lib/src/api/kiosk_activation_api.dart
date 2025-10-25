//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_value/json_object.dart';
import 'package:frontend_easy_api/src/model/kiosk_activation.dart';
import 'package:frontend_easy_api/src/model/kiosk_activation_response.dart';

class KioskActivationApi {

  final Dio _dio;

  final Serializers _serializers;

  const KioskActivationApi(this._dio, this._serializers);

  /// kioskActivate
  ///      **Fortune 500 Standard: One-time Device Activation**      Used by: Google Nest, Amazon Alexa, Netflix devices      Activates a kiosk using a disposable activation token.     After activation, the token becomes garbage and cannot be reused.      **Security Features:**     - One-time use activation tokens (WhatsApp leak protection)     - Tokens destroyed after first use     - 60-day rotating refresh tokens     - 15-minute access tokens      **Example Request:**     &#x60;&#x60;&#x60;json     {         \&quot;kiosk_id\&quot;: \&quot;KIOSK-SCHOOL-001\&quot;,         \&quot;activation_token\&quot;: \&quot;8Jz4Y-x9K2mQ_r5WvLp3NcTg7HfB6DsA1eU0oI9j8Xw\&quot;     }     &#x60;&#x60;&#x60;     
  ///
  /// Parameters:
  /// * [kioskActivation] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [KioskActivationResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<KioskActivationResponse>> kioskActivate({ 
    required KioskActivation kioskActivation,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/kiosks/activate/';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(KioskActivation);
      _bodyData = _serializers.serialize(kioskActivation, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    KioskActivationResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(KioskActivationResponse),
      ) as KioskActivationResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<KioskActivationResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
