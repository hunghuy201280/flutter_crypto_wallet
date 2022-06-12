import 'package:flutter_crypto_wallet/constants/hive_configs.dart';
import 'package:flutter_crypto_wallet/utils/jazzicon/jazziconshape.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@singleton
class ConfigsPref {
  const ConfigsPref({
    @Named(HiveConfigs.kConfig) required this.box,
  });

  final Box box;
  static const kFirstRunKey = "firstRun";
  bool get firstRun => box.get(kFirstRunKey, defaultValue: true);
  Future<void> setFirstRun(bool value) => box.put(kFirstRunKey, value);

  static const kDefaultJazziconKey = "defaultJazzicon";
  JazziconData? get defaultJazzicon => box.get(
        kDefaultJazziconKey,
      );
  Future<void> setDefaultJazzicon(JazziconData value) =>
      box.put(kDefaultJazziconKey, value);
}
