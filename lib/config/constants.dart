import 'package:flutter/material.dart';

class Constants {
  static const String kLinkeProject = '';
  static const double deviceWidth = 375;
  static const double deviceHeight = 812;
  static const int splashDuration = 3;
  static const double elevationAppBar = 0;
  static const int outBoardingDurationTime = 1;
  static const double elevationButton = 0;
  static const int sliderItems = 3;
  static const double paddingIconAppBar = 16;
  static const double mainViewportFraction = 0.85;
  static const double catViewportFraction = 0.4;
  static const double popViewportFraction = 0.4;
  static const int maxLines = 2;
  static const Offset offset = Offset(
    0,
    4,
  );
  static const double catBlurRadius = 8;
  static const Offset mainOffset = Offset(
    0,
    4,
  );
  static const double mainBlurRadius = 3;
}

class ApiConstants {
  static const String baseUrl = 'https://api.themoviedb.org/3/';
  static const int sendTimeOutDuration = 120;
  static const int reciveTimeOutDuration = 120;
  static const String adult = 'adult';
  static const String backdropPath = 'backdrop_path';
  static const String budget = 'budget';
  static const String genres = 'genres';
  static const String homepage = 'homepage';
  static const String id = 'id';
  static const String imdbId = 'imdb_id';
  static const String originalLanguage = 'original_language';
  static const String originalTitle = 'original_title';
  static const String overview = 'overview';
  static const String popularity = 'popularity';
  static const String posterPath = 'poster_path';
  static const String page = 'page';
  static const String resultsAdult = 'adult';
  static const String resultsBackdropPath = 'backdrop_path';
  static const String genreIds = 'genre_ids';
  static const String resultsId = 'id';
  static const String resultsOriginalLanguage = 'original_language';
  static const String resultsOriginalTitle = 'original_title';
  static const String resultsOverview = 'overview';
  static const String resultspopularity = 'popularity';
  static const String resultsposterPath = 'poster_path';
  static const String resultsreleaseDate = 'release_date';
  static const String resultsTitle = 'title';
  static const String resultsVideo = 'video';
  static const String resultsVoteAverage = 'vote_average';
  static const String resultsVoteCount = 'vote_count';
  static const String totalPages = 'total_pages';
  static const String totalResults = 'total_results';
  static const String genresId = 'id';
  static const String genresName = 'name';
  static const String resultsResponse = 'results';
}

class ConstantsPrefsKeys {
  static const String outBoardingViewedKey = 'out_boarding_viewed';
}
