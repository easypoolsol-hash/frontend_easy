//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'parent_bus_locations_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ParentBusLocationsResponse {
  /// Returns a new [ParentBusLocationsResponse] instance.
  ParentBusLocationsResponse({

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
    bool operator ==(Object other) => identical(this, other) || other is ParentBusLocationsResponse &&
      other.type == type &&
      other.features == features;

    @override
    int get hashCode =>
        type.hashCode +
        features.hashCode;

  factory ParentBusLocationsResponse.fromJson(Map<String, dynamic> json) => _$ParentBusLocationsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ParentBusLocationsResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

