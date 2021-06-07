import 'package:json_annotation/json_annotation.dart';

import 'middle_area.dart';

part 'middle_area_results.g.dart';

@JsonSerializable()
class MiddleAreaResults {
  @JsonKey(name: 'middle_area')
  final List<MiddleArea> middleArea;

  const MiddleAreaResults({required this.middleArea});

  factory MiddleAreaResults.fromJson(Map<String, dynamic> json) =>
      _$MiddleAreaResultsFromJson(json);

  Map<String, dynamic> toJson() => _$MiddleAreaResultsToJson(this);
}
