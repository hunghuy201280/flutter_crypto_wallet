import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/configs/text_config.dart';
import 'package:flutter_ntf_marketplace/generated/l10n.dart';
import 'package:flutter_ntf_marketplace/view_models/login_bloc/login_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  static const String id = "login";
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 0.6.sw,
              child: ElevatedButton(
                onPressed: () {
                  context
                      .read<LoginBloc>()
                      .add(const LoginEvent.importWaller());
                },
                child: Text(
                  s.importWallet,
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            SizedBox(
              width: 0.6.sw,
              child: OutlinedButton(
                onPressed: () {
                  context
                      .read<LoginBloc>()
                      .add(const LoginEvent.createWallet());
                },
                child: Text(s.createWallet),
              ),
            )
          ],
        ),
      ),
    );
  }
}
