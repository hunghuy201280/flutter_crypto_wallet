import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_ntf_marketplace/generated/l10n.dart';
import 'package:flutter_ntf_marketplace/utils/utils.dart';
import 'package:flutter_ntf_marketplace/views/create_wallet/widgets/create_wallet_body1.dart';
import 'package:flutter_ntf_marketplace/views/create_wallet/widgets/create_wallet_body2.dart';
import 'package:flutter_ntf_marketplace/views/create_wallet/widgets/nstepper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../shared_widgets/primary_button.dart';

class CreateWalletScreen extends StatefulWidget {
  const CreateWalletScreen({Key? key}) : super(key: key);
  static const id = "CreateWalletScreen";

  @override
  State<CreateWalletScreen> createState() => _CreateWalletScreenState();
}

class _CreateWalletScreenState extends State<CreateWalletScreen> {
  int currentStep = 1;
  final pageController = PageController();
  Future _animateToPage(int index) async {
    await pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOutQuad);
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      backgroundColor: AppColors.kColor1,
      resizeToAvoidBottomInset: false,
      appBar: Utils.buildAppBar(
        context,
        title: s.createWallet,
        onTap: () {
          if (currentStep == 2) {
            _animateToPage(0);
            setState(() {
              currentStep = 1;
            });
          } else {
            Navigator.maybePop(context);
          }
        },
      ),
      body: Column(
        children: [
          16.verticalSpace,
          NStepper(
            currentStep: currentStep,
          ),
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: pageController,
              children: const [
                CreateWalletBody1(),
                CreateWalletBody2(),
              ],
            ),
          ),
          PrimaryButton(
            title: currentStep == 1 ? s.createPassword : s.getStarted,
            onTap: () {
              if (currentStep == 1) {
                currentStep = 2;
                pageController.animateToPage(1,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOutQuad);
              } else {
                currentStep = 1;
                pageController.animateToPage(0,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOutQuad);
              }
              setState(() {});
            },
          ),
          48.verticalSpace,
        ],
      ),
    );
  }
}
