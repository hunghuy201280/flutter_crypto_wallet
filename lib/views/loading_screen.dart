import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crypto_wallet/di/dependency_injection.dart';
import 'package:flutter_crypto_wallet/utils/utils.dart';
import 'package:flutter_crypto_wallet/view_models/auth_bloc/auth_bloc.dart';
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
  late AuthBloc _authBloc;
  @override
  void initState() {
    _authBloc = context.read<AuthBloc>();
    super.initState();
    _load();
  }

  _load() async {
    try {
      final selectedWallet = _localProvider.getSelectedWallet();
      final response =
          await _remoteProvider.getWalletInfo(selectedWallet.address);
      final updatedWallet = selectedWallet.copyWith(
        balanceToken: response.result!,
      );
      await _localProvider.setSavedWallet(updatedWallet);
      _authBloc.add(const AuthEvent.reloadSelectedWallet());
      Navigator.pushNamed(context, NavBarView.id);
    } catch (e, trace) {
      printLog(this, message: "Error", error: e, trace: trace);
      _load();
    }
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
