import 'package:flutter/material.dart';
import 'package:flutter_crypto_wallet/di/dependency_injection.dart';
import 'package:flutter_crypto_wallet/views/nav_bar_view/nav_bar_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';

import '../configs/color_config.dart';
import '../services/local/local_provider.dart';
import '../services/remote/remote_provider.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);
  static const id = "LoadingScreen";

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  final _localProvider = getIt<LocalProvider>();
  final _remoteProvider = getIt<RemoteProvider>();
  @override
  void initState() {
    super.initState();
    _load();
  }

  _load() async {
    final selectedWallet = _localProvider.getSelectedWallet();
    final response =
        await _remoteProvider.getWalletInfo(selectedWallet.address);
    final updatedWallet = selectedWallet.copyWith(
      balanceToken: response.result!,
    );
    await _localProvider.setSavedWallet(updatedWallet);
    Navigator.pushNamed(context, NavBarView.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kColor1,
      body: Center(
        child: Hero(
          tag: 'icon_app',
          child: Shimmer.fromColors(
            highlightColor: AppColors.kColor9,
            baseColor: AppColors.kColor6,
            child: SvgPicture.asset(
              'assets/icons/icon_app.svg',
              width: 160.w,
              height: 160.w,
              color: AppColors.kColor6,
            ),
          ),
        ),
      ),
    );
  }
}
