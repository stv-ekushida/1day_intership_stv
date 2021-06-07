import 'package:json_annotation/json_annotation.dart';

import 'budget.dart';
import 'genre.dart';
import 'photo.dart';
import 'urls.dart';

part 'shop.g.dart';

@JsonSerializable()
class Shop {
  final String name;
  final String open;
  final String access;
  final String address;
  final Genre genre;
  final Photo photo;
  final Budget budget;
  final Urls urls;

  const Shop({
    required this.open,
    required this.access,
    required this.address,
    required this.name,
    required this.genre,
    required this.photo,
    required this.budget,
    required this.urls,
  });

  factory Shop.fromJson(Map<String, dynamic> json) => _$ShopFromJson(json);
  Map<String, dynamic> toJson() => _$ShopToJson(this);
}
