import 'package:dio/dio.dart';
import 'package:flutter_ntf_marketplace/configs/app_config.dart';
import 'package:flutter_ntf_marketplace/constants/endpoints.dart';
import 'package:injectable/injectable.dart';

@singleton
class RemoteRepository {
  static const baseUrl = AppConfigs.kServerUri;
  final Dio _dio;

  RemoteRepository(this._dio);

  Future<Response> verifyWalletPrivateKey({required String privateKey}) async {
    Response response = await _dio.post(
      AppEndpoint.verifyWalletPrivateKey,
      data: {
        "privateKey": privateKey,
      },
    );
    return response;
  }

  Future<Response> verifyWalletMnemonic({required String mnemonic}) async {
    Response response = await _dio.post(
      AppEndpoint.verifyWalletMnemonic,
      data: {'mnemonic': mnemonic},
    );
    return response;
  }

  Future<Response> createWallet() async {
    Response response = await _dio.post(
      AppEndpoint.createWallet,
    );
    return response;
  }

  Future<Response> getTokens(String address) async {
    Response response = await _dio.get(
      AppEndpoint.getTokens(address),
    );
    return response;
  }
}
