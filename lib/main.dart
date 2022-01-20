import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/view_models/app_provider.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:provider/provider.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  runApp(
    ChangeNotifierProvider(
      create: (_) => AppProvider(),
      builder: (context, _) => const NFTApp(),
    ),
  );
}
