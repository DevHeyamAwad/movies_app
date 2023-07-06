import 'package:json_annotation/json_annotation.dart';
import 'package:movies_app/config/Constants.dart';
import 'package:movies_app/features/home/data/response/genre_response.dart';
part 'movie_response.g.dart';

@JsonSerializable()
class MovieDetailResponse {
  @JsonKey(name: ApiConstants.adult)
  bool? adult;
  @JsonKey(name: ApiConstants.backdropPath)
  String? backdropPath;
  @JsonKey(name: ApiConstants.budget)
  int? budget;
  @JsonKey(name: ApiConstants.genres)
  GenresResponse? genresResponse;
  @JsonKey(name: ApiConstants.homepage)
  String? homepage;
  @JsonKey(name: ApiConstants.id)
  int? id;
  @JsonKey(name: ApiConstants.imdbId)
  String? imdbId;
  @JsonKey(name: ApiConstants.originalLanguage)
  String? originalLanguage;
  @JsonKey(name: ApiConstants.originalTitle)
  String? originalTitle;
  @JsonKey(name: ApiConstants.overview)
  String? overview;
  @JsonKey(name: ApiConstants.popularity)
  double? popularity;
  @JsonKey(name: ApiConstants.posterPath)
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
