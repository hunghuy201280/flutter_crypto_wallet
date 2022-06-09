import 'package:custom_nested_scroll_view/custom_nested_scroll_view.dart';
import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crypto_wallet/configs/color_config.dart';
import 'package:flutter_crypto_wallet/di/dependency_injection.dart';
import 'package:flutter_crypto_wallet/utils/extensions.dart';
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
  static final _indicatorSize = 80.h;
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

  Widget _bodyScreen() {
    return SizedBox(
      width: 1.sw,
      child: CustomRefreshIndicator(
        builder: (context, child, controller) {
          return Stack(
            children: <Widget>[
              AnimatedBuilder(
                animation: controller,
                builder: (BuildContext context, Widget? _) {
                  final containerHeight = controller.value * _indicatorSize;
                  return Container(
                    alignment: Alignment.center,
                    height: containerHeight,
                    child: OverflowBox(
                      maxHeight: 40,
                      minHeight: 40,
                      maxWidth: 40,
                      minWidth: 40,
                      alignment: Alignment.center,
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 150),
                        opacity: controller.value.clamp(0.5, 1.0),
                        child: SizedBox(
                          height: 30,
                          width: 30,
                          child: CircularProgressIndicator(
                            strokeWidth: 4,
                            color: AppColors.kColor5,
                            value: controller.isDragging || controller.isArmed
                                ? controller.value.clamp(0.0, 1.0)
                                : null,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              AnimatedBuilder(
                builder: (context, _) {
                  return Transform.translate(
                    offset: Offset(0.0, controller.value * _indicatorSize),
                    child: child,
                  );
                },
                animation: controller,
              ),
            ],
          );
        },
        onRefresh: () async {
          _bloc.add(const WalletDetailEvent.balanceTokensLoaded());
          await Future.delayed(const Duration(milliseconds: 1500));
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
    );
  }
}
