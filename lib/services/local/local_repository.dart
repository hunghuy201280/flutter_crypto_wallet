import 'package:flutter_ntf_marketplace/configs/app_config.dart';
import 'package:flutter_ntf_marketplace/constants/app_prefs.dart';

class LocalRepository {
  static const baseUrl = AppConfigs.kServerUri;

  const LocalRepository({
    required AppPref appPref,
  }) : _appPref = appPref;

  final AppPref _appPref;

  Future<void> savePrivateKey({required String privateKey}) async {
    final wallet = _appPref.wallet;
    final importedWallet = wallet.importedWallets;
    importedWallet.add(privateKey);
    wallet.setImportedWallets([...importedWallet]);
  }
}
