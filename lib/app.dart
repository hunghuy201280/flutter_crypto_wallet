import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_ntf_marketplace/routes/app_route.dart';
import 'package:flutter_ntf_marketplace/view_models/app_provider.dart';
import 'package:flutter_ntf_marketplace/view_models/auth_bloc/auth_bloc.dart';
import 'package:flutter_ntf_marketplace/view_models/login_bloc/login_bloc.dart';
import 'package:flutter_ntf_marketplace/views/login/login_screen.dart';
import 'package:flutter_ntf_marketplace/views/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'generated/l10n.dart';

class NFTApp extends StatelessWidget {
  const NFTApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(),
        ),
      ],
      child: ScreenUtilInit(
        //Put Figma size here
        designSize: const Size(390, 844),
        builder: () {
          return MaterialApp(
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
          );
        },
      ),
    );
  }
}
