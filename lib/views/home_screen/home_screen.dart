import 'package:flutter/material.dart';
import 'package:flutter_crypto_wallet/configs/color_config.dart';
import 'package:flutter_crypto_wallet/configs/text_config.dart';
import 'package:flutter_crypto_wallet/generated/l10n.dart';
import 'package:flutter_crypto_wallet/utils/extensions.dart';
import 'package:flutter_crypto_wallet/views/home_screen/widgets/account_info.dart';
import 'package:flutter_crypto_wallet/views/home_screen/widgets/deposit_bottom_sheet.dart';
import 'package:flutter_crypto_wallet/views/nav_bar_view/nav_bar_view.dart';
import 'package:flutter_crypto_wallet/views/shared_widgets/primary_button.dart';
import 'package:flutter_crypto_wallet/views/withdraw_token/withdraw_screen.dart';
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
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.kColor1,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            16.verticalSpace,
            const AccountInfo(),
            NavBarView.height.verticalSpace,
            PrimaryButton(
              title: s.depositCrypto,
              leading: "deposit".getIcon(width: 24.w, height: 24.w),
              style: TextConfigs.kSubtitle_9,
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (_) => const DepositBottomSheet(),
                    backgroundColor: Colors.transparent,
                    useRootNavigator: true,
                    isScrollControlled: true);
              },
              backgroundColor: AppColors.kColor3,
              verticalPadding: 24.w,
              horizontalMargin: 24.w,
            ),
            24.verticalSpace,
            PrimaryButton(
              title: s.withdrawCrypto,
              leading: "withdraw".getIcon(width: 24.w, height: 24.w),
              style: TextConfigs.kSubtitle_9,
              onTap: () {
                Navigator.of(context, rootNavigator: true)
                    .pushNamed(WithdrawScreen.id);
              },
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
      ),
    );
  }
}
