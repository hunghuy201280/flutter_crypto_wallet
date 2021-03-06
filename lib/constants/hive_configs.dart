import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveConfigs {
  static final HiveConfigs _singleton = HiveConfigs._internal();

  factory HiveConfigs() {
    return _singleton;
  }

  HiveConfigs._internal();
  Future<void> initializeHiveConfigs() async {
    await Hive.initFlutter();

    final key = await getSecureKey();
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
    printInfo(info: key.toString());
    return key;
  }

  static const kConfig = "CONFIG_BOX";
  static const kWallet = "WALLET_BOX";
}
