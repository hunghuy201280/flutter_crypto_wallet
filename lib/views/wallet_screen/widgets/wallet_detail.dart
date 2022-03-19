import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_ntf_marketplace/configs/text_config.dart';
import 'package:flutter_ntf_marketplace/views/wallet_screen/widgets/wallet_coin_item.dart';
import 'package:flutter_ntf_marketplace/views/wallet_screen/widgets/wallet_nft_group.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../generated/l10n.dart';

class WalletDetail extends StatefulWidget {
  const WalletDetail({Key? key}) : super(key: key);

  @override
  State<WalletDetail> createState() => _WalletDetailState();
}

class _WalletDetailState extends State<WalletDetail> {
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return DefaultTabController(
      length: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TabBar(
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
          const Expanded(
            child: TabBarView(
              children: [
                _TokenTab(),
                _NFTTab(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _TokenTab extends StatelessWidget {
  const _TokenTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => const WalletCoinItem(),
      itemCount: 5,
    );
  }
}

class _NFTTab extends StatelessWidget {
  const _NFTTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => const WalletNFTGroup(),
      itemCount: 5,
    );
    ;
  }
}
