import 'package:movies_app/features/home/domain/entity/genre_model.dart';

class MovieDetailEntity {
  bool? adult;
  String? backdropPath;
  int? budget;
  GenresEntity? genreEntity;
  String? homepage;
  int? id;
  String? imdbId;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? posterPath;

  MovieDetailEntity({
    required this.adult,
    required this.backdropPath,
    required this.budget,
    required this.genreEntity,
    required this.homepage,
    required this.id,
    required this.imdbId,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
  });
}
