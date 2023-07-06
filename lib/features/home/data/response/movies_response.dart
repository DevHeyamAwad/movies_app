import 'package:json_annotation/json_annotation.dart';
import 'package:movies_app/features/home/data/response/results_response.dart';

import '../../../../config/Constants.dart';
part 'movies_response.g.dart';

@JsonSerializable()
class MoviesResponse {
  @JsonKey(name: ApiConstants.page)
  int? page;
  @JsonKey(name: ApiConstants.totalPages)
  int? totalPages;
  @JsonKey(name: ApiConstants.totalResults)
  int? totalResults;
  @JsonKey(name: ApiConstants.resultsResponse)
  ResultsResponse? resultsResponse;
  MoviesResponse({
    required this.page,
    required this.totalPages,
    required this.totalResults,
    required this.resultsResponse,
  });
  factory MoviesResponse.fromJson(Map<String, dynamic> json) =>
      _$MoviesResponseFromJson(json);
  Map<String, dynamic> toJson() => _$MoviesResponseToJson(this);
}
