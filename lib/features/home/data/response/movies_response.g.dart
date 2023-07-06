// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoviesResponse _$MoviesResponseFromJson(Map<String, dynamic> json) =>
    MoviesResponse(
      page: json['page'] as int?,
      totalPages: json['totalPages'] as int?,
      totalResults: json['totalResults'] as int?,
      resultsResponse: json['resultsResponse'] == null
          ? null
          : ResultsResponse.fromJson(
              json['resultsResponse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MoviesResponseToJson(MoviesResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'totalPages': instance.totalPages,
      'totalResults': instance.totalResults,
      'resultsResponse': instance.resultsResponse,
    };
