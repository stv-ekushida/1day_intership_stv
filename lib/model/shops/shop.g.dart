// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Shop _$ShopFromJson(Map<String, dynamic> json) {
  return Shop(
    open: json['open'] as String,
    access: json['access'] as String,
    address: json['address'] as String,
    name: json['name'] as String,
    genre: Genre.fromJson(json['genre'] as Map<String, dynamic>),
    photo: Photo.fromJson(json['photo'] as Map<String, dynamic>),
    budget: Budget.fromJson(json['budget'] as Map<String, dynamic>),
    urls: Urls.fromJson(json['urls'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ShopToJson(Shop instance) => <String, dynamic>{
      'name': instance.name,
      'open': instance.open,
      'access': instance.access,
      'address': instance.address,
      'genre': instance.genre,
      'photo': instance.photo,
      'budget': instance.budget,
      'urls': instance.urls,
    };
