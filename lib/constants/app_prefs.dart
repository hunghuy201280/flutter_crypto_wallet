import 'package:flutter_ntf_marketplace/entities/prefs/configspref.dart';
import 'package:injectable/injectable.dart';

import '../entities/prefs/walletpref.dart';

@singleton
class AppPref {
  final ConfigsPref config;
  final WalletPref wallet;

  const AppPref({
    required this.config,
    required this.wallet,
  });
}
