import 'dart:async';

import 'package:custom_nested_scroll_view/custom_nested_scroll_view.dart';
import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crypto_wallet/configs/color_config.dart';
import 'package:flutter_crypto_wallet/di/dependency_injection.dart';
import 'package:flutter_crypto_wallet/utils/extensions.dart';
import 'package:flutter_crypto_wallet/utils/helpers/status.dart';
import 'package:flutter_crypto_wallet/views/shared_widgets/app_refresh_loading_indicator.dart';
import 'package:flutter_crypto_wallet/views/wallet_screen/widgets/wallet_detail.dart';
import 'package:flutter_crypto_wallet/views/wallet_screen/widgets/wallet_info.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../view_models/auth_bloc/auth_bloc.dart';
import '../../view_models/wallet_detail_bloc/wallet_detail_bloc.dart';

class WalletScreen extends StatefulWidget {
  static const id = "WalletScreen";

  const WalletScreen({Key? key}) : super(key: key);

  static BlocProvider get instance {
    return BlocProvider<WalletDetailBloc>(
      create: (context) =>
          getIt<WalletDetailBloc>(param1: context.read<AuthBloc>()),
      child: const WalletScreen(),
    );
  }

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController _scrollController;
  late WalletDetailBloc _bloc;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _scrollController = ScrollController();
    _bloc = context.read<WalletDetailBloc>();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kColor1,
      body: _bodyScreen(),
    );
  }

  Completer? _refreshCompleter;

  Widget _bodyScreen() {
    return MultiBlocListener(
      listeners: [
        BlocListener<WalletDetailBloc, WalletDetailState>(
            listener: (context, state) {
          switch (state.status.runtimeType) {
            case Success:
            case Error:
              _refreshCompleter?.complete();
              _refreshCompleter = null;
              break;
          }
        }),
        BlocListener<AuthBloc, AuthState>(listener: (context, state) {
          if (state is Authenticated) {
            _bloc.add(const WalletDetailEvent.balanceTokensLoaded());
          }
        })
      ],
      child: SizedBox(
        width: 1.sw,
        child: CustomRefreshIndicator(
          builder: (context, child, controller) {
            return AppRefreshLoadingIndicator(
              controller: controller,
              child: child,
            );
          },
          onRefresh: () {
            _refreshCompleter = Completer();
            _bloc.add(const WalletDetailEvent.balanceTokensLoaded());
            return _refreshCompleter!.future;
          },
          child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (notification) {
              notification.disallowIndicator();
              return true;
            },
            child: CustomNestedScrollView(
              controller: _scrollController,
              headerSliverBuilder: (context, check) => [
                SizedBox(
                  height: 0.3.sh,
                  child: const WalletInfo(),
                ).toSliver,
              ],
              overscrollType: CustomOverscroll.outer,
              physics: const ClampingScrollPhysics(),
              body: WalletDetail(
                tabController: _tabController,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
