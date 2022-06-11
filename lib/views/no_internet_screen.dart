import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crypto_wallet/configs/text_config.dart';
import 'package:flutter_crypto_wallet/utils/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../configs/color_config.dart';
import '../generated/l10n.dart';

class NoInternetScreen extends StatefulWidget {
  const NoInternetScreen({Key? key}) : super(key: key);
  static const id = "NoInternetScreen";

  @override
  State<NoInternetScreen> createState() => _NoInternetScreenState();
}

class _NoInternetScreenState extends State<NoInternetScreen> {
  @override
  void initState() {
    super.initState();

    connectivitySubscription =
        Connectivity().onConnectivityChanged.listen((connectionState) async {
      if (connectionState != ConnectivityResult.none) {
        Navigator.pop(context);
      }
    });
  }

  StreamSubscription? connectivitySubscription;
  @override
  void dispose() async {
    connectivitySubscription?.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: AppColors.kColor1,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: const [],
            ),
            SizedBox(
              height: 0.2.sh,
            ),
            "cloud_disabled".getIcon(),
            48.verticalSpace,
            Text(
              s.offline,
              style: TextConfigs.kHeader4_9,
              textAlign: TextAlign.center,
            ),
            16.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 48.w,
              ),
              child: Text(
                s.unableToConnectToTheBlockchainHost,
                style: TextConfigs.kLabel_9,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
