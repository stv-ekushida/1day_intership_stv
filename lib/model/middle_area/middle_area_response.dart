import 'package:flutter_stv_1day_intership/model/middle_area/middle_area_results.dart';
import 'package:json_annotation/json_annotation.dart';

part 'middle_area_response.g.dart';

@JsonSerializable()
class MiddleAreaResponse {
  final MiddleAreaResults results;

  const MiddleAreaResponse({required this.results});

  factory MiddleAreaResponse.fromJson(Map<String, dynamic> json) =>
      _$MiddleAreaResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MiddleAreaResponseToJson(this);
}
