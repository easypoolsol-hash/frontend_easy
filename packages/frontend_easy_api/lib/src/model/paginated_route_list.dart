//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:frontend_easy_api/src/model/route.dart';
import 'package:json_annotation/json_annotation.dart';

part 'paginated_route_list.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PaginatedRouteList {
  /// Returns a new [PaginatedRouteList] instance.
  PaginatedRouteList({

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


  final List<Route> results;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PaginatedRouteList &&
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

  factory PaginatedRouteList.fromJson(Map<String, dynamic> json) => _$PaginatedRouteListFromJson(json);

  Map<String, dynamic> toJson() => _$PaginatedRouteListToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}
