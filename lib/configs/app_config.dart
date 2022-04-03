import '../di/dependency_injection.dart';

class AppConfigs {
  static const kServerUri = "http://localhost:3000";
  static const tempImage = "https://i.imgur.com/BsxRxlQ.png";

  static Future<void> initializeApp() async {
    configureDependencies();
  }
}
