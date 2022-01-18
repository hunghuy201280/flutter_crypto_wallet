import 'package:dio/dio.dart';
import 'package:flutter_ntf_marketplace/configs/app_config.dart';
import 'package:flutter_ntf_marketplace/constants/endpoints.dart';

/// Example Repository
class DataRepository {
  static const baseUrl = AppConfigs.kServerUri;
  static Future<Response> getSomething() async {
    Dio _dio = Dio();
    Response response =
        await _dio.get("$baseUrl${AppEndpoint.exampleEndpoint}");
    return response;
  }
}
