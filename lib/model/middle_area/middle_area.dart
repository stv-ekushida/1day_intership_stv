import 'package:json_annotation/json_annotation.dart';

part 'middle_area.g.dart';

@JsonSerializable()
class MiddleArea {
  final String code;
  final String name;

  const MiddleArea({required this.code, required this.name});

  factory MiddleArea.fromJson(Map<String, dynamic> json) =>
      _$MiddleAreaFromJson(json);
  Map<String, dynamic> toJson() => _$MiddleAreaToJson(this);
}
