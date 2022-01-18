import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/view_models/app_provider.dart';
import 'package:provider/provider.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    ChangeNotifierProvider(
      create: (_) => AppProvider(),
      builder: (context, _) => const NFTApp(),
    ),
  );
}
