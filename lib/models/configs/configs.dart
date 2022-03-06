import 'package:hive/hive.dart';

class Configs {
  const Configs({
    required this.box,
  });

  final Box box;
  static const kFirstRunKey = "firstRun";
  bool get firstRun => box.get(kFirstRunKey, defaultValue: true);
  Future<void> setFirstRun(bool value) => box.put(kFirstRunKey, value);
}
