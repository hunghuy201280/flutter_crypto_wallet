import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crypto_wallet/routes/app_route.dart';
import 'package:flutter_crypto_wallet/utils/shared_widgets/loading/load.dart';
import 'package:flutter_crypto_wallet/utils/utils.dart';
import 'package:flutter_crypto_wallet/view_models/app_bloc/app_bloc.dart';
import 'package:flutter_crypto_wallet/view_models/auth_bloc/auth_bloc.dart';
import 'package:flutter_crypto_wallet/views/no_internet_screen.dart';
import 'package:flutter_crypto_wallet/views/shared_widgets/app_loading_indicator.dart';
import 'package:flutter_crypto_wallet/views/splash_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';

import 'di/dependency_injection.dart';
import 'generated/l10n.dart';

class NFTApp extends StatefulWidget {
  const NFTApp({Key? key}) : super(key: key);

  @override
  State<NFTApp> createState() => _NFTAppState();
}

class _NFTAppState extends State<NFTApp> {
  @override
  void dispose() async {
    Hive.close();
    connectivitySubscription?.cancel();

    super.dispose();
  }

  bool isInNoConnectionScreen = false;
  StreamSubscription? connectivitySubscription;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) async {
      final connectionState = await Connectivity().checkConnectivity();
      if (connectionState == ConnectivityResult.none) {
        if (mounted) {
          await navKey.currentState!.pushNamed(NoInternetScreen.id);
        }
      }
      connectivitySubscription =
          Connectivity().onConnectivityChanged.listen((connectionState) async {
        if (connectionState == ConnectivityResult.none) {
          if (mounted && !isInNoConnectionScreen) {
            final actualState = await Connectivity().checkConnectivity();
            if (actualState != ConnectivityResult.none) {
              return;
            }
            isInNoConnectionScreen = true;
            await navKey.currentState!.pushNamed(NoInternetScreen.id);
            isInNoConnectionScreen = false;
          }
        }
      });
    });
  }

  static final navKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(
            create: (context) => getIt<AuthBloc>(),
          ),
        ],
        child: ScreenUtilInit(
          designSize: const Size(390, 844),
          builder: (context, widget) {
            return MaterialApp(
              navigatorKey: navKey,
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              locale: context.watch<AppBloc>().state.locale,
              debugShowCheckedModeBanner: false,
              initialRoute: SplashScreen.id,
              onGenerateRoute: AppRoute.onGenerateRoute,
              builder: (context, widget) {
                if (widget == null) {
                  debugPrint("Material builder: widget is null");
                  return Utils.empty;
                }
                return GlobalLoading(
                  themeData: LoadingThemeData(
                    tapDismiss: false,
                  ),
                  loadingWidgetBuilder: (context, themeData) {
                    return const AppLoadingIndicator();
                  },
                  child: widget,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
