import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ntf_marketplace/view_models/passcode_bloc/passcode_bloc.dart';
import 'package:flutter_ntf_marketplace/views/home/home_screen.dart';
import 'package:flutter_ntf_marketplace/views/import_wallet/import_wallet_screen.dart';
import 'package:flutter_ntf_marketplace/views/login/login_screen.dart';
import 'package:flutter_ntf_marketplace/views/onboarding_screen.dart';
import 'package:flutter_ntf_marketplace/views/passcode/passcode_screen.dart';
import 'package:flutter_ntf_marketplace/views/splash_screen.dart';

import '../view_models/import_wallet_bloc/import_wallet_bloc.dart';
import '../views/create_wallet/create_wallet_screen.dart';
import '../views/import_wallet/import_wallet_success_screen.dart';
import 'custom_route/fade_page_route.dart';

class AppRoute {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen.id:
        return CupertinoPageRoute(
          builder: (_) => const SplashScreen(),
          settings: settings,
        );
      case OnboardingScreen.id:
        return FadePageRoute(
          page: const OnboardingScreen(),
          settings: settings,
        );
      case LoginScreen.id:
        return FadePageRoute(
          page: const LoginScreen(),
          settings: settings,
        );
      case HomeScreen.id:
        return CupertinoPageRoute(
          builder: (_) => const HomeScreen(),
          settings: settings,
        );
      case CreateWalletScreen.id:
        return CupertinoPageRoute(
          builder: (_) => const CreateWalletScreen(),
          settings: settings,
        );
      case ImportWalletScreen.id:
        return CupertinoPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => ImportWalletBloc(),
            child: const ImportWalletScreen(),
          ),
          settings: settings,
        );
      case ImportWalletSuccessScreen.id:
        return CupertinoPageRoute(
          builder: (_) => const ImportWalletSuccessScreen(),
          settings: settings,
        );
      case PasscodeScreen.id:
        return CupertinoPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => PasscodeBloc(),
            child: const PasscodeScreen(),
          ),
          settings: settings,
        );
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text('Error'),
        ),
      ),
      settings: const RouteSettings(
        name: '/error',
      ),
    );
  }
}
