import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_ntf_marketplace/configs/text_config.dart';
import 'package:flutter_ntf_marketplace/generated/l10n.dart';
import 'package:flutter_ntf_marketplace/view_models/login_bloc/login_bloc.dart';
import 'package:flutter_ntf_marketplace/views/create_wallet/create_wallet_screen.dart';
import 'package:flutter_ntf_marketplace/views/import_wallet/import_wallet_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../shared_widgets/primary_button.dart';

class LoginScreen extends StatefulWidget {
  static const String id = "/login";
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: const Scaffold(
        backgroundColor: AppColors.kColor1,
        body: _BodyScreen(),
      ),
    );
  }
}

class _BodyScreen extends StatefulWidget {
  const _BodyScreen({Key? key}) : super(key: key);

  @override
  __BodyScreenState createState() => __BodyScreenState();
}

class __BodyScreenState extends State<_BodyScreen> {
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Hero(
            tag: 'icon_app',
            child: SvgPicture.asset(
              'assets/icons/icon_app.svg',
              height: 211.w,
              width: 211.w,
              color: AppColors.kColor6,
            ),
          ),
          90.verticalSpace,
          Text(
            s.enterToYourWallet,
            style: TextConfigs.kHeader3_9,
          ),
          60.verticalSpace,
          PrimaryButton(
            title: s.createWallet,
            horizontalMargin: 72.w,
            onTap: () {
          
              Navigator.pushNamed(context, CreateWalletScreen.id);
            },
          ),
          20.verticalSpace,
          PrimaryButton(
            title: s.importWallet,
            horizontalMargin: 72.w,
            backgroundColor: AppColors.kColor2,
            onTap: () {
              Navigator.pushNamed(context, ImportWalletScreen.id);
            },
          ),
        ],
      ),
    );
  }
}
