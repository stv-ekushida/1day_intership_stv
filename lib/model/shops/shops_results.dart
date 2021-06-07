import 'package:json_annotation/json_annotation.dart';

import 'shop.dart';

part 'shops_results.g.dart';

@JsonSerializable()
class ShopsResults {
  final List<Shop> shop;

  const ShopsResults({required this.shop});

  factory ShopsResults.fromJson(Map<String, dynamic> json) =>
      _$ShopsResultsFromJson(json);
  Map<String, dynamic> toJson() => _$ShopsResultsToJson(this);
}
