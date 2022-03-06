import 'package:hive/hive.dart';

class Wallet {
  const Wallet({
    required this.box,
  });
  final Box box;

  static const kMnemonicPhraseKey = "mnemonicPhrase";
  static const kWalletsKey = "wallets";
  static const kSelectedWalletKey = "selectedWallet";
  static const kImportedWalletsKey = "importedWallets";
  static const kPasscodeKey = "passCode";
  static const kIsLoginWithBiometrics = "isLoginWithBiometrics";

  String get mnemonicPhrase => box.get(kMnemonicPhraseKey, defaultValue: "");
  Future<void> setMnemonicPhrase(String value) =>
      box.put(kMnemonicPhraseKey, value);

  List<String> get wallets => box.get(kWalletsKey, defaultValue: []);
  Future<void> setWallets(List<String> value) => box.put(kWalletsKey, value);

  String get selectedWallet => box.get(kSelectedWalletKey, defaultValue: "");
  Future<void> setSelectedWallet(String value) =>
      box.put(kSelectedWalletKey, value);

  List<String> get importedWallets =>
      box.get(kImportedWalletsKey, defaultValue: []);
  Future<void> setImportedWallets(List<String> value) =>
      box.put(kImportedWalletsKey, value);

  String get passCode => box.get(kPasscodeKey);
  Future<void> setPasscode(String value) => box.put(kPasscodeKey, value);

  bool get isLoginWithBiometrics =>
      box.get(kIsLoginWithBiometrics, defaultValue: false);
  Future<void> setIsLoginWithBiometrics(bool value) =>
      box.put(kIsLoginWithBiometrics, value);
}
