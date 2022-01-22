import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ntf_marketplace/view_models/auth_bloc/auth_bloc.dart';
import 'package:flutter_ntf_marketplace/views/home/home_screen.dart';
import 'package:flutter_ntf_marketplace/views/login/login_screen.dart';
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
    context.read<AuthBloc>().add(const AuthEvent.initial());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
    );
  }
}
