import 'package:local_auth/local_auth.dart';

import '../di/dependency_injection.dart';

class AppConfigs {
  // static final kServerUri =
  //     Platform.isIOS ? "http://localhost:3000" : "http://10.0.2.2:3000";
  //static const kServerUri = "https://crypto-wallet-db.herokuapp.com";
  static const kServerUri = "http://192.168.1.6:3000";
  static const tempImage = "https://i.imgur.com/BsxRxlQ.png";
  static const kConnectionTimeOut = 20000;
  static const kReceiveTimeOut = 20000;
  static final localAuth = LocalAuthentication();
  static late final bool canAuthenticateWithBiometrics;
  static Future<void> initializeApp() async {
    final List<BiometricType> availableBiometrics =
        await localAuth.getAvailableBiometrics();
    canAuthenticateWithBiometrics = await localAuth.canCheckBiometrics &&
        await localAuth.isDeviceSupported() &&
        (availableBiometrics.contains(BiometricType.strong) ||
            availableBiometrics.contains(BiometricType.face));
    configureDependencies();
  }
}
