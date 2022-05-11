import '../di/dependency_injection.dart';

class AppConfigs {
  static const kServerUri = "http://10.0.2.2:3000";
  // static const kServerUri = "https://crypto-wallet-db.herokuapp.com";
  static const tempImage = "https://i.imgur.com/BsxRxlQ.png";
  static const kConnectionTimeOut = 20000;
  static const kReceiveTimeOut = 20000;
  static Future<void> initializeApp() async {
    configureDependencies();
  }
}
