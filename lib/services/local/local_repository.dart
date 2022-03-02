import 'package:flutter_ntf_marketplace/configs/app_config.dart';
import 'package:flutter_ntf_marketplace/constants/app_prefs.dart';

class LocalRepository {
  static const baseUrl = AppConfigs.kServerUri;
  static final LocalRepository _singleton = LocalRepository._internal();

  factory LocalRepository() {
    return _singleton;
  }
  LocalRepository._internal();
  late AppPref _appPref;

  set appPref(AppPref pref) => _appPref = pref;

  Future<void> savePrivateKey({required String privateKey}) async {
    final wallet = _appPref.wallet;
    final importedWallet = wallet.importedWallets;
    importedWallet.add(privateKey);
    wallet.setImportedWallets([...importedWallet]);
  }
}
