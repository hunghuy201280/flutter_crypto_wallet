import '../di/dependency_injection.dart';

class AppConfigs {
  // static const kServerUri = "http://localhost:3000";
  static const kServerUri = "https://crypto-wallet-db.herokuapp.com";
  static const tempImage = "https://i.imgur.com/BsxRxlQ.png";

  static Future<void> initializeApp() async {
    configureDependencies();
  }
}
