import 'package:flutter_ntf_marketplace/constants/app_prefs.dart';
import 'package:flutter_ntf_marketplace/services/local/local_provider.dart';
import 'package:flutter_ntf_marketplace/services/local/local_repository.dart';
import 'package:flutter_ntf_marketplace/services/remote/remote_provider.dart';
import 'package:flutter_ntf_marketplace/services/remote/remote_repository.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../constants/hive_configs.dart';
import '../models/prefs/configspref.dart';
import '../models/prefs/walletpref.dart';

class AppConfigs {
  static const kServerUri = "http://localhost:3000";

  static Future<void> initializeApp() async {
    //#region initialize AppPref
    final appPref = AppPref(
      config: ConfigsPref(
        box: Hive.box(HiveConfigs.kConfig),
      ),
      wallet: WalletPref(
        box: Hive.box(HiveConfigs.kWallet),
      ),
    );
    Get.put(appPref);
    //#endregion initialize AppPref

    //#region init local repo,provider
    final localRepository = LocalRepository(appPref: appPref);
    Get.put(LocalProvider(repo: localRepository));
    //#endregion

    //#region init remote repo,provider
    final remoteRepository = RemoteRepository();
    Get.put(RemoteProvider(repo: remoteRepository));
    //#endregion
  }
}
