import 'package:flutter_ntf_marketplace/models/configs/configs.dart';

import '../models/wallet/wallet.dart';

class AppPref {
  final Configs config;
  final Wallet wallet;

  const AppPref({
    required this.config,
    required this.wallet,
  });
}
