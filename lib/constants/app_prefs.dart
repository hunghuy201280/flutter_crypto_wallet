class AppPref {
  static final AppPref _singleton = AppPref._internal();

  factory AppPref() {
    return _singleton;
  }

  AppPref._internal();

  static _Config config = _Config();
  static _Wallet wallet = _Wallet();
}

class _Config {
  String get firstRun => "FIRST_RUN";
}

class _Wallet {
  String get mnemonicsPharse => "MNEMONICS_PHARSE";
  String get walletSelect => "WALLET_SELECT";
  String get walletImport => "WALLET_IMPORT";
}
