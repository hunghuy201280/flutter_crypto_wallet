import 'package:flutter_ntf_marketplace/models/configs/configs.dart';

import '../models/wallet/wallet.dart';

class AppPref {
  static final AppPref _singleton = AppPref._internal();

  factory AppPref() {
    return _singleton;
  }

  AppPref._internal();

  final config = Configs();
  final wallet = Wallet();
}
