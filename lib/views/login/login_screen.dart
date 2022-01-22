import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_ntf_marketplace/configs/text_config.dart';
import 'package:flutter_ntf_marketplace/generated/l10n.dart';
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
    return SizedBox(
      height: 1.sh,
      width: 1.sw,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            'assets/icons/icon_app.svg',
            width: 211.w,
            height: 211.w,
          ),
          SizedBox(
            height: 90.h,
          ),
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Positioned(
                child: Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
                  height: 340.h,
                  decoration: BoxDecoration(
                    color: AppColors.kColor2,
                    borderRadius: BorderRadius.circular(30.w),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 21.w),
                        child: Text(
                          s.easyWayToManageYourEWallet,
                          style: TextConfigs.kHeader2_9.copyWith(),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 53.w),
                        child: Text(
                          s.manageYourEveryPennyAndTransactionWithEase,
                          style: TextConfigs.kLabel_9,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 36.h,
                      ),
                      Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: AppColors.kColor6.withOpacity(0.2),
                            offset: Offset(0, 10.h),
                            blurRadius: 40.w,
                            spreadRadius: 0,
                          )
                        ]),
                        child: Material(
                          clipBehavior: Clip.hardEdge,
                          color: AppColors.kColor6,
                          borderRadius: BorderRadius.circular(25.w),
                          child: InkWell(
                            splashFactory: InkRipple.splashFactory,
                            onTap: () {},
                            child: Padding(
                              padding: EdgeInsets.all(13.w),
                              child: SvgPicture.asset(
                                'assets/icons/icon_arrow_right.svg',
                                width: 24.w,
                                height: 24.w,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 284.h,
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.kColor6.withOpacity(0.2),
                          offset: Offset(0, 10.h),
                          blurRadius: 40.w,
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/icon_wallet_solid.svg',
                      height: 164.h,
                      width: 164.h,
                      color: AppColors.kColor6,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
