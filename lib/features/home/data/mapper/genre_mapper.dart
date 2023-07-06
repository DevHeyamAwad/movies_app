import 'package:movies_app/core/extensions/extensions.dart';
import 'package:movies_app/features/home/data/response/genre_response.dart';
import 'package:movies_app/features/home/domain/entity/genre_model.dart';

extension GenresMapper on GenresResponse {
  GenresEntity toDomain() {
    return GenresEntity(
      id: id.onNull(),
      name: name.onNull(),
    );
  }
}
