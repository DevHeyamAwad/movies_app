// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDetailResponse _$MovieDetailResponseFromJson(Map<String, dynamic> json) =>
    MovieDetailResponse(
      adult: json['adult'] as bool?,
      backdropPath: json['backdropPath'] as String?,
      budget: json['budget'] as int?,
      genresResponse: json['genresResponse'] == null
          ? null
          : GenresResponse.fromJson(
              json['genresResponse'] as Map<String, dynamic>),
      homepage: json['homepage'] as String?,
      id: json['id'] as int?,
      imdbId: json['imdbId'] as String?,
      originalLanguage: json['originalLanguage'] as String?,
      originalTitle: json['originalTitle'] as String?,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      posterPath: json['posterPath'] as String?,
    );

Map<String, dynamic> _$MovieDetailResponseToJson(
        MovieDetailResponse instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdropPath': instance.backdropPath,
      'budget': instance.budget,
      'genresResponse': instance.genresResponse,
      'homepage': instance.homepage,
      'id': instance.id,
      'imdbId': instance.imdbId,
      'originalLanguage': instance.originalLanguage,
      'originalTitle': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'posterPath': instance.posterPath,
    };
