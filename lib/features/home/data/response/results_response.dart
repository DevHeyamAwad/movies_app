import 'package:json_annotation/json_annotation.dart';

import '../../../../config/constants.dart';
part 'results_response.g.dart';

@JsonSerializable()
class ResultsResponse {
  @JsonKey(name: Constants.resultsAdult)
  bool? adult;
  @JsonKey(name: Constants.resultsBackdropPath)
  String? backdropPath;
  @JsonKey(name: Constants.genreIds)
  List<int>? genreIds;
  @JsonKey(name: Constants.resultsId)
  int? id;
  @JsonKey(name: Constants.resultsOriginalLanguage)
  String? originalLanguage;
  @JsonKey(name: Constants.resultsOriginalTitle)
  String? originalTitle;
  @JsonKey(name: Constants.resultsOverview)
  String? overview;
  @JsonKey(name: Constants.resultspopularity)
  double? popularity;
  @JsonKey(name: Constants.resultsposterPath)
  String? posterPath;
  @JsonKey(name: Constants.resultsreleaseDate)
  String? releaseDate;
  @JsonKey(name: Constants.resultsTitle)
  String? title;
  @JsonKey(name: Constants.resultsVideo)
  bool? video;
  @JsonKey(name: Constants.resultsVoteAverage)
  double? voteAverage;
  @JsonKey(name: Constants.resultsVoteCount)
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
