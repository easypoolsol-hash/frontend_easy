//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'bus_locations_geo_json_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BusLocationsGeoJSONResponse {
  /// Returns a new [BusLocationsGeoJSONResponse] instance.
  BusLocationsGeoJSONResponse({

     this.type = 'FeatureCollection',

    required  this.features,
  });

  @JsonKey(
    defaultValue: 'FeatureCollection',
    name: r'type',
    required: false,
    includeIfNull: false,
  )


  final String? type;



      /// GeoJSON features array
  @JsonKey(
    
    name: r'features',
    required: true,
    includeIfNull: false,
  )


  final List<Map<String, Object>> features;





    @override
    bool operator ==(Object other) => identical(this, other) || other is BusLocationsGeoJSONResponse &&
      other.type == type &&
      other.features == features;

    @override
    int get hashCode =>
        type.hashCode +
        features.hashCode;

  factory BusLocationsGeoJSONResponse.fromJson(Map<String, dynamic> json) => _$BusLocationsGeoJSONResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BusLocationsGeoJSONResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

