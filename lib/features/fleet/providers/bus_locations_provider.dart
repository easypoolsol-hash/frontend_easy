import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:frontend_easy/shared/services/api_service.dart';

/// Provider for fetching bus locations from the school dashboard API
/// Returns GeoJSON features directly (no model to avoid drift)
final busLocationsProvider = FutureProvider<List<Map<String, dynamic>>>((ref) async {
  try {
    // Use direct HTTP call since this endpoint is not in the generated API client
    final apiService = ApiService();
    final client = apiService.client;

    // Make authenticated request to school dashboard bus locations endpoint
    final response = await client.invokeAPI(
      '/school/api/bus-locations/',
      'GET',
      [], // queryParams
      null, // body
      {}, // headerParams
      {}, // formParams
      'application/json', // contentType
    );

    if (response.statusCode == 200) {
      final data = response.body;
      // Parse JSON response
      final jsonData = client.deserialize(data, 'Map<String, dynamic>') as Map<String, dynamic>;
      final features = jsonData['features'] as List<dynamic>;

      return features.map((feature) => feature as Map<String, dynamic>).toList();
    } else {
      // Return empty list on error to keep app functional
      return [];
    }
  } catch (e) {
    // Return empty list on error to keep app functional
    return [];
  }
});
