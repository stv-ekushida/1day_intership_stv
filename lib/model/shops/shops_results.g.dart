// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shops_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShopsResults _$ShopsResultsFromJson(Map<String, dynamic> json) {
  return ShopsResults(
    shop: (json['shop'] as List<dynamic>)
        .map((e) => Shop.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ShopsResultsToJson(ShopsResults instance) =>
    <String, dynamic>{
      'shop': instance.shop,
    };
