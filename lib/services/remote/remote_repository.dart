import 'package:dio/dio.dart';
import 'package:flutter_ntf_marketplace/configs/app_config.dart';
import 'package:flutter_ntf_marketplace/constants/endpoints.dart';

/// Example Repository
class RemoteRepository {
  static final RemoteRepository _singleton = RemoteRepository._internal();

  factory RemoteRepository() {
    return _singleton;
  }
  RemoteRepository._internal();
  static const baseUrl = AppConfigs.kServerUri;
  Future<Response> test() async {
    Dio _dio = Dio();
    Response response = await _dio.get("$baseUrl${AppEndpoint.test}");
    return response;
  }
}
