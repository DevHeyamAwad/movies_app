import 'package:movies_app/core/network/app_api.dart';
import 'package:movies_app/features/home/data/request/genres_request.dart';
import 'package:movies_app/features/home/data/response/genre_response.dart';

abstract class RemoteGenresDataSource {
  Future<GenresResponse> genres(
    GenresRequest genresRequest,
  );
}

class RemoteGenresDataSourceImplementation extends RemoteGenresDataSource {
  final AppApi _appApi;
  RemoteGenresDataSourceImplementation(this._appApi);

  @override
  Future<GenresResponse> genres(GenresRequest genresRequest) async {
    return await _appApi.genre(
      genresRequest.apiKey,
      genresRequest.language,
    );
  }
}
