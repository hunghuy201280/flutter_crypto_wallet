import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ntf_marketplace/constants/app_prefs.dart';
import 'package:flutter_ntf_marketplace/services/local/local_repository.dart';
import 'package:flutter_ntf_marketplace/services/remote/remote_repository.dart';
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

  await AppConfigs.initializeApp(
    remoteRepo: RemoteRepository(),
    localRepository: LocalRepository(),
    appPref: AppPref(),
  );
  runApp(
    ChangeNotifierProvider(
      create: (_) => AppProvider(),
      builder: (context, _) => const NFTApp(),
    ),
  );
}
