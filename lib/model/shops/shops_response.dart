import 'package:flutter_stv_1day_intership/model/shops/shops_results.dart';
import 'package:json_annotation/json_annotation.dart';

part 'shops_response.g.dart';

@JsonSerializable()
class ShopsResponse {
  final ShopsResults results;

  const ShopsResponse({required this.results});

  factory ShopsResponse.fromJson(Map<String, dynamic> json) =>
      _$ShopsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ShopsResponseToJson(this);
}
