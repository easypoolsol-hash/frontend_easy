//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:frontend_easy_api/src/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:frontend_easy_api/src/model/parent_bus_locations_response.dart';

class ParentsApi {

  final Dio _dio;

  const ParentsApi(this._dio);

  /// parentBusLocations
  ///      **Fortune 500 IAM-style Parent Bus Locations**      Returns bus locations ONLY for buses assigned to the parent&#39;s children.      **Authorization:**     - Requires authentication (JWT token)     - Requires role: parent     - Filters results by parent-child-bus assignments     - Zero-trust: Parents can ONLY see their own children&#39;s buses      **Response:**     GeoJSON FeatureCollection with bus location points     
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ParentBusLocationsResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ParentBusLocationsResponse>> parentBusLocations({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/parent/my-buses/';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'cookieAuth',
            'keyName': 'sessionid',
            'where': '',
          },{
            'type': 'http',
            'scheme': 'bearer',
            'name': 'jwtAuth',
          },{
            'type': 'http',
            'scheme': 'bearer',
            'name': 'KioskJWTAuth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ParentBusLocationsResponse? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ParentBusLocationsResponse, ParentBusLocationsResponse>(rawData, 'ParentBusLocationsResponse', growable: true);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ParentBusLocationsResponse>(
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
