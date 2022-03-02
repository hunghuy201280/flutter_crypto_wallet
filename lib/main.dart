import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ntf_marketplace/services/local/local_repository.dart';
import 'package:flutter_ntf_marketplace/services/remote/remote_repository.dart';
import 'package:flutter_ntf_marketplace/view_models/app_provider.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'configs/app_config.dart';

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
  await Hive.initFlutter();
  AppConfigs.initializeApp(
    remoteRepo: RemoteRepository(),
    localRepository: LocalRepository(),
  );
  runApp(
    ChangeNotifierProvider(
      create: (_) => AppProvider(),
      builder: (context, _) => const NFTApp(),
    ),
  );
}
