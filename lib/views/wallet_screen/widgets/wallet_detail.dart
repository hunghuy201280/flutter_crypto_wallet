import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_ntf_marketplace/configs/text_config.dart';
import 'package:flutter_ntf_marketplace/views/nav_bar_view/nav_bar_view.dart';
import 'package:flutter_ntf_marketplace/views/wallet_screen/widgets/wallet_coin_item.dart';
import 'package:flutter_ntf_marketplace/views/wallet_screen/widgets/wallet_nft_group.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../generated/l10n.dart';

class WalletDetail extends StatefulWidget {
  final TabController tabController;
  const WalletDetail({Key? key, required this.tabController}) : super(key: key);

  @override
  State<WalletDetail> createState() => _WalletDetailState();
}

class _WalletDetailState extends State<WalletDetail> {
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Column(
      children: [
        TabBar(
          controller: widget.tabController,
          tabs: [
            Tab(
              text: s.tokens,
            ),
            Tab(
              text: s.nfts,
            )
          ],
          labelStyle: TextConfigs.kLabel_9,
          indicatorColor: AppColors.kColor2,
          indicatorWeight: 2.w,
        ),
        Expanded(
          child: TabBarView(
            controller: widget.tabController,
            children: const [
              _TokenTab(),
              _NFTTab(),
            ],
          ),
        ),
        SizedBox(
          height: NavBarView.height.w,
        ),
      ],
    );
  }
}

class _TokenTab extends StatelessWidget {
  const _TokenTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return ListView(
      physics:
          const NeverScrollableScrollPhysics(parent: BouncingScrollPhysics()),
      shrinkWrap: true,
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => const WalletCoinItem(),
          itemCount: 20,
        ),
        16.verticalSpace,
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              s.dontSeeYourToken,
              style: TextConfigs.kBody2_9,
            ),
            2.verticalSpace,
            GestureDetector(
              onTap: () {},
              child: Text(
                s.importTokens,
                style: TextConfigs.kCaption_4,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class _NFTTab extends StatelessWidget {
  const _NFTTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return ListView(
      physics:
          const NeverScrollableScrollPhysics(parent: BouncingScrollPhysics()),
      shrinkWrap: true,
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => const WalletNFTGroup(),
          itemCount: 3,
        ),
        16.verticalSpace,
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              s.dontSeeYourNFT,
              style: TextConfigs.kBody2_9,
            ),
            2.verticalSpace,
            GestureDetector(
              onTap: () {},
              child: Text(
                s.importNFTs,
                style: TextConfigs.kCaption_4,
              ),
            ),
          ],
        )
      ],
    );
    ;
  }
}
