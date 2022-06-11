import 'package:dio/dio.dart';
import 'package:flutter_crypto_wallet/configs/app_config.dart';
import 'package:flutter_crypto_wallet/constants/endpoints.dart';
import 'package:injectable/injectable.dart';

import '../../models/token/token.dart';

@singleton
class RemoteRepository {
  static final baseUrl = AppConfigs.kServerUri;
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

  Future<Response> getBalanceTokensOfAddress(
      String address, List<Token> tokens) async {
    Response response = await _dio.get(
      AppEndpoint.getBalanceTokensOfAddress(
          address, tokens.map((e) => e.address).toList()),
    );
    return response;
  }

  Future<Response> getInfoOfToken(String tokenAddress) async {
    Response response = await _dio.get(
      AppEndpoint.getInfoOfToken(tokenAddress),
    );
    return response;
  }

  Future<Response> getWalletInfo(String walletAddress) async {
    Response response = await _dio.get(
      AppEndpoint.getWalletInfo(walletAddress),
    );
    return response;
  }

  Future<Response> getValidWalletAddress(String walletAddress) async {
    Response response = await _dio.get(
      AppEndpoint.getValidWalletAddress(walletAddress),
    );
    return response;
  }

  Future<Response> sendToken(String fromAddress, String toAddress,
      String tokenAddress, double value, String fromPrivateKey) async {
    Response response = await _dio.post(AppEndpoint.tokenSend, data: {
      'fromAddress': fromAddress,
      'toAddress': toAddress,
      'tokenAddress': tokenAddress,
      'value': value,
      'fromPrivateKey': fromPrivateKey,
    });
    return response;
  }

  Future<Response> sendBalance(String fromAddress, String toAddress,
      double value, String fromPrivateKey) async {
    Response response = await _dio.post(AppEndpoint.balanceSend, data: {
      'fromAddress': fromAddress,
      'toAddress': toAddress,
      'value': value,
      'fromPrivateKey': fromPrivateKey,
    });
    return response;
  }
}
