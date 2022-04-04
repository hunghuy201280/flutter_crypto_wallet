import 'package:flutter_ntf_marketplace/constants/hive_configs.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@module
abstract class HiveModule {
  @Named(HiveConfigs.kConfig)
  Box getConfigPrefBox() => Hive.box(HiveConfigs.kConfig);

  @Named(HiveConfigs.kWallet)
  Box getWalletPrefBox() => Hive.box(HiveConfigs.kWallet);
}
