class AppPref {
  static final AppPref _singleton = AppPref._internal();

  factory AppPref() {
    return _singleton;
  }

  AppPref._internal();

  static _Config config = _Config();
}

class _Config {
  String get firstRun => "FIRST_RUN";
  String get privateKey => "PRIVATE_KEY";
}
