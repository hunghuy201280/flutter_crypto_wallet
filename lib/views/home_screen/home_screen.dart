import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_ntf_marketplace/configs/text_config.dart';
import 'package:flutter_ntf_marketplace/generated/l10n.dart';
import 'package:flutter_ntf_marketplace/utils/extensions.dart';
import 'package:flutter_ntf_marketplace/views/home_screen/widgets/account_info.dart';
import 'package:flutter_ntf_marketplace/views/nav_bar_view/nav_bar_view.dart';
import 'package:flutter_ntf_marketplace/views/shared_widgets/primary_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    final s = S.of(context);
    return Scaffold(
      backgroundColor: AppColors.kColor1,
      body: Column(
        children: [
          16.verticalSpace,
          const AccountInfo(),
          NavBarView.height.verticalSpace,
          PrimaryButton(
            title: s.depositCrypto,
            leading: "deposit".getIcon(width: 24.w, height: 24.w),
            style: TextConfigs.kSubtitle_9,
            onTap: () {},
            backgroundColor: AppColors.kColor3,
            verticalPadding: 24.w,
            horizontalMargin: 24.w,
          ),
          24.verticalSpace,
          PrimaryButton(
            title: s.withdrawCrypto,
            leading: "withdraw".getIcon(width: 24.w, height: 24.w),
            style: TextConfigs.kSubtitle_9,
            onTap: () {},
            verticalPadding: 24.w,
            horizontalMargin: 24.w,
          ),
          24.verticalSpace,
          PrimaryButton(
            title: s.exchangeCrypto,
            leading: "exchange".getIcon(width: 24.w, height: 24.w),
            style: TextConfigs.kSubtitle_9,
            onTap: () {},
            backgroundColor: AppColors.kColor5,
            horizontalMargin: 24.w,
            verticalPadding: 24.w,
          ),
        ],
      ),
    );
  }
}
