//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:frontend_easy_api/src/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:frontend_easy_api/src/model/bus_locations_geo_json_response.dart';

class SchoolDashboardApi {

  final Dio _dio;

  const SchoolDashboardApi(this._dio);

  /// schoolBusLocationsList
  ///      **Fortune 500 IAM-style School Bus Locations (Admin Only)**      Returns real-time bus locations for ALL buses in the fleet.      **Authorization:**     - Requires authentication (JWT token)     - Requires role: school_admin OR super_admin     - Returns ALL bus locations (full visibility for admins)      **For Parents:**     Parents should use &#x60;/api/v1/users/parent/my-buses/&#x60; instead (filtered by child assignment)      **Response:**     GeoJSON FeatureCollection with bus location points including:     - Real-time GPS coordinates     - Bus status, speed, heading     - Last update timestamp     
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BusLocationsGeoJSONResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BusLocationsGeoJSONResponse>> schoolBusLocationsList({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/school/api/bus-locations/';
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

    BusLocationsGeoJSONResponse? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<BusLocationsGeoJSONResponse, BusLocationsGeoJSONResponse>(rawData, 'BusLocationsGeoJSONResponse', growable: true);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BusLocationsGeoJSONResponse>(
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
