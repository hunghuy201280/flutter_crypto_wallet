import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_ntf_marketplace/configs/text_config.dart';
import 'package:flutter_ntf_marketplace/generated/l10n.dart';
import 'package:flutter_ntf_marketplace/view_models/auth_bloc/auth_bloc.dart';
import 'package:flutter_ntf_marketplace/view_models/login_bloc/login_bloc.dart';
import 'package:flutter_ntf_marketplace/views/login/import_wallet_screen.dart';
import 'package:flutter_ntf_marketplace/views/login/setup_wallet_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web3dart/credentials.dart';

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
    context.read<AuthBloc>().add(const AuthEvent.initial());
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
          SizedBox(
            height: 90.h,
          ),
          Text(
            s.enterToYourWallet,
            style: TextConfigs.kHeader3_9,
          ),
          SizedBox(
            height: 60.h,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: AppColors.kColor6,
              splashFactory: InkRipple.splashFactory,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.w),
                ),
              ),
            ),
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 21.h),
              child: Text(
                s.createWallet,
                style: TextConfigs.kHeader4_9,
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: AppColors.kColor2,
              splashFactory: InkRipple.splashFactory,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.w),
                ),
              ),
            ),
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 21.h),
              child: Text(
                s.importWallet,
                style: TextConfigs.kHeader4_9,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
