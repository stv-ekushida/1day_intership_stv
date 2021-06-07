import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:http/io_client.dart' as http;

part 'api_service.chopper.dart';

@ChopperApi()
abstract class ApiService extends ChopperService {
  static const baseUrl = "https://webservice.recruit.co.jp/hotpepper";
  static const apiKey = "efd4685dbbb4d15f";

  static ApiService create() {
    final client = ChopperClient(
        baseUrl: baseUrl,
        services: [_$ApiService()],
        client: http.IOClient(
          HttpClient()..connectionTimeout = const Duration(seconds: 60),
        ),
        converter: JsonConverter(),
        interceptors: [
          (Request request) async {
            debugPrint("""
                =========HTTP Request logging=========
                baseUrl: ${request.baseUrl}
                url: ${request.url}
                parameter: ${request.parameters}
                method: ${request.method}
                headers: ${request.headers}
                body: ${request.body}
                multipart: ${request.multipart}
                parts: ${request.parts}
                ======================================
              """);

            return request;
          },
          (Response response) async {
            debugPrint("""
                =========HTTP Response logging=========
                url: ${response.base.request?.url}
                status: ${response.statusCode}
                headers: ${response.headers}
                body: ${response.body}
                ======================================
              """);
            return response;
          }
        ]);
    return _$ApiService(client);
  }

  @Get(path: '/gourmet/v1')
  Future<Response> shops({
    @Query('key') String? key,
    @Query('format') String apiKey = 'json',
    @Query('middle_area') String? middleArea,
  });

  @Get(path: '/middle_area/v1')
  Future<Response> middleArea({
    @Query('key') String? key,
    @Query('format') String apiKey = 'json',
    @Query('large_area') String? largeArea,
  });
}
