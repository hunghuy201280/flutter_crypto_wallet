import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ntf_marketplace/di/dependency_injection.dart';
import 'package:flutter_ntf_marketplace/view_models/app_bloc/app_bloc.dart';
import 'package:flutter_ntf_marketplace/view_models/app_bloc_observer.dart';

import 'app.dart';
import 'configs/app_config.dart';
import 'constants/hive_configs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await HiveConfigs().initializeHiveConfigs();

  await AppConfigs.initializeApp();
  BlocOverrides.runZoned(
    () => runApp(
      BlocProvider(
        create: (_) => getIt<AppBloc>(),
        child: const NFTApp(),
      ),
    ),
    blocObserver: AppBlocObserver(),
  );
}
