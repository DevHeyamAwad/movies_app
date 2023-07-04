import 'package:json_annotation/json_annotation.dart';
import 'package:movies_app/config/constants.dart';
import 'package:movies_app/features/home/data/response/genre_response.dart';
part 'movie_response.g.dart';

@JsonSerializable()
class MovieDetailResponse {
  @JsonKey(name: Constants.adult)
  bool? adult;
  @JsonKey(name: Constants.backdropPath)
  String? backdropPath;
  @JsonKey(name: Constants.budget)
  int? budget;
  @JsonKey(name: Constants.genres)
  GenresResponse? genresResponse;
  @JsonKey(name: Constants.homepage)
  String? homepage;
  @JsonKey(name: Constants.id)
  int? id;
  @JsonKey(name: Constants.imdbId)
  String? imdbId;
  @JsonKey(name: Constants.originalLanguage)
  String? originalLanguage;
  @JsonKey(name: Constants.originalTitle)
  String? originalTitle;
  @JsonKey(name: Constants.overview)
  String? overview;
  @JsonKey(name: Constants.popularity)
  double? popularity;
  @JsonKey(name: Constants.posterPath)
  String? posterPath;

  MovieDetailResponse({
    required this.adult,
    required this.backdropPath,
    required this.budget,
    required this.genresResponse,
    required this.homepage,
    required this.id,
    required this.imdbId,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
  });

  factory MovieDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailResponseFromJson(json);
  Map<String, dynamic> toJson() => _$MovieDetailResponseToJson(this);
}
