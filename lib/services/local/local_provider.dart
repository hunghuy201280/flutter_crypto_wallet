import 'package:flutter_crypto_wallet/utils/jazzicon/jazzicon.dart';
import 'package:injectable/injectable.dart';

import '../../constants/constants.dart';
import '../../models/token/token.dart';
import '../../models/wallet/wallet.dart';
import '../../utils/jazzicon/jazziconshape.dart';
import 'local_repository.dart';

@singleton
class LocalProvider {
  const LocalProvider({
    required LocalRepository repo,
  }) : _repo = repo;
  final LocalRepository _repo;

  bool isFirstRunApp() {
    return _repo.isFirstRunApp();
  }

  Future<void> saveStateFirstRunApp({required bool isFirstRun}) async {
    return _repo.saveStateFirstRunApp(isFirstRun: isFirstRun);
  }

  String getMnemonicPhrase() {
    return _repo.getMnemonicPhrase();
  }

  Future<void> saveMnemonicPhrase({required String mnemonicPhrase}) async {
    await _repo.saveMnemonicPhrase(mnemonicPhrase: mnemonicPhrase);
  }

  List<Wallet> getSavedWallets() {
    var wallets = _repo.getSavedWallets();
    if (wallets.any((element) => element.avatar == null)) {
      final cloned = [...wallets];
      wallets = cloned.map((e) {
        if (e.avatar == null) {
          final jazz = Jazzicon.getJazziconData(kJazziconSize);
          final wallet = e.copyWith(avatar: jazz);
          setSavedWallet(wallet);
          return wallet;
        }
        return e;
      }).toList();
    }

    return wallets;
  }

  Future deleteAccount(Wallet wallet) async {
    await _repo.deleteAccount(wallet);
  }

  Future setSavedWallets(List<Wallet> wallets) {
    return _repo.setSavedWallets(wallets);
  }

  Future setSavedWallet(Wallet wallet) {
    return _repo.setSavedWallet(wallet);
  }

  Future<void> removeWallet({required String address}) async {
    await _repo.removeWallet(address: address);
  }

  Future<void> addWallet({required Wallet wallet}) async {
    await _repo.addWallet(
      value: wallet.copyWith(
        index: getSavedWallets().length + 1,
        avatar: Jazzicon.getJazziconData(kJazziconSize),
      ),
    );
  }

  Future<void> removeAllWallets() async {
    await _repo.removeAllWallets();
  }

  Wallet getSelectedWallet() {
    final selectedWalletAddress = _repo.getSelectedWallet();
    var selectedWallet = getSavedWallets()
        .firstWhere((element) => element.address == selectedWalletAddress);
    if (selectedWallet.avatar == null) {
      final jazz = Jazzicon.getJazziconData(kJazziconSize);
      selectedWallet = selectedWallet.copyWith(avatar: jazz);
      setSavedWallet(selectedWallet);
    }
    return selectedWallet;
  }

  Future<void> saveSelectedWallet({required String selectedWallet}) async {
    await _repo.saveSelectedWallet(selectedWallet: selectedWallet);
  }

  Future<void> clearSelectedWallet() async {
    await _repo.clearSelectedWallet();
  }

  bool getStateLogInWithBiometrics() {
    return _repo.getStateLogInWithBiometrics();
  }

  Future<void> saveStateLogInWithBiometrics(
      {required bool isBiometrics}) async {
    await _repo.saveStateLogInWithBiometrics(isBiometrics: isBiometrics);
  }

  String getPasscode() {
    return _repo.getPasscode();
  }

  JazziconData getDefaultJazzicon() {
    return _repo.getDefaultJazzicon();
  }

  Future<void> savePasscode({required String passCode}) async {
    await _repo.savePasscode(passCode: passCode);
  }

  Future<void> deletePasscode() async {
    await _repo.deletePasscode();
  }

  bool isLoginWithBiometrics() {
    return _repo.isLoginWithBiometrics();
  }

  Future<void> setLoginWithBiometrics({required bool isBiometrics}) async {
    await _repo.setLoginWithBiometrics(isBiometrics: isBiometrics);
  }

  List<Token> getSaveTokens() {
    return _repo.getSaveTokens();
  }

  Future<void> addSaveToken({required Token token}) async {
    return _repo.addSaveToken(
      token: token.copyWith(
        avatar: Jazzicon.getJazziconData(
          kJazziconSize,
        ),
      ),
    );
  }

  Future<void> deleteSaveToken({required Token token}) async {
    return _repo.deleteSaveToken(token: token);
  }

  Future<void> deleteAllSaveToken() async {
    return _repo.deleteAllSaveToken();
  }

  Future<void> setSaveTokens({required List<Token> tokens}) async {
    return _repo.setSaveTokens(tokens: tokens);
  }
}
