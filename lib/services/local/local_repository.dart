import 'package:dio/dio.dart';
import 'package:flutter_ntf_marketplace/configs/app_config.dart';
import 'package:flutter_ntf_marketplace/constants/endpoints.dart';

class LocalRepository {
  static const baseUrl = AppConfigs.kServerUri;
  static final LocalRepository _singleton = LocalRepository._internal();

  factory LocalRepository() {
    return _singleton;
  }
  LocalRepository._internal();

  Future<Response> getSomething() async {
    Dio _dio = Dio();
    Response response = await _dio.get("$baseUrl${AppEndpoint.test}");
    return response;
  }
}
