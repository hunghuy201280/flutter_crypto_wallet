import 'package:flutter_ntf_marketplace/constants/hive_configs.dart';
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
}
