import 'package:hive/hive.dart';

class Configs {
  static final Configs _internal = Configs._();
  factory Configs() => _internal;
  Configs._();

  late Box _box;
  set box(Box value) => _box = value;
  static const kFirstRunKey = "firstRun";
  bool get firstRun => _box.get(kFirstRunKey, defaultValue: true);
  Future<void> setFirstRun(bool value) => _box.put(kFirstRunKey, value);
}
