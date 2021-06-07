// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shops_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShopsResponse _$ShopsResponseFromJson(Map<String, dynamic> json) {
  return ShopsResponse(
    results: ShopsResults.fromJson(json['results'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ShopsResponseToJson(ShopsResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
