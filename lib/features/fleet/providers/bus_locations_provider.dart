import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy/shared/services/api_service.dart';

final busLocationsProvider = FutureProvider<List<Map<String, dynamic>>>((ref) async {
  try {
    final client = ApiService().client;
    final response = await client.dio.get('/school/api/bus-locations/');
    
    if (response.statusCode == 200) {
      final jsonData = response.data as Map<String, dynamic>;
      final features = jsonData['features'] as List<dynamic>;
      return features.map((f) => f as Map<String, dynamic>).toList();
    }
    return [];
  } catch (e) {
    return [];
  }
});
