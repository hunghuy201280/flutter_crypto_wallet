import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  static const id = "WalletScreen";
  const WalletScreen({Key? key}) : super(key: key);
  static WalletScreen get instance {
    return const WalletScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
    );
  }
}
