import 'package:dio/dio.dart';
import 'package:movies_app/config/constants.dart';
import 'package:movies_app/config/request_constants.dart';
import 'package:movies_app/features/home/data/response/genre_response.dart';
import 'package:retrofit/http.dart';
import '../../features/home/data/response/movie_response.dart';
import '../../features/home/data/response/movies_response.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class AppApi {
  factory AppApi(
    Dio dio, {
    String baseUrl,
  }) = _AppApi;

  @GET(RequestConstants.getGenres)
  Future<GenresResponse> genre(
    @Query('api_key') apiKey,
    @Query('language') language,
  );
  @GET(RequestConstants.getMovieDetail)
  Future<MovieDetailResponse> movieDetail();
  @GET(RequestConstants.getMovies)
  Future<MoviesResponse> movies();
}
