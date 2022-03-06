import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_ntf_marketplace/configs/text_config.dart';
import 'package:flutter_ntf_marketplace/generated/l10n.dart';
import 'package:flutter_ntf_marketplace/utils/extensions.dart';
import 'package:flutter_ntf_marketplace/views/shared_widgets/primary_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImportWalletSuccessScreen extends StatefulWidget {
  const ImportWalletSuccessScreen({Key? key}) : super(key: key);
  static const id = "ImportWalletSuccessScreen";

  @override
  State<ImportWalletSuccessScreen> createState() =>
      _ImportWalletSuccessScreenState();
}

class _ImportWalletSuccessScreenState extends State<ImportWalletSuccessScreen> {
  int currentStep = 1;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      backgroundColor: AppColors.kColor1,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    "shield_done".getIcon(width: 150.w, height: 150.w),
                    32.verticalSpace,
                    Text(
                      s.walletAddedSuccessfully,
                      style: TextConfigs.kHeader4_9,
                    ),
                  ],
                ),
              ),
              PrimaryButton(
                title: s.getStarted,
                onTap: () {},
              ),
              24.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
