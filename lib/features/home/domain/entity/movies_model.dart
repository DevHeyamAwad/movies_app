import 'package:movies_app/features/home/domain/entity/results_model.dart';

class MoviesModel {
  int? page;
  int? totalPages;
  int? totalResults;
  ResultsEntity? resultsEntity;
  MoviesModel({
    required this.page,
    required this.totalPages,
    required this.totalResults,
    required this.resultsEntity,
  });
}
