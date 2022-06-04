import 'dart:convert';

import 'package:flutter_ntf_marketplace/models/token/token.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../models/wallet/wallet.dart';

class HiveConfigs {
  static final HiveConfigs _singleton = HiveConfigs._internal();

  factory HiveConfigs() {
    return _singleton;
  }

  HiveConfigs._internal();
  Future<void> initializeHiveConfigs() async {
    await Hive.initFlutter();

    final key = await getSecureKey();
    Hive.registerAdapter(WalletAdapter());
    Hive.registerAdapter(TokenAdapter());

    await Hive.openBox(kConfig, encryptionCipher: HiveAesCipher(key));
    await Hive.openBox(kWallet, encryptionCipher: HiveAesCipher(key));
  }

  Future<List<int>> getSecureKey() async {
    const secureStorage = FlutterSecureStorage();
    // if key not exists return null
    final encryptionKey = await secureStorage.read(key: 'key');
    List<int> key = [];
    if (encryptionKey == null) {
      key = Hive.generateSecureKey();
      await secureStorage.write(
        key: 'key',
        value: base64UrlEncode(key),
      );
    } else {
      key = base64Url.decode(encryptionKey);
    }
    return key;
  }

  static const kConfig = "CONFIG_BOX";
  static const kWallet = "WALLET_BOX";
  static const kWalletTypeId = 1;
  static const kTokenTypeId = 2;
}
