//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:frontend_easy_api/src/model/api_key.dart';
import 'package:json_annotation/json_annotation.dart';

part 'paginated_api_key_list.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PaginatedAPIKeyList {
  /// Returns a new [PaginatedAPIKeyList] instance.
  PaginatedAPIKeyList({

    required  this.count,

     this.next,

     this.previous,

    required  this.results,
  });

  @JsonKey(

    name: r'count',
    required: true,
    includeIfNull: false,
  )


  final int count;



  @JsonKey(

    name: r'next',
    required: false,
    includeIfNull: false,
  )


  final String? next;



  @JsonKey(

    name: r'previous',
    required: false,
    includeIfNull: false,
  )


  final String? previous;



  @JsonKey(

    name: r'results',
    required: true,
    includeIfNull: false,
  )


  final List<APIKey> results;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PaginatedAPIKeyList &&
      other.count == count &&
      other.next == next &&
      other.previous == previous &&
      other.results == results;

    @override
    int get hashCode =>
        count.hashCode +
        (next == null ? 0 : next.hashCode) +
        (previous == null ? 0 : previous.hashCode) +
        results.hashCode;

  factory PaginatedAPIKeyList.fromJson(Map<String, dynamic> json) => _$PaginatedAPIKeyListFromJson(json);

  Map<String, dynamic> toJson() => _$PaginatedAPIKeyListToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}
