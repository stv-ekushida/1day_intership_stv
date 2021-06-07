import 'package:chopper/chopper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_stv_1day_intership/model/middle_area/middle_area.dart';
import 'package:flutter_stv_1day_intership/model/middle_area/middle_area_response.dart';
import 'package:flutter_stv_1day_intership/service/api/api_service.dart';

/// ミドルエリアのリストを監視するプロバイダー
final middleAreaFutureProvider = FutureProvider.autoDispose
    .family<List<MiddleArea>, String>((ref, largeArea) =>
        MiddleAreaRepository.instance.middleAreas(largeArea: largeArea));

class MiddleAreaRepository {
  MiddleAreaRepository._();

  static final instance = MiddleAreaRepository._();

  final ApiService _apiService = ApiService.create();

  /// ミドルエリアを取得する
  Future<List<MiddleArea>> middleAreas({required String largeArea}) async {
    Response _response;

    try {
      _response = await _apiService.middleArea(
        largeArea: largeArea,
        key: ApiService.apiKey,
      );

      if (_response.isSuccessful) {
        // API OK (Status Code = 200)
        return MiddleAreaResponse.fromJson(_response.body).results.middleArea;
      } else {
        // API NG (Status Code 200以外 => _response.statusCode）
        return Future.value([]);
      }
    } on Exception catch (e) {
      throw e;
    }
  }
}
