import 'package:movies_app/core/extensions/extensions.dart';
import 'package:movies_app/features/home/data/mapper/genre_mapper.dart';
import 'package:movies_app/features/home/data/response/movie_response.dart';
import 'package:movies_app/features/home/domain/entity/movie_model.dart';

extension MovieDetailMapper on MovieDetailResponse {
  MovieDetailEntity toDomain() {
    return MovieDetailEntity(
      adult: adult.onNull(),
      backdropPath: backdropPath.onNull(),
      budget: budget.onNull(),
      genreEntity: genresResponse!.toDomain(),
      homepage: homepage.onNull(),
      id: id.onNull(),
      imdbId: imdbId.onNull(),
      originalLanguage: originalLanguage.onNull(),
      originalTitle: originalTitle.onNull(),
      overview: overview.onNull(),
      popularity: popularity.onNull(),
      posterPath: posterPath.onNull(),
    );
  }
}
