import 'package:dio/dio.dart';
import 'package:flutter_crypto_wallet/constants/hive_configs.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../configs/app_config.dart';

@module
abstract class HiveModule {
  @Named(HiveConfigs.kConfig)
  Box getConfigPrefBox() => Hive.box(HiveConfigs.kConfig);

  @Named(HiveConfigs.kWallet)
  Box getWalletPrefBox() => Hive.box(HiveConfigs.kWallet);

  @Named("BaseUrl")
  String getBaseUrl() => AppConfigs.kServerUri;

  @singleton
  Dio getDio() {
    final dio = Dio();
    dio
      ..options.baseUrl = getBaseUrl()
      ..options.connectTimeout = AppConfigs.kConnectionTimeOut
      ..options.receiveTimeout = AppConfigs.kReceiveTimeOut;
    //  ..options.headers = {'Content-Type': 'application/json; charset=utf-8'}
    // ..interceptors.add(PrettyDioLogger(
    //   request: true,
    //   requestBody: true,
    //   responseBody: true,
    //   requestHeader: true,
    //   responseHeader: false,
    //   error: true,
    // ))
    // ..interceptors.add(JWTInterceptor());

    // (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
    //     (client) {
    //   // You can verify the certificate here
    //   client.badCertificateCallback =
    //       (X509Certificate cert, String host, int port) => true;
    //
    //   return client;
    // };

    return dio;
  }
}
