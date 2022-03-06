import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ntf_marketplace/view_models/auth_bloc/auth_bloc.dart';
import 'package:flutter_ntf_marketplace/views/login/login_screen.dart';

import '../passcode/passcode_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "/home";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.when(
          unauthenticated: () {
            Navigator.of(context, rootNavigator: true)
                .pushNamedAndRemoveUntil(LoginScreen.id, (route) => false);
          },
          authenticatedNoPassword: (walletAddress) {
            Navigator.of(context, rootNavigator: true)
                .pushNamedAndRemoveUntil(PasscodeScreen.id, (route) => false);
          },
          authenticated: (wallet) {},
        );
      },
      child: Scaffold(
        body: Container(),
      ),
    );
  }
}
