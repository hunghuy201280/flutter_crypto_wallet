import 'package:flutter_crypto_wallet/configs/app_config.dart';
import 'package:flutter_crypto_wallet/constants/app_prefs.dart';
import 'package:flutter_crypto_wallet/constants/constants.dart';
import 'package:flutter_crypto_wallet/utils/jazzicon/jazzicon.dart';
import 'package:flutter_crypto_wallet/utils/jazzicon/jazziconshape.dart';
import 'package:injectable/injectable.dart';

import '../../models/token/token.dart';
import '../../models/wallet/wallet.dart';

@singleton
class LocalRepository {
  static final baseUrl = AppConfigs.kServerUri;

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
    await config.setDefaultJazzicon(Jazzicon.getJazziconData(kJazziconSize));
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

  Future setSavedWallets(List<Wallet> wallets) async {
    await _appPref.wallet.setSavedWallets(wallets);
  }

  Future deleteAccount(Wallet wallet) async {
    final wallets = _appPref.wallet.savedWallets;
    wallets.removeWhere((element) => element.address == wallet.address);

    //Re-assign index
    for (int i = 0; i < wallets.length; i++) {
      wallets[i] = wallets[i].copyWith(index: i + 1);
    }
    await _appPref.wallet.setSavedWallets(wallets);
    if (wallet.address == _appPref.wallet.selectedWallet) {
      saveSelectedWallet(
          selectedWallet: _appPref.wallet.savedWallets.first.address);
    }
  }

  Future setSavedWallet(Wallet wallet) async {
    final wallets = _appPref.wallet.savedWallets;
    final index =
        wallets.indexWhere((element) => element.address == wallet.address);
    if (index == -1) {
      throw "Wallet $wallet not found";
    }
    wallets[index] = wallet;

    await _appPref.wallet.setSavedWallets(wallets);
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
    if (walletsImported.any((element) => element.address == value.address)) {
      throw "Duplicate Account";
    }
    walletsImported.add(value);
    await wallet.setSavedWallets([...walletsImported]);
  }

  Future<void> removeAllWallets() async {
    final wallet = _appPref.wallet;
    await wallet.setSavedWallets([]);
  }

  String getSelectedWallet() {
    final wallet = _appPref.wallet;
    return wallet.selectedWallet!;
  }

  Future<void> saveSelectedWallet({required String selectedWallet}) async {
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

  JazziconData getDefaultJazzicon() {
    final jazziconData = _appPref.config.defaultJazzicon;
    if (jazziconData == null) {
      final newJazzicon = Jazzicon.getJazziconData(kJazziconSize);
      _appPref.config.setDefaultJazzicon(newJazzicon);
      return newJazzicon;
    }
    return jazziconData;
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

  List<Token> getSaveTokens() {
    final wallet = _appPref.wallet;
    return wallet.saveTokens;
  }

  Future<void> addSaveToken({required Token token}) async {
    final wallet = _appPref.wallet;
    final tokens = getSaveTokens();
    try {
      if (tokens.indexWhere((element) => element.address == token.address) <
          0) {
        tokens.add(token);
        await wallet.setSavedTokens(tokens);
      }
    } catch (e) {}
  }

  Future<void> setSaveTokens({required List<Token> tokens}) async {
    final wallet = _appPref.wallet;
    await wallet.setSavedTokens(tokens);
  }

  Future<void> deleteSaveToken({required Token token}) async {
    final wallet = _appPref.wallet;
    final tokens = getSaveTokens();
    try {
      tokens.firstWhere((element) => element.address == token.address);
      tokens.removeWhere(
        (element) => element.address == token.address,
      );
      await wallet.setSavedTokens(tokens);
    } catch (e) {}
  }

  Future<void> deleteAllSaveToken() async {
    final wallet = _appPref.wallet;
    await wallet.setSavedTokens([]);
  }
}
