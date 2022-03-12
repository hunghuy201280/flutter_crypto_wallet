import 'package:flutter/material.dart';

class StatisticScreen extends StatelessWidget {
  static const id = "StatisticScreen";
  const StatisticScreen({Key? key}) : super(key: key);
  static StatisticScreen get instance {
    return const StatisticScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
    );
  }
}
