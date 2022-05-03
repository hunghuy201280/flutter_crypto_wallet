import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_ntf_marketplace/di/dependency_injection.dart';
import 'package:flutter_ntf_marketplace/utils/extensions.dart';
import 'package:flutter_ntf_marketplace/views/wallet_screen/widgets/wallet_detail.dart';
import 'package:flutter_ntf_marketplace/views/wallet_screen/widgets/wallet_info.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/l10n.dart';
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

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _scrollController = ScrollController();
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
    final s = S.of(context);
    return SizedBox(
      width: 1.sw,
      child: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SizedBox(
            height: 0.4.sh,
            child: const WalletInfo(),
          ).toSliver,
        ],
        physics: const BouncingScrollPhysics(),
        body: WalletDetail(
          tabController: _tabController,
        ),
      ),
    );
  }
}
