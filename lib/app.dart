import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_ntf_marketplace/routes/app_route.dart';
import 'package:flutter_ntf_marketplace/view_models/app_provider.dart';
import 'package:flutter_ntf_marketplace/view_models/auth_bloc/auth_bloc.dart';
import 'package:flutter_ntf_marketplace/views/passcode/passcode_screen.dart';
import 'package:flutter_ntf_marketplace/views/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';

import 'generated/l10n.dart';

class NFTApp extends StatefulWidget {
  const NFTApp({Key? key}) : super(key: key);

  @override
  State<NFTApp> createState() => _NFTAppState();
}

class _NFTAppState extends State<NFTApp> {
  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MultiProvider(
        providers: [
          BlocProvider<AuthBloc>(
            create: (context) => AuthBloc(),
          ),
        ],
        child: ScreenUtilInit(
          //Put Figma size here
          designSize: const Size(390, 844),
          builder: () {
            return BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                state.when(
                  unauthenticated: () {},
                  authenticatedNoPassword: (walletAddress) {
                    Navigator.pushNamedAndRemoveUntil(
                        context, PasscodeScreen.id, (route) => false);
                  },
                  authenticated: (wallet) {},
                );
              },
              child: MaterialApp(
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,
                locale: context.watch<AppProvider>().locale,
                debugShowCheckedModeBanner: false,
                initialRoute: SplashScreen.id,
                onGenerateRoute: AppRoute.onGenerateRoute,
                builder: (context, widget) {
                  if (widget == null) {
                    debugPrint("Material builder: widget is null");
                    return const SizedBox();
                  }
                  ScreenUtil.setContext(context);
                  return widget;
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
