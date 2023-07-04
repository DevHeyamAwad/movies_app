import 'package:json_annotation/json_annotation.dart';

import '../../../../config/constants.dart';
part 'movies_response.g.dart';

@JsonSerializable()
class MoviesResponse {
  @JsonKey(name: Constants.page)
  int? page;
  @JsonKey(name: Constants.totalPages)
  int? totalPages;
  @JsonKey(name: Constants.totalResults)
  int? totalResults;
  MoviesResponse({
    required this.page,
    required this.totalPages,
    required this.totalResults,
  });
  factory MoviesResponse.fromJson(Map<String, dynamic> json) =>
      _$MoviesResponseFromJson(json);
  Map<String, dynamic> toJson() => _$MoviesResponseToJson(this);
}
