//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'token_refresh_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TokenRefreshResponse {
  /// Returns a new [TokenRefreshResponse] instance.
  TokenRefreshResponse({

    required  this.access,

    required  this.refresh,
  });

      /// New access token (valid for 15 minutes)
  @JsonKey(
    
    name: r'access',
    required: true,
    includeIfNull: false,
  )


  final String access;



      /// New refresh token (valid for 60 days). Old refresh token is now blacklisted.
  @JsonKey(
    
    name: r'refresh',
    required: true,
    includeIfNull: false,
  )


  final String refresh;





    @override
    bool operator ==(Object other) => identical(this, other) || other is TokenRefreshResponse &&
      other.access == access &&
      other.refresh == refresh;

    @override
    int get hashCode =>
        access.hashCode +
        refresh.hashCode;

  factory TokenRefreshResponse.fromJson(Map<String, dynamic> json) => _$TokenRefreshResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TokenRefreshResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

