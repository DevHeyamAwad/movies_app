import 'package:movies_app/core/extensions/extensions.dart';
import 'package:movies_app/features/home/data/response/results_response.dart';
import 'package:movies_app/features/home/domain/entity/results_model.dart';

extension ResultsMapper on ResultsResponse {
  ResultsEntity toDomain() {
    return ResultsEntity(
      adult: adult.onNull(),
      backdropPath: backdropPath.onNull(),
      genreIds: genreIds.onNull(),
      id: id.onNull(),
      originalLanguage: originalLanguage.onNull(),
      originalTitle: originalTitle.onNull(),
      overview: overview.onNull(),
      popularity: popularity.onNull(),
      posterPath: posterPath.onNull(),
      releaseDate: releaseDate.onNull(),
      title: title.onNull(),
      video: video.onNull(),
      voteAverage: voteAverage.onNull(),
      voteCount: voteCount.onNull(),
    );
  }
}
