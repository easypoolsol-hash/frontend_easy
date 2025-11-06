//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ApiApi {
  ApiApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /api/v1/api-keys/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [APIKeyCreate] aPIKeyCreate (required):
  Future<Response> apiV1ApiKeysCreateWithHttpInfo(APIKeyCreate aPIKeyCreate,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/api-keys/';

    // ignore: prefer_final_locals
    Object? postBody = aPIKeyCreate;

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

  /// Parameters:
  ///
  /// * [APIKeyCreate] aPIKeyCreate (required):
  Future<APIKeyCreate?> apiV1ApiKeysCreate(APIKeyCreate aPIKeyCreate,) async {
    final response = await apiV1ApiKeysCreateWithHttpInfo(aPIKeyCreate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'APIKeyCreate',) as APIKeyCreate;
    
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /api/v1/api-keys/{key_id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] keyId (required):
  ///   A UUID string identifying this api key.
  Future<Response> apiV1ApiKeysDestroyWithHttpInfo(String keyId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/api-keys/{key_id}/'
      .replaceAll('{key_id}', keyId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] keyId (required):
  ///   A UUID string identifying this api key.
  Future<void> apiV1ApiKeysDestroy(String keyId,) async {
    final response = await apiV1ApiKeysDestroyWithHttpInfo(keyId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/v1/api-keys/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [int] page:
  ///   A page number within the paginated result set.
  ///
  /// * [String] search:
  ///   A search term.
  Future<Response> apiV1ApiKeysListWithHttpInfo({ String? ordering, int? page, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/api-keys/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (ordering != null) {
      queryParams.addAll(_queryParams('', 'ordering', ordering));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }

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

  /// Parameters:
  ///
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [int] page:
  ///   A page number within the paginated result set.
  ///
  /// * [String] search:
  ///   A search term.
  Future<PaginatedAPIKeyList?> apiV1ApiKeysList({ String? ordering, int? page, String? search, }) async {
    final response = await apiV1ApiKeysListWithHttpInfo( ordering: ordering, page: page, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedAPIKeyList',) as PaginatedAPIKeyList;
    
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /api/v1/api-keys/{key_id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] keyId (required):
  ///   A UUID string identifying this api key.
  ///
  /// * [PatchedAPIKey] patchedAPIKey:
  Future<Response> apiV1ApiKeysPartialUpdateWithHttpInfo(String keyId, { PatchedAPIKey? patchedAPIKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/api-keys/{key_id}/'
      .replaceAll('{key_id}', keyId);

    // ignore: prefer_final_locals
    Object? postBody = patchedAPIKey;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] keyId (required):
  ///   A UUID string identifying this api key.
  ///
  /// * [PatchedAPIKey] patchedAPIKey:
  Future<APIKey?> apiV1ApiKeysPartialUpdate(String keyId, { PatchedAPIKey? patchedAPIKey, }) async {
    final response = await apiV1ApiKeysPartialUpdateWithHttpInfo(keyId,  patchedAPIKey: patchedAPIKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'APIKey',) as APIKey;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/v1/api-keys/{key_id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] keyId (required):
  ///   A UUID string identifying this api key.
  Future<Response> apiV1ApiKeysRetrieveWithHttpInfo(String keyId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/api-keys/{key_id}/'
      .replaceAll('{key_id}', keyId);

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

  /// Parameters:
  ///
  /// * [String] keyId (required):
  ///   A UUID string identifying this api key.
  Future<APIKey?> apiV1ApiKeysRetrieve(String keyId,) async {
    final response = await apiV1ApiKeysRetrieveWithHttpInfo(keyId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'APIKey',) as APIKey;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /api/v1/api-keys/{key_id}/revoke/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] keyId (required):
  ///   A UUID string identifying this api key.
  ///
  /// * [APIKey] aPIKey (required):
  Future<Response> apiV1ApiKeysRevokeCreateWithHttpInfo(String keyId, APIKey aPIKey,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/api-keys/{key_id}/revoke/'
      .replaceAll('{key_id}', keyId);

    // ignore: prefer_final_locals
    Object? postBody = aPIKey;

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

  /// Parameters:
  ///
  /// * [String] keyId (required):
  ///   A UUID string identifying this api key.
  ///
  /// * [APIKey] aPIKey (required):
  Future<APIKey?> apiV1ApiKeysRevokeCreate(String keyId, APIKey aPIKey,) async {
    final response = await apiV1ApiKeysRevokeCreateWithHttpInfo(keyId, aPIKey,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'APIKey',) as APIKey;
    
    }
    return null;
  }

  /// Performs an HTTP 'PUT /api/v1/api-keys/{key_id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] keyId (required):
  ///   A UUID string identifying this api key.
  ///
  /// * [APIKey] aPIKey (required):
  Future<Response> apiV1ApiKeysUpdateWithHttpInfo(String keyId, APIKey aPIKey,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/api-keys/{key_id}/'
      .replaceAll('{key_id}', keyId);

    // ignore: prefer_final_locals
    Object? postBody = aPIKey;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] keyId (required):
  ///   A UUID string identifying this api key.
  ///
  /// * [APIKey] aPIKey (required):
  Future<APIKey?> apiV1ApiKeysUpdate(String keyId, APIKey aPIKey,) async {
    final response = await apiV1ApiKeysUpdateWithHttpInfo(keyId, aPIKey,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'APIKey',) as APIKey;
    
    }
    return null;
  }

  /// Read-only ViewSet for attendance records  PERMISSION: IsSchoolAdmin (school administrators only)  NOTE: Old permission was IsAuthenticated (too permissive!) Now using AWS-style deny-by-default with explicit permissions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] date:
  ///
  /// * [int] page:
  ///   A page number within the paginated result set.
  ///
  /// * [String] status:
  ///   Overall attendance status  * `present` - Present * `absent` - Absent * `partial` - Partial
  ///
  /// * [String] student:
  Future<Response> apiV1AttendanceListWithHttpInfo({ DateTime? date, int? page, String? status, String? student, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/attendance/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (date != null) {
      queryParams.addAll(_queryParams('', 'date', date));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (student != null) {
      queryParams.addAll(_queryParams('', 'student', student));
    }

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

  /// Read-only ViewSet for attendance records  PERMISSION: IsSchoolAdmin (school administrators only)  NOTE: Old permission was IsAuthenticated (too permissive!) Now using AWS-style deny-by-default with explicit permissions.
  ///
  /// Parameters:
  ///
  /// * [DateTime] date:
  ///
  /// * [int] page:
  ///   A page number within the paginated result set.
  ///
  /// * [String] status:
  ///   Overall attendance status  * `present` - Present * `absent` - Absent * `partial` - Partial
  ///
  /// * [String] student:
  Future<PaginatedAttendanceRecordList?> apiV1AttendanceList({ DateTime? date, int? page, String? status, String? student, }) async {
    final response = await apiV1AttendanceListWithHttpInfo( date: date, page: page, status: status, student: student, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedAttendanceRecordList',) as PaginatedAttendanceRecordList;
    
    }
    return null;
  }

  /// Read-only ViewSet for attendance records  PERMISSION: IsSchoolAdmin (school administrators only)  NOTE: Old permission was IsAuthenticated (too permissive!) Now using AWS-style deny-by-default with explicit permissions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] recordId (required):
  Future<Response> apiV1AttendanceRetrieveWithHttpInfo(String recordId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/attendance/{record_id}/'
      .replaceAll('{record_id}', recordId);

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

  /// Read-only ViewSet for attendance records  PERMISSION: IsSchoolAdmin (school administrators only)  NOTE: Old permission was IsAuthenticated (too permissive!) Now using AWS-style deny-by-default with explicit permissions.
  ///
  /// Parameters:
  ///
  /// * [String] recordId (required):
  Future<AttendanceRecord?> apiV1AttendanceRetrieve(String recordId,) async {
    final response = await apiV1AttendanceRetrieveWithHttpInfo(recordId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AttendanceRecord',) as AttendanceRecord;
    
    }
    return null;
  }

  /// Get attendance history for a specific student
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] studentId (required):
  Future<Response> apiV1AttendanceStudentRetrieveWithHttpInfo(String studentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/attendance/student/{student_id}/'
      .replaceAll('{student_id}', studentId);

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

  /// Get attendance history for a specific student
  ///
  /// Parameters:
  ///
  /// * [String] studentId (required):
  Future<AttendanceRecord?> apiV1AttendanceStudentRetrieve(String studentId,) async {
    final response = await apiV1AttendanceStudentRetrieveWithHttpInfo(studentId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AttendanceRecord',) as AttendanceRecord;
    
    }
    return null;
  }

  /// Get attendance summary for date range
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> apiV1AttendanceSummaryRetrieveWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/attendance/summary/';

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

  /// Get attendance summary for date range
  Future<AttendanceRecord?> apiV1AttendanceSummaryRetrieve() async {
    final response = await apiV1AttendanceSummaryRetrieveWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AttendanceRecord',) as AttendanceRecord;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/v1/audit-logs/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [int] page:
  ///   A page number within the paginated result set.
  ///
  /// * [String] search:
  ///   A search term.
  Future<Response> apiV1AuditLogsListWithHttpInfo({ String? ordering, int? page, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/audit-logs/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (ordering != null) {
      queryParams.addAll(_queryParams('', 'ordering', ordering));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }

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

  /// Parameters:
  ///
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [int] page:
  ///   A page number within the paginated result set.
  ///
  /// * [String] search:
  ///   A search term.
  Future<PaginatedAuditLogList?> apiV1AuditLogsList({ String? ordering, int? page, String? search, }) async {
    final response = await apiV1AuditLogsListWithHttpInfo( ordering: ordering, page: page, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedAuditLogList',) as PaginatedAuditLogList;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/v1/audit-logs/{log_id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] logId (required):
  ///   A unique integer value identifying this audit log.
  Future<Response> apiV1AuditLogsRetrieveWithHttpInfo(int logId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/audit-logs/{log_id}/'
      .replaceAll('{log_id}', logId.toString());

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

  /// Parameters:
  ///
  /// * [int] logId (required):
  ///   A unique integer value identifying this audit log.
  Future<AuditLog?> apiV1AuditLogsRetrieve(int logId,) async {
    final response = await apiV1AuditLogsRetrieveWithHttpInfo(logId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuditLog',) as AuditLog;
    
    }
    return null;
  }

  /// Bulk create boarding events (for high-throughput kiosk operations)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BoardingEvent] boardingEvent (required):
  Future<Response> apiV1BoardingEventsBulkCreateWithHttpInfo(BoardingEvent boardingEvent,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/boarding-events/bulk/';

    // ignore: prefer_final_locals
    Object? postBody = boardingEvent;

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

  /// Bulk create boarding events (for high-throughput kiosk operations)
  ///
  /// Parameters:
  ///
  /// * [BoardingEvent] boardingEvent (required):
  Future<BoardingEvent?> apiV1BoardingEventsBulkCreate(BoardingEvent boardingEvent,) async {
    final response = await apiV1BoardingEventsBulkCreateWithHttpInfo(boardingEvent,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BoardingEvent',) as BoardingEvent;
    
    }
    return null;
  }

  /// ViewSet for boarding events  PERMISSIONS: - CREATE/BULK: IsKiosk (kiosk devices only) - LIST/RETRIEVE/UPDATE/DELETE: IsSchoolAdmin (school admins only) - RECENT: IsSchoolAdmin (school admins only)  NOTE: Old permission was IsAuthenticated (too permissive!) Now using AWS-style deny-by-default with explicit permissions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BoardingEventCreate] boardingEventCreate (required):
  Future<Response> apiV1BoardingEventsCreateWithHttpInfo(BoardingEventCreate boardingEventCreate,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/boarding-events/';

    // ignore: prefer_final_locals
    Object? postBody = boardingEventCreate;

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

  /// ViewSet for boarding events  PERMISSIONS: - CREATE/BULK: IsKiosk (kiosk devices only) - LIST/RETRIEVE/UPDATE/DELETE: IsSchoolAdmin (school admins only) - RECENT: IsSchoolAdmin (school admins only)  NOTE: Old permission was IsAuthenticated (too permissive!) Now using AWS-style deny-by-default with explicit permissions.
  ///
  /// Parameters:
  ///
  /// * [BoardingEventCreate] boardingEventCreate (required):
  Future<BoardingEventCreate?> apiV1BoardingEventsCreate(BoardingEventCreate boardingEventCreate,) async {
    final response = await apiV1BoardingEventsCreateWithHttpInfo(boardingEventCreate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BoardingEventCreate',) as BoardingEventCreate;
    
    }
    return null;
  }

  /// ViewSet for boarding events  PERMISSIONS: - CREATE/BULK: IsKiosk (kiosk devices only) - LIST/RETRIEVE/UPDATE/DELETE: IsSchoolAdmin (school admins only) - RECENT: IsSchoolAdmin (school admins only)  NOTE: Old permission was IsAuthenticated (too permissive!) Now using AWS-style deny-by-default with explicit permissions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] eventId (required):
  Future<Response> apiV1BoardingEventsDestroyWithHttpInfo(String eventId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/boarding-events/{event_id}/'
      .replaceAll('{event_id}', eventId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// ViewSet for boarding events  PERMISSIONS: - CREATE/BULK: IsKiosk (kiosk devices only) - LIST/RETRIEVE/UPDATE/DELETE: IsSchoolAdmin (school admins only) - RECENT: IsSchoolAdmin (school admins only)  NOTE: Old permission was IsAuthenticated (too permissive!) Now using AWS-style deny-by-default with explicit permissions.
  ///
  /// Parameters:
  ///
  /// * [String] eventId (required):
  Future<void> apiV1BoardingEventsDestroy(String eventId,) async {
    final response = await apiV1BoardingEventsDestroyWithHttpInfo(eventId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// ViewSet for boarding events  PERMISSIONS: - CREATE/BULK: IsKiosk (kiosk devices only) - LIST/RETRIEVE/UPDATE/DELETE: IsSchoolAdmin (school admins only) - RECENT: IsSchoolAdmin (school admins only)  NOTE: Old permission was IsAuthenticated (too permissive!) Now using AWS-style deny-by-default with explicit permissions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] busRoute:
  ///
  /// * [String] kioskId:
  ///
  /// * [int] page:
  ///   A page number within the paginated result set.
  ///
  /// * [String] student:
  ///
  /// * [DateTime] timestamp:
  Future<Response> apiV1BoardingEventsListWithHttpInfo({ String? busRoute, String? kioskId, int? page, String? student, DateTime? timestamp, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/boarding-events/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (busRoute != null) {
      queryParams.addAll(_queryParams('', 'bus_route', busRoute));
    }
    if (kioskId != null) {
      queryParams.addAll(_queryParams('', 'kiosk_id', kioskId));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (student != null) {
      queryParams.addAll(_queryParams('', 'student', student));
    }
    if (timestamp != null) {
      queryParams.addAll(_queryParams('', 'timestamp', timestamp));
    }

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

  /// ViewSet for boarding events  PERMISSIONS: - CREATE/BULK: IsKiosk (kiosk devices only) - LIST/RETRIEVE/UPDATE/DELETE: IsSchoolAdmin (school admins only) - RECENT: IsSchoolAdmin (school admins only)  NOTE: Old permission was IsAuthenticated (too permissive!) Now using AWS-style deny-by-default with explicit permissions.
  ///
  /// Parameters:
  ///
  /// * [String] busRoute:
  ///
  /// * [String] kioskId:
  ///
  /// * [int] page:
  ///   A page number within the paginated result set.
  ///
  /// * [String] student:
  ///
  /// * [DateTime] timestamp:
  Future<PaginatedBoardingEventList?> apiV1BoardingEventsList({ String? busRoute, String? kioskId, int? page, String? student, DateTime? timestamp, }) async {
    final response = await apiV1BoardingEventsListWithHttpInfo( busRoute: busRoute, kioskId: kioskId, page: page, student: student, timestamp: timestamp, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedBoardingEventList',) as PaginatedBoardingEventList;
    
    }
    return null;
  }

  /// ViewSet for boarding events  PERMISSIONS: - CREATE/BULK: IsKiosk (kiosk devices only) - LIST/RETRIEVE/UPDATE/DELETE: IsSchoolAdmin (school admins only) - RECENT: IsSchoolAdmin (school admins only)  NOTE: Old permission was IsAuthenticated (too permissive!) Now using AWS-style deny-by-default with explicit permissions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] eventId (required):
  ///
  /// * [PatchedBoardingEvent] patchedBoardingEvent:
  Future<Response> apiV1BoardingEventsPartialUpdateWithHttpInfo(String eventId, { PatchedBoardingEvent? patchedBoardingEvent, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/boarding-events/{event_id}/'
      .replaceAll('{event_id}', eventId);

    // ignore: prefer_final_locals
    Object? postBody = patchedBoardingEvent;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// ViewSet for boarding events  PERMISSIONS: - CREATE/BULK: IsKiosk (kiosk devices only) - LIST/RETRIEVE/UPDATE/DELETE: IsSchoolAdmin (school admins only) - RECENT: IsSchoolAdmin (school admins only)  NOTE: Old permission was IsAuthenticated (too permissive!) Now using AWS-style deny-by-default with explicit permissions.
  ///
  /// Parameters:
  ///
  /// * [String] eventId (required):
  ///
  /// * [PatchedBoardingEvent] patchedBoardingEvent:
  Future<BoardingEvent?> apiV1BoardingEventsPartialUpdate(String eventId, { PatchedBoardingEvent? patchedBoardingEvent, }) async {
    final response = await apiV1BoardingEventsPartialUpdateWithHttpInfo(eventId,  patchedBoardingEvent: patchedBoardingEvent, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BoardingEvent',) as BoardingEvent;
    
    }
    return null;
  }

  /// Get recent boarding events for dashboard
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> apiV1BoardingEventsRecentRetrieveWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/boarding-events/recent/';

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

  /// Get recent boarding events for dashboard
  Future<BoardingEvent?> apiV1BoardingEventsRecentRetrieve() async {
    final response = await apiV1BoardingEventsRecentRetrieveWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BoardingEvent',) as BoardingEvent;
    
    }
    return null;
  }

  /// ViewSet for boarding events  PERMISSIONS: - CREATE/BULK: IsKiosk (kiosk devices only) - LIST/RETRIEVE/UPDATE/DELETE: IsSchoolAdmin (school admins only) - RECENT: IsSchoolAdmin (school admins only)  NOTE: Old permission was IsAuthenticated (too permissive!) Now using AWS-style deny-by-default with explicit permissions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] eventId (required):
  Future<Response> apiV1BoardingEventsRetrieveWithHttpInfo(String eventId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/boarding-events/{event_id}/'
      .replaceAll('{event_id}', eventId);

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

  /// ViewSet for boarding events  PERMISSIONS: - CREATE/BULK: IsKiosk (kiosk devices only) - LIST/RETRIEVE/UPDATE/DELETE: IsSchoolAdmin (school admins only) - RECENT: IsSchoolAdmin (school admins only)  NOTE: Old permission was IsAuthenticated (too permissive!) Now using AWS-style deny-by-default with explicit permissions.
  ///
  /// Parameters:
  ///
  /// * [String] eventId (required):
  Future<BoardingEvent?> apiV1BoardingEventsRetrieve(String eventId,) async {
    final response = await apiV1BoardingEventsRetrieveWithHttpInfo(eventId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BoardingEvent',) as BoardingEvent;
    
    }
    return null;
  }

  /// ViewSet for boarding events  PERMISSIONS: - CREATE/BULK: IsKiosk (kiosk devices only) - LIST/RETRIEVE/UPDATE/DELETE: IsSchoolAdmin (school admins only) - RECENT: IsSchoolAdmin (school admins only)  NOTE: Old permission was IsAuthenticated (too permissive!) Now using AWS-style deny-by-default with explicit permissions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] eventId (required):
  ///
  /// * [BoardingEvent] boardingEvent (required):
  Future<Response> apiV1BoardingEventsUpdateWithHttpInfo(String eventId, BoardingEvent boardingEvent,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/boarding-events/{event_id}/'
      .replaceAll('{event_id}', eventId);

    // ignore: prefer_final_locals
    Object? postBody = boardingEvent;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// ViewSet for boarding events  PERMISSIONS: - CREATE/BULK: IsKiosk (kiosk devices only) - LIST/RETRIEVE/UPDATE/DELETE: IsSchoolAdmin (school admins only) - RECENT: IsSchoolAdmin (school admins only)  NOTE: Old permission was IsAuthenticated (too permissive!) Now using AWS-style deny-by-default with explicit permissions.
  ///
  /// Parameters:
  ///
  /// * [String] eventId (required):
  ///
  /// * [BoardingEvent] boardingEvent (required):
  Future<BoardingEvent?> apiV1BoardingEventsUpdate(String eventId, BoardingEvent boardingEvent,) async {
    final response = await apiV1BoardingEventsUpdateWithHttpInfo(eventId, boardingEvent,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BoardingEvent',) as BoardingEvent;
    
    }
    return null;
  }

  /// Bulk assign students to buses
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Bus] bus (required):
  Future<Response> apiV1BusesAssignStudentsCreateWithHttpInfo(Bus bus,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/buses/assign-students/';

    // ignore: prefer_final_locals
    Object? postBody = bus;

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

  /// Bulk assign students to buses
  ///
  /// Parameters:
  ///
  /// * [Bus] bus (required):
  Future<Bus?> apiV1BusesAssignStudentsCreate(Bus bus,) async {
    final response = await apiV1BusesAssignStudentsCreateWithHttpInfo(bus,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Bus',) as Bus;
    
    }
    return null;
  }

  /// ViewSet for buses
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Bus] bus (required):
  Future<Response> apiV1BusesCreateWithHttpInfo(Bus bus,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/buses/';

    // ignore: prefer_final_locals
    Object? postBody = bus;

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

  /// ViewSet for buses
  ///
  /// Parameters:
  ///
  /// * [Bus] bus (required):
  Future<Bus?> apiV1BusesCreate(Bus bus,) async {
    final response = await apiV1BusesCreateWithHttpInfo(bus,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Bus',) as Bus;
    
    }
    return null;
  }

  /// ViewSet for buses
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] busId (required):
  Future<Response> apiV1BusesDestroyWithHttpInfo(String busId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/buses/{bus_id}/'
      .replaceAll('{bus_id}', busId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// ViewSet for buses
  ///
  /// Parameters:
  ///
  /// * [String] busId (required):
  Future<void> apiV1BusesDestroy(String busId,) async {
    final response = await apiV1BusesDestroyWithHttpInfo(busId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// ViewSet for buses
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///
  /// * [int] page:
  ///   A page number within the paginated result set.
  ///
  /// * [String] route:
  ///   UUID primary key
  ///
  /// * [String] status:
  ///   Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
  Future<Response> apiV1BusesListWithHttpInfo({ String? deviceId, int? page, String? route, String? status, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/buses/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'device_id', deviceId));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (route != null) {
      queryParams.addAll(_queryParams('', 'route', route));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }

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

  /// ViewSet for buses
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///
  /// * [int] page:
  ///   A page number within the paginated result set.
  ///
  /// * [String] route:
  ///   UUID primary key
  ///
  /// * [String] status:
  ///   Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
  Future<PaginatedBusList?> apiV1BusesList({ String? deviceId, int? page, String? route, String? status, }) async {
    final response = await apiV1BusesListWithHttpInfo( deviceId: deviceId, page: page, route: route, status: status, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedBusList',) as PaginatedBusList;
    
    }
    return null;
  }

  /// ViewSet for buses
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] busId (required):
  ///
  /// * [PatchedBus] patchedBus:
  Future<Response> apiV1BusesPartialUpdateWithHttpInfo(String busId, { PatchedBus? patchedBus, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/buses/{bus_id}/'
      .replaceAll('{bus_id}', busId);

    // ignore: prefer_final_locals
    Object? postBody = patchedBus;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// ViewSet for buses
  ///
  /// Parameters:
  ///
  /// * [String] busId (required):
  ///
  /// * [PatchedBus] patchedBus:
  Future<Bus?> apiV1BusesPartialUpdate(String busId, { PatchedBus? patchedBus, }) async {
    final response = await apiV1BusesPartialUpdateWithHttpInfo(busId,  patchedBus: patchedBus, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Bus',) as Bus;
    
    }
    return null;
  }

  /// ViewSet for buses
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] busId (required):
  Future<Response> apiV1BusesRetrieveWithHttpInfo(String busId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/buses/{bus_id}/'
      .replaceAll('{bus_id}', busId);

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

  /// ViewSet for buses
  ///
  /// Parameters:
  ///
  /// * [String] busId (required):
  Future<Bus?> apiV1BusesRetrieve(String busId,) async {
    final response = await apiV1BusesRetrieveWithHttpInfo(busId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Bus',) as Bus;
    
    }
    return null;
  }

  /// Get all students assigned to this bus
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] busId (required):
  Future<Response> apiV1BusesStudentsRetrieveWithHttpInfo(String busId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/buses/{bus_id}/students/'
      .replaceAll('{bus_id}', busId);

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

  /// Get all students assigned to this bus
  ///
  /// Parameters:
  ///
  /// * [String] busId (required):
  Future<Bus?> apiV1BusesStudentsRetrieve(String busId,) async {
    final response = await apiV1BusesStudentsRetrieveWithHttpInfo(busId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Bus',) as Bus;
    
    }
    return null;
  }

  /// ViewSet for buses
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] busId (required):
  ///
  /// * [Bus] bus (required):
  Future<Response> apiV1BusesUpdateWithHttpInfo(String busId, Bus bus,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/buses/{bus_id}/'
      .replaceAll('{bus_id}', busId);

    // ignore: prefer_final_locals
    Object? postBody = bus;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// ViewSet for buses
  ///
  /// Parameters:
  ///
  /// * [String] busId (required):
  ///
  /// * [Bus] bus (required):
  Future<Bus?> apiV1BusesUpdate(String busId, Bus bus,) async {
    final response = await apiV1BusesUpdateWithHttpInfo(busId, bus,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Bus',) as Bus;
    
    }
    return null;
  }

  /// Get fleet utilization report
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> apiV1BusesUtilizationRetrieveWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/buses/utilization/';

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

  /// Get fleet utilization report
  Future<Bus?> apiV1BusesUtilizationRetrieve() async {
    final response = await apiV1BusesUtilizationRetrieveWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Bus',) as Bus;
    
    }
    return null;
  }

  /// Get dashboard summary statistics
  ///
  /// Returns summary statistics for school dashboard (buses, students boarded) for TODAY only. Cached for 10 seconds.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> apiV1DashboardStatsRetrieveWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dashboard/stats/';

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

  /// Get dashboard summary statistics
  ///
  /// Returns summary statistics for school dashboard (buses, students boarded) for TODAY only. Cached for 10 seconds.
  Future<DashboardStats?> apiV1DashboardStatsRetrieve() async {
    final response = await apiV1DashboardStatsRetrieveWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DashboardStats',) as DashboardStats;
    
    }
    return null;
  }

  /// Get students with boarding events
  ///
  /// Returns paginated list of students who boarded TODAY with all their events
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Number of students per page (default=50)
  ///
  /// * [int] offset:
  ///   Offset for pagination (default=0)
  Future<Response> apiV1DashboardStudentsRetrieveWithHttpInfo({ int? limit, int? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dashboard/students/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }

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

  /// Get students with boarding events
  ///
  /// Returns paginated list of students who boarded TODAY with all their events
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Number of students per page (default=50)
  ///
  /// * [int] offset:
  ///   Offset for pagination (default=0)
  Future<DashboardStudentsResponse?> apiV1DashboardStudentsRetrieve({ int? limit, int? offset, }) async {
    final response = await apiV1DashboardStudentsRetrieveWithHttpInfo( limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DashboardStudentsResponse',) as DashboardStudentsResponse;
    
    }
    return null;
  }

  /// Geocode an address to coordinates.  POST /api/v1/geocode/ Body: {\"address\": \"Imperial College London\"}  Returns: {     \"latitude\": 51.4988,     \"longitude\": -0.1749,     \"formatted_address\": \"Imperial College London, Exhibition Rd, London SW7 2AZ, UK\" }
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> apiV1GeocodeCreateWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/geocode/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Geocode an address to coordinates.  POST /api/v1/geocode/ Body: {\"address\": \"Imperial College London\"}  Returns: {     \"latitude\": 51.4988,     \"longitude\": -0.1749,     \"formatted_address\": \"Imperial College London, Exhibition Rd, London SW7 2AZ, UK\" }
  Future<void> apiV1GeocodeCreate() async {
    final response = await apiV1GeocodeCreateWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// API endpoint for Groups (Roles). Read-only following IAM principle - groups managed via seed_groups command. Groups represent user roles: school_admin, parent, driver.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [int] page:
  ///   A page number within the paginated result set.
  ///
  /// * [String] search:
  ///   A search term.
  Future<Response> apiV1GroupsListWithHttpInfo({ String? ordering, int? page, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/groups/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (ordering != null) {
      queryParams.addAll(_queryParams('', 'ordering', ordering));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }

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

  /// API endpoint for Groups (Roles). Read-only following IAM principle - groups managed via seed_groups command. Groups represent user roles: school_admin, parent, driver.
  ///
  /// Parameters:
  ///
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [int] page:
  ///   A page number within the paginated result set.
  ///
  /// * [String] search:
  ///   A search term.
  Future<PaginatedGroupList?> apiV1GroupsList({ String? ordering, int? page, String? search, }) async {
    final response = await apiV1GroupsListWithHttpInfo( ordering: ordering, page: page, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedGroupList',) as PaginatedGroupList;
    
    }
    return null;
  }

  /// API endpoint for Groups (Roles). Read-only following IAM principle - groups managed via seed_groups command. Groups represent user roles: school_admin, parent, driver.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this group.
  Future<Response> apiV1GroupsRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/groups/{id}/'
      .replaceAll('{id}', id.toString());

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

  /// API endpoint for Groups (Roles). Read-only following IAM principle - groups managed via seed_groups command. Groups represent user roles: school_admin, parent, driver.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this group.
  Future<Group?> apiV1GroupsRetrieve(int id,) async {
    final response = await apiV1GroupsRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Group',) as Group;
    
    }
    return null;
  }

  /// Student boarding endpoint - returns immediate approval and schedules background processing
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Map<String, Object>] requestBody:
  Future<Response> apiV1KioskBoardingCreateWithHttpInfo({ Map<String, Object>? requestBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/kiosk/boarding/';

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

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

  /// Student boarding endpoint - returns immediate approval and schedules background processing
  ///
  /// Parameters:
  ///
  /// * [Map<String, Object>] requestBody:
  Future<ApiV1KioskBoardingCreate200Response?> apiV1KioskBoardingCreate({ Map<String, Object>? requestBody, }) async {
    final response = await apiV1KioskBoardingCreateWithHttpInfo( requestBody: requestBody, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApiV1KioskBoardingCreate200Response',) as ApiV1KioskBoardingCreate200Response;
    
    }
    return null;
  }

  /// ViewSet for kiosk management (admin only)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Kiosk] kiosk:
  Future<Response> apiV1KiosksCreateWithHttpInfo({ Kiosk? kiosk, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/kiosks/';

    // ignore: prefer_final_locals
    Object? postBody = kiosk;

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

  /// ViewSet for kiosk management (admin only)
  ///
  /// Parameters:
  ///
  /// * [Kiosk] kiosk:
  Future<Kiosk?> apiV1KiosksCreate({ Kiosk? kiosk, }) async {
    final response = await apiV1KiosksCreateWithHttpInfo( kiosk: kiosk, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Kiosk',) as Kiosk;
    
    }
    return null;
  }

  /// ViewSet for kiosk management (admin only)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] kioskId (required):
  Future<Response> apiV1KiosksDestroyWithHttpInfo(String kioskId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/kiosks/{kiosk_id}/'
      .replaceAll('{kiosk_id}', kioskId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// ViewSet for kiosk management (admin only)
  ///
  /// Parameters:
  ///
  /// * [String] kioskId (required):
  Future<void> apiV1KiosksDestroy(String kioskId,) async {
    final response = await apiV1KiosksDestroyWithHttpInfo(kioskId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// ViewSet for kiosk management (admin only)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [int] page:
  ///   A page number within the paginated result set.
  ///
  /// * [String] search:
  ///   A search term.
  Future<Response> apiV1KiosksListWithHttpInfo({ String? ordering, int? page, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/kiosks/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (ordering != null) {
      queryParams.addAll(_queryParams('', 'ordering', ordering));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }

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

  /// ViewSet for kiosk management (admin only)
  ///
  /// Parameters:
  ///
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [int] page:
  ///   A page number within the paginated result set.
  ///
  /// * [String] search:
  ///   A search term.
  Future<PaginatedKioskList?> apiV1KiosksList({ String? ordering, int? page, String? search, }) async {
    final response = await apiV1KiosksListWithHttpInfo( ordering: ordering, page: page, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedKioskList',) as PaginatedKioskList;
    
    }
    return null;
  }

  /// ViewSet for kiosk management (admin only)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] kioskId (required):
  ///
  /// * [PatchedKiosk] patchedKiosk:
  Future<Response> apiV1KiosksPartialUpdateWithHttpInfo(String kioskId, { PatchedKiosk? patchedKiosk, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/kiosks/{kiosk_id}/'
      .replaceAll('{kiosk_id}', kioskId);

    // ignore: prefer_final_locals
    Object? postBody = patchedKiosk;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// ViewSet for kiosk management (admin only)
  ///
  /// Parameters:
  ///
  /// * [String] kioskId (required):
  ///
  /// * [PatchedKiosk] patchedKiosk:
  Future<Kiosk?> apiV1KiosksPartialUpdate(String kioskId, { PatchedKiosk? patchedKiosk, }) async {
    final response = await apiV1KiosksPartialUpdateWithHttpInfo(kioskId,  patchedKiosk: patchedKiosk, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Kiosk',) as Kiosk;
    
    }
    return null;
  }

  /// ViewSet for kiosk management (admin only)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] kioskId (required):
  Future<Response> apiV1KiosksRetrieveWithHttpInfo(String kioskId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/kiosks/{kiosk_id}/'
      .replaceAll('{kiosk_id}', kioskId);

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

  /// ViewSet for kiosk management (admin only)
  ///
  /// Parameters:
  ///
  /// * [String] kioskId (required):
  Future<Kiosk?> apiV1KiosksRetrieve(String kioskId,) async {
    final response = await apiV1KiosksRetrieveWithHttpInfo(kioskId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Kiosk',) as Kiosk;
    
    }
    return null;
  }

  /// ViewSet for kiosk management (admin only)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] kioskId (required):
  ///
  /// * [Kiosk] kiosk:
  Future<Response> apiV1KiosksUpdateWithHttpInfo(String kioskId, { Kiosk? kiosk, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/kiosks/{kiosk_id}/'
      .replaceAll('{kiosk_id}', kioskId);

    // ignore: prefer_final_locals
    Object? postBody = kiosk;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// ViewSet for kiosk management (admin only)
  ///
  /// Parameters:
  ///
  /// * [String] kioskId (required):
  ///
  /// * [Kiosk] kiosk:
  Future<Kiosk?> apiV1KiosksUpdate(String kioskId, { Kiosk? kiosk, }) async {
    final response = await apiV1KiosksUpdateWithHttpInfo(kioskId,  kiosk: kiosk, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Kiosk',) as Kiosk;
    
    }
    return null;
  }

  /// Read-only ViewSet for device logs (any authenticated user)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] kiosk:
  ///   Unique kiosk device identifier (e.g., KIOSK001, BUS123-KIOSK)
  ///
  /// * [String] logLevel:
  ///   Log level severity  * `DEBUG` - Debug * `INFO` - Info * `WARN` - Warning * `ERROR` - Error * `CRITICAL` - Critical
  ///
  /// * [int] page:
  ///   A page number within the paginated result set.
  ///
  /// * [DateTime] timestamp:
  Future<Response> apiV1LogsListWithHttpInfo({ String? kiosk, String? logLevel, int? page, DateTime? timestamp, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/logs/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (kiosk != null) {
      queryParams.addAll(_queryParams('', 'kiosk', kiosk));
    }
    if (logLevel != null) {
      queryParams.addAll(_queryParams('', 'log_level', logLevel));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (timestamp != null) {
      queryParams.addAll(_queryParams('', 'timestamp', timestamp));
    }

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

  /// Read-only ViewSet for device logs (any authenticated user)
  ///
  /// Parameters:
  ///
  /// * [String] kiosk:
  ///   Unique kiosk device identifier (e.g., KIOSK001, BUS123-KIOSK)
  ///
  /// * [String] logLevel:
  ///   Log level severity  * `DEBUG` - Debug * `INFO` - Info * `WARN` - Warning * `ERROR` - Error * `CRITICAL` - Critical
  ///
  /// * [int] page:
  ///   A page number within the paginated result set.
  ///
  /// * [DateTime] timestamp:
  Future<PaginatedDeviceLogList?> apiV1LogsList({ String? kiosk, String? logLevel, int? page, DateTime? timestamp, }) async {
    final response = await apiV1LogsListWithHttpInfo( kiosk: kiosk, logLevel: logLevel, page: page, timestamp: timestamp, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedDeviceLogList',) as PaginatedDeviceLogList;
    
    }
    return null;
  }

  /// Read-only ViewSet for device logs (any authenticated user)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] logId (required):
  Future<Response> apiV1LogsRetrieveWithHttpInfo(int logId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/logs/{log_id}/'
      .replaceAll('{log_id}', logId.toString());

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

  /// Read-only ViewSet for device logs (any authenticated user)
  ///
  /// Parameters:
  ///
  /// * [int] logId (required):
  Future<DeviceLog?> apiV1LogsRetrieve(int logId,) async {
    final response = await apiV1LogsRetrieveWithHttpInfo(logId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeviceLog',) as DeviceLog;
    
    }
    return null;
  }

  /// Get logs summary by level and time
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> apiV1LogsSummaryRetrieveWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/logs/summary/';

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

  /// Get logs summary by level and time
  Future<DeviceLog?> apiV1LogsSummaryRetrieve() async {
    final response = await apiV1LogsSummaryRetrieveWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeviceLog',) as DeviceLog;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /api/v1/parents/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [Parent] parent (required):
  Future<Response> apiV1ParentsCreateWithHttpInfo(Parent parent,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/parents/';

    // ignore: prefer_final_locals
    Object? postBody = parent;

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

  /// Parameters:
  ///
  /// * [Parent] parent (required):
  Future<Parent?> apiV1ParentsCreate(Parent parent,) async {
    final response = await apiV1ParentsCreateWithHttpInfo(parent,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Parent',) as Parent;
    
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /api/v1/parents/{parent_id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] parentId (required):
  ///   A UUID string identifying this parent.
  Future<Response> apiV1ParentsDestroyWithHttpInfo(String parentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/parents/{parent_id}/'
      .replaceAll('{parent_id}', parentId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] parentId (required):
  ///   A UUID string identifying this parent.
  Future<void> apiV1ParentsDestroy(String parentId,) async {
    final response = await apiV1ParentsDestroyWithHttpInfo(parentId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/v1/parents/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [int] page:
  ///   A page number within the paginated result set.
  ///
  /// * [String] search:
  ///   A search term.
  Future<Response> apiV1ParentsListWithHttpInfo({ String? ordering, int? page, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/parents/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (ordering != null) {
      queryParams.addAll(_queryParams('', 'ordering', ordering));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }

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

  /// Parameters:
  ///
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [int] page:
  ///   A page number within the paginated result set.
  ///
  /// * [String] search:
  ///   A search term.
  Future<PaginatedParentList?> apiV1ParentsList({ String? ordering, int? page, String? search, }) async {
    final response = await apiV1ParentsListWithHttpInfo( ordering: ordering, page: page, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedParentList',) as PaginatedParentList;
    
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /api/v1/parents/{parent_id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] parentId (required):
  ///   A UUID string identifying this parent.
  ///
  /// * [PatchedParent] patchedParent:
  Future<Response> apiV1ParentsPartialUpdateWithHttpInfo(String parentId, { PatchedParent? patchedParent, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/parents/{parent_id}/'
      .replaceAll('{parent_id}', parentId);

    // ignore: prefer_final_locals
    Object? postBody = patchedParent;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] parentId (required):
  ///   A UUID string identifying this parent.
  ///
  /// * [PatchedParent] patchedParent:
  Future<Parent?> apiV1ParentsPartialUpdate(String parentId, { PatchedParent? patchedParent, }) async {
    final response = await apiV1ParentsPartialUpdateWithHttpInfo(parentId,  patchedParent: patchedParent, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Parent',) as Parent;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/v1/parents/{parent_id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] parentId (required):
  ///   A UUID string identifying this parent.
  Future<Response> apiV1ParentsRetrieveWithHttpInfo(String parentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/parents/{parent_id}/'
      .replaceAll('{parent_id}', parentId);

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

  /// Parameters:
  ///
  /// * [String] parentId (required):
  ///   A UUID string identifying this parent.
  Future<Parent?> apiV1ParentsRetrieve(String parentId,) async {
    final response = await apiV1ParentsRetrieveWithHttpInfo(parentId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Parent',) as Parent;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/v1/parents/{parent_id}/students/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] parentId (required):
  ///   A UUID string identifying this parent.
  Future<Response> apiV1ParentsStudentsRetrieveWithHttpInfo(String parentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/parents/{parent_id}/students/'
      .replaceAll('{parent_id}', parentId);

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

  /// Parameters:
  ///
  /// * [String] parentId (required):
  ///   A UUID string identifying this parent.
  Future<Parent?> apiV1ParentsStudentsRetrieve(String parentId,) async {
    final response = await apiV1ParentsStudentsRetrieveWithHttpInfo(parentId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Parent',) as Parent;
    
    }
    return null;
  }

  /// Performs an HTTP 'PUT /api/v1/parents/{parent_id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] parentId (required):
  ///   A UUID string identifying this parent.
  ///
  /// * [Parent] parent (required):
  Future<Response> apiV1ParentsUpdateWithHttpInfo(String parentId, Parent parent,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/parents/{parent_id}/'
      .replaceAll('{parent_id}', parentId);

    // ignore: prefer_final_locals
    Object? postBody = parent;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] parentId (required):
  ///   A UUID string identifying this parent.
  ///
  /// * [Parent] parent (required):
  Future<Parent?> apiV1ParentsUpdate(String parentId, Parent parent,) async {
    final response = await apiV1ParentsUpdateWithHttpInfo(parentId, parent,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Parent',) as Parent;
    
    }
    return null;
  }

  /// Get all buses assigned to this route
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] routeId (required):
  Future<Response> apiV1RoutesBusesRetrieveWithHttpInfo(String routeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/routes/{route_id}/buses/'
      .replaceAll('{route_id}', routeId);

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

  /// Get all buses assigned to this route
  ///
  /// Parameters:
  ///
  /// * [String] routeId (required):
  Future<Route?> apiV1RoutesBusesRetrieve(String routeId,) async {
    final response = await apiV1RoutesBusesRetrieveWithHttpInfo(routeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Route',) as Route;
    
    }
    return null;
  }

  /// ViewSet for bus routes
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Route] route (required):
  Future<Response> apiV1RoutesCreateWithHttpInfo(Route route,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/routes/';

    // ignore: prefer_final_locals
    Object? postBody = route;

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

  /// ViewSet for bus routes
  ///
  /// Parameters:
  ///
  /// * [Route] route (required):
  Future<Route?> apiV1RoutesCreate(Route route,) async {
    final response = await apiV1RoutesCreateWithHttpInfo(route,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Route',) as Route;
    
    }
    return null;
  }

  /// ViewSet for bus routes
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] routeId (required):
  Future<Response> apiV1RoutesDestroyWithHttpInfo(String routeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/routes/{route_id}/'
      .replaceAll('{route_id}', routeId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// ViewSet for bus routes
  ///
  /// Parameters:
  ///
  /// * [String] routeId (required):
  Future<void> apiV1RoutesDestroy(String routeId,) async {
    final response = await apiV1RoutesDestroyWithHttpInfo(routeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// ViewSet for bus routes
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] isActive:
  ///
  /// * [int] page:
  ///   A page number within the paginated result set.
  Future<Response> apiV1RoutesListWithHttpInfo({ bool? isActive, int? page, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/routes/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (isActive != null) {
      queryParams.addAll(_queryParams('', 'is_active', isActive));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }

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

  /// ViewSet for bus routes
  ///
  /// Parameters:
  ///
  /// * [bool] isActive:
  ///
  /// * [int] page:
  ///   A page number within the paginated result set.
  Future<PaginatedRouteList?> apiV1RoutesList({ bool? isActive, int? page, }) async {
    final response = await apiV1RoutesListWithHttpInfo( isActive: isActive, page: page, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedRouteList',) as PaginatedRouteList;
    
    }
    return null;
  }

  /// ViewSet for bus routes
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] routeId (required):
  ///
  /// * [PatchedRoute] patchedRoute:
  Future<Response> apiV1RoutesPartialUpdateWithHttpInfo(String routeId, { PatchedRoute? patchedRoute, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/routes/{route_id}/'
      .replaceAll('{route_id}', routeId);

    // ignore: prefer_final_locals
    Object? postBody = patchedRoute;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// ViewSet for bus routes
  ///
  /// Parameters:
  ///
  /// * [String] routeId (required):
  ///
  /// * [PatchedRoute] patchedRoute:
  Future<Route?> apiV1RoutesPartialUpdate(String routeId, { PatchedRoute? patchedRoute, }) async {
    final response = await apiV1RoutesPartialUpdateWithHttpInfo(routeId,  patchedRoute: patchedRoute, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Route',) as Route;
    
    }
    return null;
  }

  /// ViewSet for bus routes
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] routeId (required):
  Future<Response> apiV1RoutesRetrieveWithHttpInfo(String routeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/routes/{route_id}/'
      .replaceAll('{route_id}', routeId);

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

  /// ViewSet for bus routes
  ///
  /// Parameters:
  ///
  /// * [String] routeId (required):
  Future<Route?> apiV1RoutesRetrieve(String routeId,) async {
    final response = await apiV1RoutesRetrieveWithHttpInfo(routeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Route',) as Route;
    
    }
    return null;
  }

  /// Get all students assigned to buses on this route
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] routeId (required):
  Future<Response> apiV1RoutesStudentsRetrieveWithHttpInfo(String routeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/routes/{route_id}/students/'
      .replaceAll('{route_id}', routeId);

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

  /// Get all students assigned to buses on this route
  ///
  /// Parameters:
  ///
  /// * [String] routeId (required):
  Future<Route?> apiV1RoutesStudentsRetrieve(String routeId,) async {
    final response = await apiV1RoutesStudentsRetrieveWithHttpInfo(routeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Route',) as Route;
    
    }
    return null;
  }

  /// ViewSet for bus routes
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] routeId (required):
  ///
  /// * [Route] route (required):
  Future<Response> apiV1RoutesUpdateWithHttpInfo(String routeId, Route route,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/routes/{route_id}/'
      .replaceAll('{route_id}', routeId);

    // ignore: prefer_final_locals
    Object? postBody = route;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// ViewSet for bus routes
  ///
  /// Parameters:
  ///
  /// * [String] routeId (required):
  ///
  /// * [Route] route (required):
  Future<Route?> apiV1RoutesUpdate(String routeId, Route route,) async {
    final response = await apiV1RoutesUpdateWithHttpInfo(routeId, route,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Route',) as Route;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /api/v1/schools/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [School] school (required):
  Future<Response> apiV1SchoolsCreateWithHttpInfo(School school,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/schools/';

    // ignore: prefer_final_locals
    Object? postBody = school;

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

  /// Parameters:
  ///
  /// * [School] school (required):
  Future<School?> apiV1SchoolsCreate(School school,) async {
    final response = await apiV1SchoolsCreateWithHttpInfo(school,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'School',) as School;
    
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /api/v1/schools/{school_id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] schoolId (required):
  ///   A UUID string identifying this school.
  Future<Response> apiV1SchoolsDestroyWithHttpInfo(String schoolId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/schools/{school_id}/'
      .replaceAll('{school_id}', schoolId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] schoolId (required):
  ///   A UUID string identifying this school.
  Future<void> apiV1SchoolsDestroy(String schoolId,) async {
    final response = await apiV1SchoolsDestroyWithHttpInfo(schoolId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/v1/schools/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [int] page:
  ///   A page number within the paginated result set.
  ///
  /// * [String] search:
  ///   A search term.
  Future<Response> apiV1SchoolsListWithHttpInfo({ String? ordering, int? page, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/schools/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (ordering != null) {
      queryParams.addAll(_queryParams('', 'ordering', ordering));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }

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

  /// Parameters:
  ///
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [int] page:
  ///   A page number within the paginated result set.
  ///
  /// * [String] search:
  ///   A search term.
  Future<PaginatedSchoolList?> apiV1SchoolsList({ String? ordering, int? page, String? search, }) async {
    final response = await apiV1SchoolsListWithHttpInfo( ordering: ordering, page: page, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedSchoolList',) as PaginatedSchoolList;
    
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /api/v1/schools/{school_id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] schoolId (required):
  ///   A UUID string identifying this school.
  ///
  /// * [PatchedSchool] patchedSchool:
  Future<Response> apiV1SchoolsPartialUpdateWithHttpInfo(String schoolId, { PatchedSchool? patchedSchool, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/schools/{school_id}/'
      .replaceAll('{school_id}', schoolId);

    // ignore: prefer_final_locals
    Object? postBody = patchedSchool;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] schoolId (required):
  ///   A UUID string identifying this school.
  ///
  /// * [PatchedSchool] patchedSchool:
  Future<School?> apiV1SchoolsPartialUpdate(String schoolId, { PatchedSchool? patchedSchool, }) async {
    final response = await apiV1SchoolsPartialUpdateWithHttpInfo(schoolId,  patchedSchool: patchedSchool, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'School',) as School;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/v1/schools/{school_id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] schoolId (required):
  ///   A UUID string identifying this school.
  Future<Response> apiV1SchoolsRetrieveWithHttpInfo(String schoolId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/schools/{school_id}/'
      .replaceAll('{school_id}', schoolId);

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

  /// Parameters:
  ///
  /// * [String] schoolId (required):
  ///   A UUID string identifying this school.
  Future<School?> apiV1SchoolsRetrieve(String schoolId,) async {
    final response = await apiV1SchoolsRetrieveWithHttpInfo(schoolId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'School',) as School;
    
    }
    return null;
  }

  /// Performs an HTTP 'PUT /api/v1/schools/{school_id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] schoolId (required):
  ///   A UUID string identifying this school.
  ///
  /// * [School] school (required):
  Future<Response> apiV1SchoolsUpdateWithHttpInfo(String schoolId, School school,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/schools/{school_id}/'
      .replaceAll('{school_id}', schoolId);

    // ignore: prefer_final_locals
    Object? postBody = school;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] schoolId (required):
  ///   A UUID string identifying this school.
  ///
  /// * [School] school (required):
  Future<School?> apiV1SchoolsUpdate(String schoolId, School school,) async {
    final response = await apiV1SchoolsUpdateWithHttpInfo(schoolId, school,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'School',) as School;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /api/v1/student-parents/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [StudentParent] studentParent (required):
  Future<Response> apiV1StudentParentsCreateWithHttpInfo(StudentParent studentParent,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/student-parents/';

    // ignore: prefer_final_locals
    Object? postBody = studentParent;

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

  /// Parameters:
  ///
  /// * [StudentParent] studentParent (required):
  Future<StudentParent?> apiV1StudentParentsCreate(StudentParent studentParent,) async {
    final response = await apiV1StudentParentsCreateWithHttpInfo(studentParent,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StudentParent',) as StudentParent;
    
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /api/v1/student-parents/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this student parent.
  Future<Response> apiV1StudentParentsDestroyWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/student-parents/{id}/'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this student parent.
  Future<void> apiV1StudentParentsDestroy(int id,) async {
    final response = await apiV1StudentParentsDestroyWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/v1/student-parents/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [int] page:
  ///   A page number within the paginated result set.
  ///
  /// * [String] search:
  ///   A search term.
  Future<Response> apiV1StudentParentsListWithHttpInfo({ String? ordering, int? page, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/student-parents/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (ordering != null) {
      queryParams.addAll(_queryParams('', 'ordering', ordering));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }

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

  /// Parameters:
  ///
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [int] page:
  ///   A page number within the paginated result set.
  ///
  /// * [String] search:
  ///   A search term.
  Future<PaginatedStudentParentList?> apiV1StudentParentsList({ String? ordering, int? page, String? search, }) async {
    final response = await apiV1StudentParentsListWithHttpInfo( ordering: ordering, page: page, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedStudentParentList',) as PaginatedStudentParentList;
    
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /api/v1/student-parents/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this student parent.
  ///
  /// * [PatchedStudentParent] patchedStudentParent:
  Future<Response> apiV1StudentParentsPartialUpdateWithHttpInfo(int id, { PatchedStudentParent? patchedStudentParent, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/student-parents/{id}/'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedStudentParent;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this student parent.
  ///
  /// * [PatchedStudentParent] patchedStudentParent:
  Future<StudentParent?> apiV1StudentParentsPartialUpdate(int id, { PatchedStudentParent? patchedStudentParent, }) async {
    final response = await apiV1StudentParentsPartialUpdateWithHttpInfo(id,  patchedStudentParent: patchedStudentParent, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StudentParent',) as StudentParent;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/v1/student-parents/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this student parent.
  Future<Response> apiV1StudentParentsRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/student-parents/{id}/'
      .replaceAll('{id}', id.toString());

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

  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this student parent.
  Future<StudentParent?> apiV1StudentParentsRetrieve(int id,) async {
    final response = await apiV1StudentParentsRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StudentParent',) as StudentParent;
    
    }
    return null;
  }

  /// Performs an HTTP 'PUT /api/v1/student-parents/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this student parent.
  ///
  /// * [StudentParent] studentParent (required):
  Future<Response> apiV1StudentParentsUpdateWithHttpInfo(int id, StudentParent studentParent,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/student-parents/{id}/'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = studentParent;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this student parent.
  ///
  /// * [StudentParent] studentParent (required):
  Future<StudentParent?> apiV1StudentParentsUpdate(int id, StudentParent studentParent,) async {
    final response = await apiV1StudentParentsUpdateWithHttpInfo(id, studentParent,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StudentParent',) as StudentParent;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /api/v1/student-photos/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [StudentPhoto] studentPhoto (required):
  Future<Response> apiV1StudentPhotosCreateWithHttpInfo(StudentPhoto studentPhoto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/student-photos/';

    // ignore: prefer_final_locals
    Object? postBody = studentPhoto;

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

  /// Parameters:
  ///
  /// * [StudentPhoto] studentPhoto (required):
  Future<StudentPhoto?> apiV1StudentPhotosCreate(StudentPhoto studentPhoto,) async {
    final response = await apiV1StudentPhotosCreateWithHttpInfo(studentPhoto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StudentPhoto',) as StudentPhoto;
    
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /api/v1/student-photos/{photo_id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] photoId (required):
  ///   A UUID string identifying this student photo.
  Future<Response> apiV1StudentPhotosDestroyWithHttpInfo(String photoId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/student-photos/{photo_id}/'
      .replaceAll('{photo_id}', photoId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] photoId (required):
  ///   A UUID string identifying this student photo.
  Future<void> apiV1StudentPhotosDestroy(String photoId,) async {
    final response = await apiV1StudentPhotosDestroyWithHttpInfo(photoId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/v1/student-photos/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [int] page:
  ///   A page number within the paginated result set.
  ///
  /// * [String] search:
  ///   A search term.
  Future<Response> apiV1StudentPhotosListWithHttpInfo({ String? ordering, int? page, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/student-photos/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (ordering != null) {
      queryParams.addAll(_queryParams('', 'ordering', ordering));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }

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

  /// Parameters:
  ///
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [int] page:
  ///   A page number within the paginated result set.
  ///
  /// * [String] search:
  ///   A search term.
  Future<PaginatedStudentPhotoList?> apiV1StudentPhotosList({ String? ordering, int? page, String? search, }) async {
    final response = await apiV1StudentPhotosListWithHttpInfo( ordering: ordering, page: page, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedStudentPhotoList',) as PaginatedStudentPhotoList;
    
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /api/v1/student-photos/{photo_id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] photoId (required):
  ///   A UUID string identifying this student photo.
  ///
  /// * [PatchedStudentPhoto] patchedStudentPhoto:
  Future<Response> apiV1StudentPhotosPartialUpdateWithHttpInfo(String photoId, { PatchedStudentPhoto? patchedStudentPhoto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/student-photos/{photo_id}/'
      .replaceAll('{photo_id}', photoId);

    // ignore: prefer_final_locals
    Object? postBody = patchedStudentPhoto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] photoId (required):
  ///   A UUID string identifying this student photo.
  ///
  /// * [PatchedStudentPhoto] patchedStudentPhoto:
  Future<StudentPhoto?> apiV1StudentPhotosPartialUpdate(String photoId, { PatchedStudentPhoto? patchedStudentPhoto, }) async {
    final response = await apiV1StudentPhotosPartialUpdateWithHttpInfo(photoId,  patchedStudentPhoto: patchedStudentPhoto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StudentPhoto',) as StudentPhoto;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/v1/student-photos/{photo_id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] photoId (required):
  ///   A UUID string identifying this student photo.
  Future<Response> apiV1StudentPhotosRetrieveWithHttpInfo(String photoId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/student-photos/{photo_id}/'
      .replaceAll('{photo_id}', photoId);

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

  /// Parameters:
  ///
  /// * [String] photoId (required):
  ///   A UUID string identifying this student photo.
  Future<StudentPhoto?> apiV1StudentPhotosRetrieve(String photoId,) async {
    final response = await apiV1StudentPhotosRetrieveWithHttpInfo(photoId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StudentPhoto',) as StudentPhoto;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /api/v1/student-photos/{photo_id}/set_primary/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] photoId (required):
  ///   A UUID string identifying this student photo.
  ///
  /// * [StudentPhoto] studentPhoto (required):
  Future<Response> apiV1StudentPhotosSetPrimaryCreateWithHttpInfo(String photoId, StudentPhoto studentPhoto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/student-photos/{photo_id}/set_primary/'
      .replaceAll('{photo_id}', photoId);

    // ignore: prefer_final_locals
    Object? postBody = studentPhoto;

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

  /// Parameters:
  ///
  /// * [String] photoId (required):
  ///   A UUID string identifying this student photo.
  ///
  /// * [StudentPhoto] studentPhoto (required):
  Future<StudentPhoto?> apiV1StudentPhotosSetPrimaryCreate(String photoId, StudentPhoto studentPhoto,) async {
    final response = await apiV1StudentPhotosSetPrimaryCreateWithHttpInfo(photoId, studentPhoto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StudentPhoto',) as StudentPhoto;
    
    }
    return null;
  }

  /// Performs an HTTP 'PUT /api/v1/student-photos/{photo_id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] photoId (required):
  ///   A UUID string identifying this student photo.
  ///
  /// * [StudentPhoto] studentPhoto (required):
  Future<Response> apiV1StudentPhotosUpdateWithHttpInfo(String photoId, StudentPhoto studentPhoto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/student-photos/{photo_id}/'
      .replaceAll('{photo_id}', photoId);

    // ignore: prefer_final_locals
    Object? postBody = studentPhoto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] photoId (required):
  ///   A UUID string identifying this student photo.
  ///
  /// * [StudentPhoto] studentPhoto (required):
  Future<StudentPhoto?> apiV1StudentPhotosUpdate(String photoId, StudentPhoto studentPhoto,) async {
    final response = await apiV1StudentPhotosUpdateWithHttpInfo(photoId, studentPhoto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StudentPhoto',) as StudentPhoto;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /api/v1/students/{student_id}/assign_bus/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] studentId (required):
  ///   A UUID string identifying this student.
  ///
  /// * [Student] student (required):
  Future<Response> apiV1StudentsAssignBusCreateWithHttpInfo(String studentId, Student student,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/students/{student_id}/assign_bus/'
      .replaceAll('{student_id}', studentId);

    // ignore: prefer_final_locals
    Object? postBody = student;

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

  /// Parameters:
  ///
  /// * [String] studentId (required):
  ///   A UUID string identifying this student.
  ///
  /// * [Student] student (required):
  Future<Student?> apiV1StudentsAssignBusCreate(String studentId, Student student,) async {
    final response = await apiV1StudentsAssignBusCreateWithHttpInfo(studentId, student,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Student',) as Student;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /api/v1/students/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [Student] student (required):
  Future<Response> apiV1StudentsCreateWithHttpInfo(Student student,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/students/';

    // ignore: prefer_final_locals
    Object? postBody = student;

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

  /// Parameters:
  ///
  /// * [Student] student (required):
  Future<Student?> apiV1StudentsCreate(Student student,) async {
    final response = await apiV1StudentsCreateWithHttpInfo(student,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Student',) as Student;
    
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /api/v1/students/{student_id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] studentId (required):
  ///   A UUID string identifying this student.
  Future<Response> apiV1StudentsDestroyWithHttpInfo(String studentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/students/{student_id}/'
      .replaceAll('{student_id}', studentId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] studentId (required):
  ///   A UUID string identifying this student.
  Future<void> apiV1StudentsDestroy(String studentId,) async {
    final response = await apiV1StudentsDestroyWithHttpInfo(studentId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/v1/students/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [int] page:
  ///   A page number within the paginated result set.
  ///
  /// * [String] search:
  ///   A search term.
  Future<Response> apiV1StudentsListWithHttpInfo({ String? ordering, int? page, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/students/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (ordering != null) {
      queryParams.addAll(_queryParams('', 'ordering', ordering));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }

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

  /// Parameters:
  ///
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [int] page:
  ///   A page number within the paginated result set.
  ///
  /// * [String] search:
  ///   A search term.
  Future<PaginatedStudentList?> apiV1StudentsList({ String? ordering, int? page, String? search, }) async {
    final response = await apiV1StudentsListWithHttpInfo( ordering: ordering, page: page, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedStudentList',) as PaginatedStudentList;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/v1/students/{student_id}/parents/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] studentId (required):
  ///   A UUID string identifying this student.
  Future<Response> apiV1StudentsParentsRetrieveWithHttpInfo(String studentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/students/{student_id}/parents/'
      .replaceAll('{student_id}', studentId);

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

  /// Parameters:
  ///
  /// * [String] studentId (required):
  ///   A UUID string identifying this student.
  Future<Student?> apiV1StudentsParentsRetrieve(String studentId,) async {
    final response = await apiV1StudentsParentsRetrieveWithHttpInfo(studentId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Student',) as Student;
    
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /api/v1/students/{student_id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] studentId (required):
  ///   A UUID string identifying this student.
  ///
  /// * [PatchedStudent] patchedStudent:
  Future<Response> apiV1StudentsPartialUpdateWithHttpInfo(String studentId, { PatchedStudent? patchedStudent, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/students/{student_id}/'
      .replaceAll('{student_id}', studentId);

    // ignore: prefer_final_locals
    Object? postBody = patchedStudent;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] studentId (required):
  ///   A UUID string identifying this student.
  ///
  /// * [PatchedStudent] patchedStudent:
  Future<Student?> apiV1StudentsPartialUpdate(String studentId, { PatchedStudent? patchedStudent, }) async {
    final response = await apiV1StudentsPartialUpdateWithHttpInfo(studentId,  patchedStudent: patchedStudent, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Student',) as Student;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/v1/students/{student_id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] studentId (required):
  ///   A UUID string identifying this student.
  Future<Response> apiV1StudentsRetrieveWithHttpInfo(String studentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/students/{student_id}/'
      .replaceAll('{student_id}', studentId);

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

  /// Parameters:
  ///
  /// * [String] studentId (required):
  ///   A UUID string identifying this student.
  Future<Student?> apiV1StudentsRetrieve(String studentId,) async {
    final response = await apiV1StudentsRetrieveWithHttpInfo(studentId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Student',) as Student;
    
    }
    return null;
  }

  /// Performs an HTTP 'PUT /api/v1/students/{student_id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] studentId (required):
  ///   A UUID string identifying this student.
  ///
  /// * [Student] student (required):
  Future<Response> apiV1StudentsUpdateWithHttpInfo(String studentId, Student student,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/students/{student_id}/'
      .replaceAll('{student_id}', studentId);

    // ignore: prefer_final_locals
    Object? postBody = student;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] studentId (required):
  ///   A UUID string identifying this student.
  ///
  /// * [Student] student (required):
  Future<Student?> apiV1StudentsUpdate(String studentId, Student student,) async {
    final response = await apiV1StudentsUpdateWithHttpInfo(studentId, student,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Student',) as Student;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /api/v1/users/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [User] user (required):
  Future<Response> apiV1UsersCreateWithHttpInfo(User user,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/';

    // ignore: prefer_final_locals
    Object? postBody = user;

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

  /// Parameters:
  ///
  /// * [User] user (required):
  Future<User?> apiV1UsersCreate(User user,) async {
    final response = await apiV1UsersCreateWithHttpInfo(user,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'User',) as User;
    
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /api/v1/users/{user_id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   A UUID string identifying this user.
  Future<Response> apiV1UsersDestroyWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/{user_id}/'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   A UUID string identifying this user.
  Future<void> apiV1UsersDestroy(String userId,) async {
    final response = await apiV1UsersDestroyWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/v1/users/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [int] page:
  ///   A page number within the paginated result set.
  ///
  /// * [String] search:
  ///   A search term.
  Future<Response> apiV1UsersListWithHttpInfo({ String? ordering, int? page, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (ordering != null) {
      queryParams.addAll(_queryParams('', 'ordering', ordering));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }

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

  /// Parameters:
  ///
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [int] page:
  ///   A page number within the paginated result set.
  ///
  /// * [String] search:
  ///   A search term.
  Future<PaginatedUserList?> apiV1UsersList({ String? ordering, int? page, String? search, }) async {
    final response = await apiV1UsersListWithHttpInfo( ordering: ordering, page: page, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedUserList',) as PaginatedUserList;
    
    }
    return null;
  }

  /// Get current authenticated user information
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> apiV1UsersMeRetrieveWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/me/';

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

  /// Get current authenticated user information
  Future<User?> apiV1UsersMeRetrieve() async {
    final response = await apiV1UsersMeRetrieveWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'User',) as User;
    
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /api/v1/users/{user_id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   A UUID string identifying this user.
  ///
  /// * [PatchedUser] patchedUser:
  Future<Response> apiV1UsersPartialUpdateWithHttpInfo(String userId, { PatchedUser? patchedUser, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/{user_id}/'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = patchedUser;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   A UUID string identifying this user.
  ///
  /// * [PatchedUser] patchedUser:
  Future<User?> apiV1UsersPartialUpdate(String userId, { PatchedUser? patchedUser, }) async {
    final response = await apiV1UsersPartialUpdateWithHttpInfo(userId,  patchedUser: patchedUser, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'User',) as User;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/v1/users/{user_id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   A UUID string identifying this user.
  Future<Response> apiV1UsersRetrieveWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/{user_id}/'
      .replaceAll('{user_id}', userId);

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

  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   A UUID string identifying this user.
  Future<User?> apiV1UsersRetrieve(String userId,) async {
    final response = await apiV1UsersRetrieveWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'User',) as User;
    
    }
    return null;
  }

  /// Performs an HTTP 'PUT /api/v1/users/{user_id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   A UUID string identifying this user.
  ///
  /// * [User] user (required):
  Future<Response> apiV1UsersUpdateWithHttpInfo(String userId, User user,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/{user_id}/'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = user;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   A UUID string identifying this user.
  ///
  /// * [User] user (required):
  Future<User?> apiV1UsersUpdate(String userId, User user,) async {
    final response = await apiV1UsersUpdateWithHttpInfo(userId, user,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'User',) as User;
    
    }
    return null;
  }

  /// Check if kiosk needs database update
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] kioskId (required):
  ///
  /// * [String] lastSyncHash:
  ///   Last content hash from kiosk
  Future<Response> kioskCheckUpdatesWithHttpInfo(String kioskId, { String? lastSyncHash, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/kiosks/{kiosk_id}/check-updates/'
      .replaceAll('{kiosk_id}', kioskId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (lastSyncHash != null) {
      queryParams.addAll(_queryParams('', 'last_sync_hash', lastSyncHash));
    }

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

  /// Check if kiosk needs database update
  ///
  /// Parameters:
  ///
  /// * [String] kioskId (required):
  ///
  /// * [String] lastSyncHash:
  ///   Last content hash from kiosk
  Future<CheckUpdatesResponse?> kioskCheckUpdates(String kioskId, { String? lastSyncHash, }) async {
    final response = await kioskCheckUpdatesWithHttpInfo(kioskId,  lastSyncHash: lastSyncHash, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CheckUpdatesResponse',) as CheckUpdatesResponse;
    
    }
    return null;
  }

  /// Download kiosk database snapshot (binary SQLite file). Returns raw binary data with x-snapshot-checksum header for verification.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] kioskId (required):
  Future<Response> kioskDownloadSnapshotWithHttpInfo(String kioskId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/kiosks/{kiosk_id}/snapshot/'
      .replaceAll('{kiosk_id}', kioskId);

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

  /// Download kiosk database snapshot (binary SQLite file). Returns raw binary data with x-snapshot-checksum header for verification.
  ///
  /// Parameters:
  ///
  /// * [String] kioskId (required):
  Future<MultipartFile?> kioskDownloadSnapshot(String kioskId,) async {
    final response = await kioskDownloadSnapshotWithHttpInfo(kioskId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Get current authenticated kiosk details including bus assignment
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> kioskGetMeWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/kiosks/me/';

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

  /// Get current authenticated kiosk details including bus assignment
  Future<Kiosk?> kioskGetMe() async {
    final response = await kioskGetMeWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Kiosk',) as Kiosk;
    
    }
    return null;
  }

  /// Report kiosk health and sync status
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] kioskId (required):
  ///
  /// * [Heartbeat] heartbeat (required):
  Future<Response> kioskHeartbeatWithHttpInfo(String kioskId, Heartbeat heartbeat,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/kiosks/{kiosk_id}/heartbeat/'
      .replaceAll('{kiosk_id}', kioskId);

    // ignore: prefer_final_locals
    Object? postBody = heartbeat;

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

  /// Report kiosk health and sync status
  ///
  /// Parameters:
  ///
  /// * [String] kioskId (required):
  ///
  /// * [Heartbeat] heartbeat (required):
  Future<void> kioskHeartbeat(String kioskId, Heartbeat heartbeat,) async {
    final response = await kioskHeartbeatWithHttpInfo(kioskId, heartbeat,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Kiosk logging endpoint for device log submission
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DeviceLog] deviceLog (required):
  Future<Response> kioskLogWithHttpInfo(DeviceLog deviceLog,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/kiosks/logs/';

    // ignore: prefer_final_locals
    Object? postBody = deviceLog;

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

  /// Kiosk logging endpoint for device log submission
  ///
  /// Parameters:
  ///
  /// * [DeviceLog] deviceLog (required):
  Future<KioskLog200Response?> kioskLog(DeviceLog deviceLog,) async {
    final response = await kioskLogWithHttpInfo(deviceLog,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'KioskLog200Response',) as KioskLog200Response;
    
    }
    return null;
  }

  /// Update bus GPS location. Kiosk sends location when bus moves significantly or every 2 minutes.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] kioskId (required):
  ///
  /// * [BusLocation] busLocation (required):
  Future<Response> kioskUpdateLocationWithHttpInfo(String kioskId, BusLocation busLocation,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/kiosks/{kiosk_id}/location/'
      .replaceAll('{kiosk_id}', kioskId);

    // ignore: prefer_final_locals
    Object? postBody = busLocation;

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

  /// Update bus GPS location. Kiosk sends location when bus moves significantly or every 2 minutes.
  ///
  /// Parameters:
  ///
  /// * [String] kioskId (required):
  ///
  /// * [BusLocation] busLocation (required):
  Future<BusLocation?> kioskUpdateLocation(String kioskId, BusLocation busLocation,) async {
    final response = await kioskUpdateLocationWithHttpInfo(kioskId, busLocation,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BusLocation',) as BusLocation;
    
    }
    return null;
  }
}
