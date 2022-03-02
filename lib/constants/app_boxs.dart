class AppHiveBoxes {
  static final AppHiveBoxes _singleton = AppHiveBoxes._internal();

  factory AppHiveBoxes() {
    return _singleton;
  }

  AppHiveBoxes._internal();

  static String get config => "CONFIG_BOX";
  static String get wallet => "WALLET_BOX";
}
