import 'package:movies_app/core/extensions/extensions.dart';
import 'package:movies_app/features/home/data/mapper/results_mapper.dart';
import 'package:movies_app/features/home/data/response/movies_response.dart';
import 'package:movies_app/features/home/domain/entity/movies_model.dart';

extension MoviesMapper on MoviesResponse {
  MoviesModel toDomain() {
    return MoviesModel(
      page: page.onNull(),
      totalPages: totalPages.onNull(),
      totalResults: totalResults.onNull(),
      resultsEntity: resultsResponse!.toDomain(),
    );
  }
}
