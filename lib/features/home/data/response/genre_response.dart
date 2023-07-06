import 'package:json_annotation/json_annotation.dart';

import '../../../../config/constants.dart';
part 'genre_response.g.dart';

@JsonSerializable()
class GenresResponse {
  @JsonKey(name: ApiConstants.genresId)
  int? id;
  @JsonKey(name: ApiConstants.genresName)
  String? name;

  GenresResponse({
    required this.id,
    required this.name,
  });
  factory GenresResponse.fromJson(Map<String, dynamic> json) =>
      _$GenresResponseFromJson(json);
  Map<String, dynamic> toJson() => _$GenresResponseToJson(this);
}
