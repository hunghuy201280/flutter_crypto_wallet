import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_ntf_marketplace/configs/text_config.dart';
import 'package:flutter_ntf_marketplace/views/wallet_screen/widgets/wallet_detail.dart';
import 'package:flutter_ntf_marketplace/views/wallet_screen/widgets/wallet_info.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/l10n.dart';

class WalletScreen extends StatefulWidget {
  static const id = "WalletScreen";
  WalletScreen({Key? key}) : super(key: key);
  static WalletScreen get instance {
    return WalletScreen();
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
          SliverToBoxAdapter(
            child: SizedBox(
              height: 0.4.sh,
              child: const WalletInfo(),
            ),
          ),
        ],
        physics: const BouncingScrollPhysics(),
        body: WalletDetail(
          tabController: _tabController,
        ),
      ),
    );
  }
}
