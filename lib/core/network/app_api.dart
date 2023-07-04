import 'package:dio/dio.dart';
import 'package:movies_app/config/constants.dart';
import 'package:retrofit/http.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class AppApi {
  factory AppApi(
    Dio dio, {
    String baseUrl,
  }) = _AppApi;
}
