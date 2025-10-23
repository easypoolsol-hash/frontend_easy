//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:frontend_easy_api/src/model/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'paginated_user_list.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PaginatedUserList {
  /// Returns a new [PaginatedUserList] instance.
  PaginatedUserList({

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


  final List<User> results;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PaginatedUserList &&
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

  factory PaginatedUserList.fromJson(Map<String, dynamic> json) => _$PaginatedUserListFromJson(json);

  Map<String, dynamic> toJson() => _$PaginatedUserListToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}
