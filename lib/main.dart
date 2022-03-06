import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'configs/app_config.dart';
import 'constants/hive_configs.dart';
import 'view_models/app_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //Avoid invalid type when use with bloc
  final previousCheck = Provider.debugCheckInvalidValueType;
  Provider.debugCheckInvalidValueType = <T>(T value) {
    if (value is Bloc) return;
    if (previousCheck != null) {
      previousCheck<T>(value);
    }
  };

  Get.isLogEnable = true;

  await HiveConfigs().initializeHiveConfigs();

  await AppConfigs.initializeApp();
  runApp(
    ChangeNotifierProvider(
      create: (_) => AppProvider(),
      builder: (context, _) => const NFTApp(),
    ),
  );
}
