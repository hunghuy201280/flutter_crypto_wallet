import 'package:flutter_ntf_marketplace/entities/wallet/wallet.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../constants/hive_configs.dart';

@singleton
class WalletPref {
  const WalletPref({
    @Named(HiveConfigs.kWallet) required this.box,
  });
  final Box box;
  static const kMnemonicPhraseKey = "MNEMONIC_PHRASE_KEY";
  static const kSelectedWalletKey = "SELECTED_WALLET_KEY";
  static const kSavedWalletsKey = "SAVED_WALLETS_KEY";
  static const kPasscodeKey = "PASSCODE_KEY";
  static const kIsLoginWithBiometrics = "IS_LOGIN_WITH_BIOMETRIC_KEY";

  String get mnemonicPhrase => box.get(kMnemonicPhraseKey, defaultValue: "");
  Future<void> setMnemonicPhrase(String value) =>
      box.put(kMnemonicPhraseKey, value);

  Wallet? get selectedWallet => box.get(kSelectedWalletKey);
  Future<void> setSelectedWallet(Wallet value) =>
      box.put(kSelectedWalletKey, value);

  Future<void> clearSelectedWallet() => box.delete(kSelectedWalletKey);

  List<Wallet> get savedWallets =>
      (box.get(kSavedWalletsKey, defaultValue: <Wallet>[]) as List)
          .map((e) => e as Wallet)
          .toList();
  Future<void> setSavedWallets(List<Wallet> value) =>
      box.put(kSavedWalletsKey, value);

  String get passCode => box.get(kPasscodeKey, defaultValue: "");
  Future<void> setPasscode(String value) => box.put(kPasscodeKey, value);

  bool get isLoginWithBiometrics =>
      box.get(kIsLoginWithBiometrics, defaultValue: false);
  Future<void> setIsLoginWithBiometrics(bool value) =>
      box.put(kIsLoginWithBiometrics, value);
}
