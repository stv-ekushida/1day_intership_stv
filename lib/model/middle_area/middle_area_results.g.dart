// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'middle_area_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MiddleAreaResults _$MiddleAreaResultsFromJson(Map<String, dynamic> json) {
  return MiddleAreaResults(
    middleArea: (json['middle_area'] as List<dynamic>)
        .map((e) => MiddleArea.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$MiddleAreaResultsToJson(MiddleAreaResults instance) =>
    <String, dynamic>{
      'middle_area': instance.middleArea,
    };
