import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_ntf_marketplace/configs/text_config.dart';
import 'package:flutter_ntf_marketplace/generated/l10n.dart';
import 'package:flutter_ntf_marketplace/utils/extensions.dart';
import 'package:flutter_ntf_marketplace/utils/utils.dart';
import 'package:flutter_ntf_marketplace/views/create_wallet/widgets/checkbox_row.dart';
import 'package:flutter_ntf_marketplace/views/create_wallet/widgets/nstepper.dart';
import 'package:flutter_ntf_marketplace/views/shared_widgets/primary_text_field.dart';
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
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      backgroundColor: AppColors.kColor1,
      appBar: Utils.buildAppBar(context, title: s.createWallet),
      body: Column(
        children: [
          16.verticalSpace,
          NStepper(
            currentStep: currentStep,
          ),
          Expanded(
            child: PageView(
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

class CreateWalletBody1 extends StatefulWidget {
  const CreateWalletBody1({Key? key}) : super(key: key);

  @override
  _CreateWalletBody1State createState() => _CreateWalletBody1State();
}

class _CreateWalletBody1State extends State<CreateWalletBody1> {
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Column(
      children: [
        24.verticalSpace,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 64.w),
          child: Text(
            s.thisPasswordWillUnlockYourWalletOnlyOnThisDevice,
            style: TextConfigs.kLabel_9,
            textAlign: TextAlign.center,
          ),
        ),
        32.verticalSpace,
        PrimaryTextField(
          title: s.newPassword,
          obscureText: true,
          hint: s.password,
        ),
        24.verticalSpace,
        PrimaryTextField(
          title: s.confirmPassword,
          obscureText: true,
          hint: s.password,
        ),
        8.verticalSpace,
        Container(
          child: Text(
            s.mustBeAtLeastCharacters(8),
            style: TextConfigs.kBody2_2,
          ),
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.symmetric(horizontal: 24.w),
        ),
        24.verticalSpace,
        const CheckBoxRow(),
        48.verticalSpace,
      ],
    );
  }
}

class CreateWalletBody2 extends StatelessWidget {
  const CreateWalletBody2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Column(
      children: [
        48.verticalSpace,
        Text(
          s.dontGiveThisPrivateKeyToAnyone,
          style: TextConfigs.kLabel_9,
        ),
        56.verticalSpace,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: Text(
            "19666ccb28cfff90b05d4c52929b4d3816a7fbcfff7bc05225264a9c862bca7a",
            style: TextConfigs.kSubtitle_9,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
