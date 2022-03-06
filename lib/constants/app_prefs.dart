import 'package:flutter_ntf_marketplace/models/prefs/configspref.dart';

import '../models/prefs/walletpref.dart';

class AppPref {
  final ConfigsPref config;
  final WalletPref wallet;

  const AppPref({
    required this.config,
    required this.wallet,
  });
}
