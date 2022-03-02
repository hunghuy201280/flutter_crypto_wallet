import 'package:hive/hive.dart';

class Wallet {
  static final Wallet _internal = Wallet._();
  factory Wallet() => _internal;
  Wallet._();
  late Box _box;

  set box(Box value) => _box = value;

  static const kMnemonicPhraseKey = "mnemonicPhrase";
  static const kWalletsKey = "wallets";
  static const kSelectedWalletKey = "selectedWallet";
  static const kImportedWalletsKey = "importedWallets";

  String get mnemonicPhrase => _box.get(kMnemonicPhraseKey, defaultValue: "");
  Future<void> setMnemonicPhrase(String value) =>
      _box.put(kMnemonicPhraseKey, value);

  List<String> get wallets => _box.get(kWalletsKey, defaultValue: []);
  Future<void> setWallets(List<String> value) => _box.put(kWalletsKey, value);

  String get selectedWallet => _box.get(kSelectedWalletKey, defaultValue: "");
  Future<void> setSelectedWallet(String value) =>
      _box.put(kSelectedWalletKey, value);

  List<String> get importedWallets =>
      _box.get(kImportedWalletsKey, defaultValue: []);
  Future<void> setImportedWallets(List<String> value) =>
      _box.put(kImportedWalletsKey, value);
}
