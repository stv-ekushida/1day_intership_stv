import 'package:json_annotation/json_annotation.dart';

import 'mobile.dart';

part 'photo.g.dart';

@JsonSerializable()
class Photo {
  final Mobile mobile;

  const Photo({required this.mobile});

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
  Map<String, dynamic> toJson() => _$PhotoToJson(this);
}
