import 'package:flutter/material.dart';
import 'package:flutter_crypto_wallet/configs/color_config.dart';
import 'package:flutter_crypto_wallet/configs/text_config.dart';
import 'package:flutter_crypto_wallet/utils/utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../generated/l10n.dart';
import '../webview/webview_screen.dart';

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(),
          24.verticalSpace,
          Text(
            s.appName,
            style: TextConfigs.kHeader3_9,
          ),
          24.verticalSpace,
          Hero(
            tag: 'icon_app',
            child: SvgPicture.asset(
              'assets/icons/icon_app.svg',
              height: 211.w,
              width: 211.w,
              color: AppColors.kColor9,
            ),
          ),
          56.verticalSpace,
          Text(
            s.links,
            style: TextConfigs.kHeader3_4,
          ),
          24.verticalSpace,
          GestureDetector(
            onTap: () {
              Navigator.of(context, rootNavigator: true).pushNamed(
                WebViewScreen.id,
                arguments: {
                  "url": "https://consensys.net/privacy-policy/",
                  "title": s.privacyPolicy,
                },
              );
            },
            child: Text(
              s.privacyPolicy,
              style: TextConfigs.kSubtitle_9.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          16.verticalSpace,
          GestureDetector(
            onTap: () {
              Navigator.of(context, rootNavigator: true).pushNamed(
                WebViewScreen.id,
                arguments: {
                  "url": "https://consensys.net/terms-of-use/",
                  "title": s.termsOfUse,
                },
              );
            },
            child: Text(
              s.termsOfUse,
              style: TextConfigs.kSubtitle_9.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
