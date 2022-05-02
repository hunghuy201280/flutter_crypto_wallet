import 'package:dio/dio.dart';
import 'package:flutter_ntf_marketplace/configs/app_config.dart';
import 'package:flutter_ntf_marketplace/constants/endpoints.dart';
import 'package:injectable/injectable.dart';

@singleton
class RemoteRepository {
  static const baseUrl = AppConfigs.kServerUri;
  Future<Response> test() async {
    Dio _dio = Dio();
    Response response = await _dio.get("$baseUrl${AppEndpoint.test}");
    return response;
  }

  Future<Response> verifyWallet({required String privateKey}) async {
    Dio _dio = Dio();
    Response response = await _dio.post(
      "$baseUrl${AppEndpoint.verifyWallet}",
      data: {
        "privateKey": privateKey,
      },
    );
    return response;
  }

  Future<Response> createWallet() async {
    Dio _dio = Dio();
    Response response = await _dio.post(
      "$baseUrl${AppEndpoint.createWallet}",
    );
    return response;
  }
}
