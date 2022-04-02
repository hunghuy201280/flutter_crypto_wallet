import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ntf_marketplace/view_models/login_bloc/login_bloc.dart';
import 'package:flutter_ntf_marketplace/view_models/passcode_bloc/passcode_bloc.dart';
import 'package:flutter_ntf_marketplace/views/import_wallet/import_wallet_screen.dart';
import 'package:flutter_ntf_marketplace/views/login/login_screen.dart';
import 'package:flutter_ntf_marketplace/views/onboarding_screen.dart';
import 'package:flutter_ntf_marketplace/views/passcode/passcode_screen.dart';
import 'package:flutter_ntf_marketplace/views/settings_screen/about_screen.dart';
import 'package:flutter_ntf_marketplace/views/settings_screen/networks/networks_screen.dart';
import 'package:flutter_ntf_marketplace/views/settings_screen/security/security_privacy_screen.dart';
import 'package:flutter_ntf_marketplace/views/splash_screen.dart';

import '../view_models/import_wallet_bloc/import_wallet_bloc.dart';
import '../views/create_wallet/create_wallet_screen.dart';
import '../views/import_wallet/import_wallet_success_screen.dart';
import '../views/nav_bar_view/nav_bar_view.dart';
import '../views/settings_screen/general/general_screen.dart';

class AppRoute {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen.id:
        return CupertinoPageRoute(
          builder: (_) => const SplashScreen(),
          settings: settings,
        );
      case OnboardingScreen.id:
        return CupertinoPageRoute(
          builder: (context) => const OnboardingScreen(),
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
      case LoginScreen.id:
        return CupertinoPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => LoginBloc(),
            child: const LoginScreen(),
          ),
        );
      case PasscodeScreen.id:
        return CupertinoPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => PasscodeBloc(),
            child: const PasscodeScreen(),
          ),
          settings: settings,
        );
      case NavBarView.id:
        return CupertinoPageRoute(
          builder: (context) => const NavBarView(),
          settings: settings,
        );
      case GeneralScreen.id:
        return CupertinoPageRoute(
          builder: (context) => const GeneralScreen(),
          settings: settings,
        );
      case SecurityPrivacyScreen.id:
        return CupertinoPageRoute(
          builder: (context) => SecurityPrivacyScreen(),
          settings: settings,
        );
      case NetworksScreen.id:
        return CupertinoPageRoute(
          builder: (context) => const NetworksScreen(),
          settings: settings,
        );
      case AboutAppScreen.id:
        return CupertinoPageRoute(
          builder: (context) => const AboutAppScreen(),
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
