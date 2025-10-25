//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'kiosk_log200_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class KioskLog200Response {
  /// Returns a new [KioskLog200Response] instance.
  KioskLog200Response({

     this.status,
  });

  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false,
  )


  final String? status;





    @override
    bool operator ==(Object other) => identical(this, other) || other is KioskLog200Response &&
      other.status == status;

    @override
    int get hashCode =>
        status.hashCode;

  factory KioskLog200Response.fromJson(Map<String, dynamic> json) => _$KioskLog200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$KioskLog200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

