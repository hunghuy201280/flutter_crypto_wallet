import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/generated/l10n.dart';
import 'package:web3dart/web3dart.dart';

class ImportWalletScreen extends StatefulWidget {
  const ImportWalletScreen({Key? key}) : super(key: key);

  @override
  _ImportWalletScreenState createState() => _ImportWalletScreenState();
}

class _ImportWalletScreenState extends State<ImportWalletScreen> {
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(s.importWallet),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(),
    );
  }
}
