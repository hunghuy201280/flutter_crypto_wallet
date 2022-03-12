import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  static const id = "SettingsScreen";
  const SettingsScreen({Key? key}) : super(key: key);

  static SettingsScreen get instance {
    return const SettingsScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
    );
  }
}
