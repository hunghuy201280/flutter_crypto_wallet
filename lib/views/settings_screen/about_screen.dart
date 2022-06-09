import 'package:flutter/material.dart';
import 'package:flutter_crypto_wallet/configs/color_config.dart';
import 'package:flutter_crypto_wallet/utils/utils.dart';

import '../../generated/l10n.dart';

class AboutAppScreen extends StatefulWidget {
  static const String id = 'setting/about';
  const AboutAppScreen({Key? key}) : super(key: key);

  @override
  State<AboutAppScreen> createState() => _AboutAppScreenState();
}

class _AboutAppScreenState extends State<AboutAppScreen> {
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      backgroundColor: AppColors.kColor1,
      appBar: Utils.buildAppBar(context, title: s.about, centerTitle: true),
      body: _bodyScreen(),
    );
  }

  Widget _bodyScreen() {
    return Container();
  }
}
