import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crypto_wallet/view_models/change_password_bloc/change_password_bloc.dart';
import 'package:flutter_crypto_wallet/view_models/login_bloc/login_bloc.dart';
import 'package:flutter_crypto_wallet/view_models/onboard_cubit/onboard_cubit.dart';
import 'package:flutter_crypto_wallet/view_models/passcode_bloc/passcode_bloc.dart';
import 'package:flutter_crypto_wallet/view_models/withdraw_bloc/withdraw_bloc.dart';
import 'package:flutter_crypto_wallet/views/import_token/import_token_screen.dart';
import 'package:flutter_crypto_wallet/views/import_wallet/import_wallet_screen.dart';
import 'package:flutter_crypto_wallet/views/login/login_screen.dart';
import 'package:flutter_crypto_wallet/views/onboarding_screen.dart';
import 'package:flutter_crypto_wallet/views/passcode/passcode_screen.dart';
import 'package:flutter_crypto_wallet/views/settings_screen/about_screen.dart';
import 'package:flutter_crypto_wallet/views/settings_screen/networks/networks_screen.dart';
import 'package:flutter_crypto_wallet/views/settings_screen/security/security_privacy_screen.dart';
import 'package:flutter_crypto_wallet/views/splash_screen.dart';
import 'package:flutter_crypto_wallet/views/withdraw_token/withdraw_screen.dart';

import '../di/dependency_injection.dart';
import '../view_models/auth_bloc/auth_bloc.dart';
import '../view_models/create_wallet_bloc/create_wallet_bloc.dart';
import '../view_models/import_account_bloc/import_account_bloc.dart';
import '../view_models/import_token_bloc/import_token_bloc.dart';
import '../view_models/import_wallet_bloc/import_wallet_bloc.dart';
import '../view_models/splash_bloc/splash_bloc.dart';
import '../views/create_wallet/create_wallet_screen.dart';
import '../views/forgot_password/change_password_screen.dart';
import '../views/import_account/import_account_screen.dart';
import '../views/import_wallet/import_wallet_success_screen.dart';
import '../views/nav_bar_view/nav_bar_view.dart';
import '../views/settings_screen/general/general_screen.dart';

class AppRoute {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen.id:
        return CupertinoPageRoute(
          builder: (context) => BlocProvider(
            create: (_) => getIt<SplashBloc>(param1: context.read<AuthBloc>()),
            child: const SplashScreen(),
          ),
          settings: settings,
        );
      case OnboardingScreen.id:
        return CupertinoPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<OnboardCubit>(),
            child: const OnboardingScreen(),
          ),
          settings: settings,
        );
      case CreateWalletScreen.id:
        return CupertinoPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                getIt<CreateWalletBloc>(param1: context.read<AuthBloc>()),
            child: const CreateWalletScreen(),
          ),
          settings: settings,
        );
      case ImportWalletScreen.id:
        return CupertinoPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                getIt<ImportWalletBloc>(param1: context.read<AuthBloc>()),
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
            create: (context) => getIt<LoginBloc>(),
            child: const LoginScreen(),
          ),
        );
      case PasscodeScreen.id:
        return CupertinoPageRoute(
          builder: (context) => BlocProvider(
            create: (context) =>
                getIt<PasscodeBloc>(param1: context.read<AuthBloc>()),
            child: const PasscodeScreen(),
          ),
          settings: settings,
        );
      case NavBarView.id:
        return CupertinoPageRoute(
          builder: (context) => const NavBarView(),
          settings: settings,
        );
      case ChangePasswordScreen.id:
        return CupertinoPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<ChangePasswordBloc>(),
            child: const ChangePasswordScreen(),
          ),
          settings: settings,
        );
      case GeneralScreen.id:
        return CupertinoPageRoute(
          builder: (context) => const GeneralScreen(),
          settings: settings,
        );
      case SecurityPrivacyScreen.id:
        return CupertinoPageRoute(
          builder: (context) => const SecurityPrivacyScreen(),
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
      case ImportAccountScreen.id:
        return CupertinoPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<ImportAccountBloc>(),
            child: const ImportAccountScreen(),
          ),
          settings: settings,
        );
      case ImportTokenScreen.id:
        return CupertinoPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt.call<ImportTokenBloc>(),
            child: const ImportTokenScreen(),
          ),
          settings: settings,
        );
      case WithdrawScreen.id:
        return CupertinoPageRoute(
          builder: (context) => BlocProvider(
              create: (context) =>
                  getIt.call<WithdrawBloc>(param1: context.read<AuthBloc>()),
              child: const WithdrawScreen()),
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
