import 'package:json_annotation/json_annotation.dart';
part 'genre_response.g.dart';

@JsonSerializable()
class GenresResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;

  GenresResponse({
    required this.id,
    required this.name,
  });
  factory GenresResponse.fromJson(Map<String, dynamic> json) =>
      _$GenresResponseFromJson(json);
  Map<String, dynamic> toJson() => _$GenresResponseToJson(this);
}
