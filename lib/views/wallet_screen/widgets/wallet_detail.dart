import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_ntf_marketplace/configs/text_config.dart';
import 'package:flutter_ntf_marketplace/models/token/token.dart';
import 'package:flutter_ntf_marketplace/utils/extensions.dart';
import 'package:flutter_ntf_marketplace/utils/helpers/status.dart';
import 'package:flutter_ntf_marketplace/views/import_token/import_token_screen.dart';
import 'package:flutter_ntf_marketplace/views/wallet_screen/widgets/wallet_coin_item.dart';
import 'package:flutter_ntf_marketplace/views/wallet_screen/widgets/wallet_nft_group.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tuple/tuple.dart';

import '../../../generated/l10n.dart';
import '../../../view_models/wallet_detail_bloc/wallet_detail_bloc.dart';

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
        Material(
          color: AppColors.kColor1,
          child: TabBar(
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
      ],
    );
  }
}

class _TokenTab extends StatelessWidget {
  const _TokenTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return NotificationListener<OverscrollNotification>(
      onNotification: (notification) {
        return true;
      },
      child: ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          BlocSelector<WalletDetailBloc, WalletDetailState,
              Tuple2<List<Token>, Status>>(
            selector: (state) => Tuple2(state.tokens, state.status),
            builder: (context, tuple2) {
              final tokens = tuple2.item1;
              final status = tuple2.item2;
              if ((status is Success || status is Idle) && tokens.isNotEmpty) {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => WalletCoinItem(
                    token: tokens[index],
                  ),
                  itemCount: tokens.length,
                );
              } else {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 30.h),
                  child: 'empty_box'.getIcon(
                      height: 0.3.sw, width: 0.3.sw, color: AppColors.kColor9),
                );
              }
            },
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
                onTap: () {
                  Navigator.of(context, rootNavigator: true)
                      .pushNamed(ImportTokenScreen.id);
                },
                child: Text(
                  s.importTokens,
                  style: TextConfigs.kCaption_4,
                ),
              ),
            ],
          )
        ],
      ),
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
  }
}
