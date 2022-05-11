import 'package:flutter_ntf_marketplace/configs/app_config.dart';
import 'package:flutter_ntf_marketplace/constants/app_prefs.dart';
import 'package:injectable/injectable.dart';

import '../../models/wallet/wallet.dart';

@singleton
class LocalRepository {
  static const baseUrl = AppConfigs.kServerUri;

  const LocalRepository({
    required AppPref appPref,
  }) : _appPref = appPref;

  final AppPref _appPref;

  bool isFirstRunApp() {
    final config = _appPref.config;
    return config.firstRun;
  }

  Future<void> saveStateFirstRunApp({required bool isFirstRun}) async {
    final config = _appPref.config;
    await config.setFirstRun(isFirstRun);
  }

  String getMnemonicPhrase() {
    final wallet = _appPref.wallet;
    return wallet.mnemonicPhrase;
  }

  Future<void> saveMnemonicPhrase({required String mnemonicPhrase}) async {
    final wallet = _appPref.wallet;
    await wallet.setMnemonicPhrase(mnemonicPhrase);
  }

  List<Wallet> getSavedWallets() {
    final wallet = _appPref.wallet;
    return wallet.savedWallets;
  }

  Future<void> removeWallet({required String address}) async {
    final wallet = _appPref.wallet;
    final savedWallets = wallet.savedWallets;
    savedWallets.removeWhere((element) => element.address == address);
    await wallet.setSavedWallets([...savedWallets]);
  }

  Future<void> addWallet({required Wallet value}) async {
    final wallet = _appPref.wallet;
    final walletsImported = wallet.savedWallets;
    walletsImported.add(value);
    await wallet.setSavedWallets([...walletsImported]);
  }

  Future<void> removeAllWallets() async {
    final wallet = _appPref.wallet;
    await wallet.setSavedWallets([]);
  }

  Wallet? getSelectedWallet() {
    final wallet = _appPref.wallet;
    return wallet.selectedWallet;
  }

  Future<void> saveSelectedWallet({required Wallet selectedWallet}) async {
    final wallet = _appPref.wallet;
    await wallet.setSelectedWallet(selectedWallet);
  }

  Future<void> clearSelectedWallet() async {
    final wallet = _appPref.wallet;
    await wallet.clearSelectedWallet();
  }

  bool getStateLogInWithBiometrics() {
    final wallet = _appPref.wallet;
    return wallet.isLoginWithBiometrics;
  }

  Future<void> saveStateLogInWithBiometrics(
      {required bool isBiometrics}) async {
    final wallet = _appPref.wallet;
    await wallet.setIsLoginWithBiometrics(isBiometrics);
  }

  String getPasscode() {
    final wallet = _appPref.wallet;
    return wallet.passCode;
  }

  Future<void> savePasscode({required String passCode}) async {
    final wallet = _appPref.wallet;
    await wallet.setPasscode(passCode);
  }

  Future<void> deletePasscode() async {
    final wallet = _appPref.wallet;
    await wallet.setPasscode('');
  }

  bool isLoginWithBiometrics() {
    final wallet = _appPref.wallet;
    return wallet.isLoginWithBiometrics;
  }

  Future<void> setLoginWithBiometrics({required bool isBiometrics}) async {
    final wallet = _appPref.wallet;
    await wallet.setIsLoginWithBiometrics(isBiometrics);
  }
}
