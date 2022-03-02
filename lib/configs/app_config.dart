import 'package:flutter_ntf_marketplace/constants/app_prefs.dart';
import 'package:flutter_ntf_marketplace/services/local/local_provider.dart';
import 'package:flutter_ntf_marketplace/services/local/local_repository.dart';
import 'package:flutter_ntf_marketplace/services/remote/remote_provider.dart';
import 'package:flutter_ntf_marketplace/services/remote/remote_repository.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../constants/hive_configs.dart';

class AppConfigs {
  static const kServerUri = "http://localhost:3000";

  static Future<void> initializeApp({
    required RemoteRepository remoteRepo,
    required LocalRepository localRepository,
    required AppPref appPref,
  }) async {
    Get.put(appPref);
    localRepository.appPref = appPref
      ..config.box = Hive.box(HiveConfigs.kConfig)
      ..wallet.box = Hive.box(HiveConfigs.kWallet);

    Get.put(LocalProvider()..repo = localRepository);
    Get.put(RemoteProvider()..repo = remoteRepo);
  }
}
