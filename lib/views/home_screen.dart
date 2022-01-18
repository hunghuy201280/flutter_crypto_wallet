import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_ntf_marketplace/generated/l10n.dart';
import 'package:flutter_ntf_marketplace/view_models/app_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  static const id = "HomeScreen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      backgroundColor: AppColors.kColor1,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(s.helloWorld),
            OutlinedButton(
                onPressed: () {
                  context.read<AppProvider>().toggleLocale();
                },
                child: Text(s.changeLanguage)),
          ],
        ),
      ),
    );
  }
}
