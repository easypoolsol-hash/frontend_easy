//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of frontend_easy_api;


class BusesApi {
  BusesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  ///      Returns real-time bus locations for ALL buses in the fleet as GeoJSON.      Accessible by any authenticated user (school administrators, staff, etc.).      **Response Format:**     GeoJSON FeatureCollection with Point geometries for each bus location.      Each feature includes properties:     - id: Kiosk ID     - name: Bus license plate     - status: Bus status     - last_update: Timestamp of last location update     - speed: Current speed (km/h)     - heading: Direction heading (degrees)     
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> busLocationsApiWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/locations/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  ///      Returns real-time bus locations for ALL buses in the fleet as GeoJSON.      Accessible by any authenticated user (school administrators, staff, etc.).      **Response Format:**     GeoJSON FeatureCollection with Point geometries for each bus location.      Each feature includes properties:     - id: Kiosk ID     - name: Bus license plate     - status: Bus status     - last_update: Timestamp of last location update     - speed: Current speed (km/h)     - heading: Direction heading (degrees)     
  Future<BusLocationsResponse?> busLocationsApi() async {
    final response = await busLocationsApiWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BusLocationsResponse',) as BusLocationsResponse;
    
    }
    return null;
  }

  ///      Returns real-time bus locations for ALL buses in the fleet as GeoJSON.      Accessible by any authenticated user (school administrators, staff, etc.).      **Response Format:**     GeoJSON FeatureCollection with Point geometries for each bus location.      Each feature includes properties:     - id: Kiosk ID     - name: Bus license plate     - status: Bus status     - last_update: Timestamp of last location update     - speed: Current speed (km/h)     - heading: Direction heading (degrees)     
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> busLocationsApi2WithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/school/api/bus-locations/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  ///      Returns real-time bus locations for ALL buses in the fleet as GeoJSON.      Accessible by any authenticated user (school administrators, staff, etc.).      **Response Format:**     GeoJSON FeatureCollection with Point geometries for each bus location.      Each feature includes properties:     - id: Kiosk ID     - name: Bus license plate     - status: Bus status     - last_update: Timestamp of last location update     - speed: Current speed (km/h)     - heading: Direction heading (degrees)     
  Future<BusLocationsResponse?> busLocationsApi2() async {
    final response = await busLocationsApi2WithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BusLocationsResponse',) as BusLocationsResponse;
    
    }
    return null;
  }

  ///      Returns historical bus locations for a specific bus on a specific date as GeoJSON.      Accessible by school administrators only.      **Query Parameters:**     - bus_id: Bus number (required, e.g., \"BUS-001\")     - date: Date in YYYY-MM-DD format (required, max 7 days in the past)      **Response Format:**     GeoJSON FeatureCollection with Point geometries for each location record.      Each feature includes properties:     - id: Location record ID     - bus_number: Bus identifier     - bus_name: Bus license plate     - timestamp: When the location was recorded     - speed: Speed at that moment (km/h)     - heading: Direction heading (degrees)     - accuracy: GPS accuracy (meters)     
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> busLocationsHistoryApiWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/locations/history/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  ///      Returns historical bus locations for a specific bus on a specific date as GeoJSON.      Accessible by school administrators only.      **Query Parameters:**     - bus_id: Bus number (required, e.g., \"BUS-001\")     - date: Date in YYYY-MM-DD format (required, max 7 days in the past)      **Response Format:**     GeoJSON FeatureCollection with Point geometries for each location record.      Each feature includes properties:     - id: Location record ID     - bus_number: Bus identifier     - bus_name: Bus license plate     - timestamp: When the location was recorded     - speed: Speed at that moment (km/h)     - heading: Direction heading (degrees)     - accuracy: GPS accuracy (meters)     
  Future<BusLocationHistoryResponse?> busLocationsHistoryApi() async {
    final response = await busLocationsHistoryApiWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BusLocationHistoryResponse',) as BusLocationHistoryResponse;
    
    }
    return null;
  }
}
