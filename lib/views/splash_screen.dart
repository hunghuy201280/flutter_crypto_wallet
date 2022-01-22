import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_ntf_marketplace/configs/text_config.dart';
import 'package:flutter_ntf_marketplace/generated/l10n.dart';
import 'package:flutter_ntf_marketplace/view_models/auth_bloc/auth_bloc.dart';
import 'package:flutter_ntf_marketplace/views/home/home_screen.dart';
import 'package:flutter_ntf_marketplace/views/login/login_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/src/provider.dart';
import 'package:web3dart/web3dart.dart';

class SplashScreen extends StatefulWidget {
  static const String id = "/splash";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) async {
      await Future.delayed(const Duration(milliseconds: 5000));
      context.read<AuthBloc>().add(const AuthEvent.initial());
    });
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) => state.when(
        unauthenticated: () {
          Navigator.pushReplacementNamed(
            context,
            LoginScreen.id,
          );
        },
        authenticatedNoPassword: (wallet) {},
        authenticated: (Wallet wallet) {},
      ),
      child: Scaffold(
        backgroundColor: AppColors.kColor1,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                'assets/icons/icon_app.svg',
                height: 211.w,
                width: 211.w,
              ),
              SizedBox(
                height: 27.h,
              ),
              Text(
                s.appName,
                style: TextConfigs.kHeader1_9,
              )
            ],
          ),
        ),
      ),
    );
  }
}
