import 'package:json_annotation/json_annotation.dart';

part 'mobile.g.dart';

@JsonSerializable()
class Mobile {
  final String l;

  const Mobile({required this.l});

  factory Mobile.fromJson(Map<String, dynamic> json) => _$MobileFromJson(json);
  Map<String, dynamic> toJson() => _$MobileToJson(this);
}
