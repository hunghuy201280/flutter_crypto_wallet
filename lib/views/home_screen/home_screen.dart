import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const id = "HomeScreen";
  const HomeScreen({Key? key}) : super(key: key);

  static HomeScreen get instance {
    return const HomeScreen();
  }

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
    );
  }
}
