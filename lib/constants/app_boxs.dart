class AppHiveBoxs {
  static final AppHiveBoxs _singleton = AppHiveBoxs._internal();

  factory AppHiveBoxs() {
    return _singleton;
  }

  AppHiveBoxs._internal();

  static String get config => "CONFIG_BOX";
}
