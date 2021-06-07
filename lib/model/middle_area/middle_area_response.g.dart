// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'middle_area_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MiddleAreaResponse _$MiddleAreaResponseFromJson(Map<String, dynamic> json) {
  return MiddleAreaResponse(
    results:
        MiddleAreaResults.fromJson(json['results'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MiddleAreaResponseToJson(MiddleAreaResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
