//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ParentsApi {
  ParentsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  ///      **Fortune 500 IAM-style Parent Bus Locations**      Returns bus locations ONLY for buses assigned to the parent's children.      **Authorization:**     - Requires authentication (JWT token)     - Requires role: parent     - Filters results by parent-child-bus assignments     - Zero-trust: Parents can ONLY see their own children's buses      **Response:**     GeoJSON FeatureCollection with bus location points     
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> parentBusLocationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/parent/my-buses/';

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

  ///      **Fortune 500 IAM-style Parent Bus Locations**      Returns bus locations ONLY for buses assigned to the parent's children.      **Authorization:**     - Requires authentication (JWT token)     - Requires role: parent     - Filters results by parent-child-bus assignments     - Zero-trust: Parents can ONLY see their own children's buses      **Response:**     GeoJSON FeatureCollection with bus location points     
  Future<ParentBusLocationsResponse?> parentBusLocations() async {
    final response = await parentBusLocationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ParentBusLocationsResponse',) as ParentBusLocationsResponse;
    
    }
    return null;
  }
}
