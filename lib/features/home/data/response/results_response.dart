import 'package:json_annotation/json_annotation.dart';

import '../../../../config/Constants.dart';
part 'results_response.g.dart';

@JsonSerializable()
class ResultsResponse {
  @JsonKey(name: ApiConstants.resultsAdult)
  bool? adult;
  @JsonKey(name: ApiConstants.resultsBackdropPath)
  String? backdropPath;
  @JsonKey(name: ApiConstants.genreIds)
  List<int>? genreIds;
  @JsonKey(name: ApiConstants.resultsId)
  int? id;
  @JsonKey(name: ApiConstants.resultsOriginalLanguage)
  String? originalLanguage;
  @JsonKey(name: ApiConstants.resultsOriginalTitle)
  String? originalTitle;
  @JsonKey(name: ApiConstants.resultsOverview)
  String? overview;
  @JsonKey(name: ApiConstants.resultspopularity)
  double? popularity;
  @JsonKey(name: ApiConstants.resultsposterPath)
  String? posterPath;
  @JsonKey(name: ApiConstants.resultsreleaseDate)
  String? releaseDate;
  @JsonKey(name: ApiConstants.resultsTitle)
  String? title;
  @JsonKey(name: ApiConstants.resultsVideo)
  bool? video;
  @JsonKey(name: ApiConstants.resultsVoteAverage)
  double? voteAverage;
  @JsonKey(name: ApiConstants.resultsVoteCount)
  int? voteCount;
  ResultsResponse({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  factory ResultsResponse.fromJson(Map<String, dynamic> json) =>
      _$ResultsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ResultsResponseToJson(this);
}
