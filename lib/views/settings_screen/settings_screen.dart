import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/configs/app_config.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';

class SettingsScreen extends StatelessWidget {
  static const id = "SettingsScreen";
  const SettingsScreen({Key? key}) : super(key: key);

  static SettingsScreen get instance {
    return const SettingsScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kColor1,
      body: _bodyScreen(),
    );
  }

  Widget _bodyScreen() {
    return Container();
  }
}
