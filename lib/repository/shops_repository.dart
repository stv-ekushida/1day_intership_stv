import 'package:chopper/chopper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_stv_1day_intership/model/shops/shop.dart';
import 'package:flutter_stv_1day_intership/model/shops/shops_response.dart';
import 'package:flutter_stv_1day_intership/service/api/api_service.dart';

final shopsFutureProvider = FutureProvider.autoDispose
    .family<List<Shop>, String>(
        (ref, middleArea) => ShopsRepository.shops(middleArea: middleArea));

class ShopsRepository {
  static Future<List<Shop>> shops({required String middleArea}) async {
    final ApiService _apiService = ApiService.create();
    Response _response;

    try {
      _response = await _apiService.shops(
        middleArea: middleArea,
        key: ApiService.apiKey,
      );

      if (_response.isSuccessful) {
        return ShopsResponse.fromJson(_response.body).results.shop;
      } else {
        throw Exception('Shops API Parse Failure');
      }
    } on Exception catch (e) {
      throw e;
    }
  }
}
