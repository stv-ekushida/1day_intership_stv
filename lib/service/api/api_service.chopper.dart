// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ApiService extends ApiService {
  _$ApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ApiService;

  @override
  Future<Response<dynamic>> shops(
      {String? key, String apiKey = 'json', String? middleArea}) {
    final $url = '/gourmet/v1';
    final $params = <String, dynamic>{
      'key': key,
      'format': apiKey,
      'middle_area': middleArea
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> middleArea(
      {String? key, String apiKey = 'json', String? largeArea}) {
    final $url = '/middle_area/v1';
    final $params = <String, dynamic>{
      'key': key,
      'format': apiKey,
      'large_area': largeArea
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }
}
