import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crypto_wallet/configs/color_config.dart';
import 'package:flutter_crypto_wallet/configs/text_config.dart';
import 'package:flutter_crypto_wallet/models/collection/collection.dart';
import 'package:flutter_crypto_wallet/models/token/token.dart';
import 'package:flutter_crypto_wallet/utils/extensions.dart';
import 'package:flutter_crypto_wallet/utils/helpers/status.dart';
import 'package:flutter_crypto_wallet/views/import_collection/import_collection.dart';
import 'package:flutter_crypto_wallet/views/import_token/import_token_screen.dart';
import 'package:flutter_crypto_wallet/views/wallet_screen/widgets/wallet_coin_item.dart';
import 'package:flutter_crypto_wallet/views/wallet_screen/widgets/wallet_nft_group.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
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
    final _bloc = context.read<WalletDetailBloc>();
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
              if ((status is Error || (tokens.isEmpty && status is! Loading))) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 30.h),
                  child: 'empty_box'.getIcon(
                      height: 0.3.sw, width: 0.3.sw, color: AppColors.kColor9),
                );
              }
              if ((status is Success || status is Idle)) {
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
                  constraints: BoxConstraints(minHeight: 160.h),
                  child: const Center(
                    child: SpinKitDancingSquare(
                      color: AppColors.kColor6,
                    ),
                  ),
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
                onTap: () async {
                  final res = await Navigator.of(context, rootNavigator: true)
                      .pushNamed(ImportTokenScreen.id);
                  if (res == true) {
                    _bloc.add(const WalletDetailEvent.onDataLoaded());
                  }
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
    final _bloc = context.read<WalletDetailBloc>();
    return ListView(
      physics:
          const NeverScrollableScrollPhysics(parent: BouncingScrollPhysics()),
      shrinkWrap: true,
      children: [
        BlocSelector<WalletDetailBloc, WalletDetailState,
            Tuple2<List<Collection>, Status>>(
          selector: (state) => Tuple2(state.collections, state.status),
          builder: (context, state) {
            final collections = state.item1;
            final status = state.item2;
            if (status is Error ||
                (collections.isEmpty && status is! Loading)) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 30.h),
                child: 'empty_box'.getIcon(
                    height: 0.3.sw, width: 0.3.sw, color: AppColors.kColor9),
              );
            } else if ((status is Success || status is Idle)) {
              return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) =>
                    WalletNFTGroup(collection: state.item1[index]),
                itemCount: state.item1.length,
              );
            } else {
              return Container(
                constraints: BoxConstraints(minHeight: 160.h),
                child: const Center(
                  child: SpinKitDancingSquare(
                    color: AppColors.kColor6,
                  ),
                ),
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
              s.dontSeeYourNFT,
              style: TextConfigs.kBody2_9,
            ),
            2.verticalSpace,
            GestureDetector(
              onTap: () async {
                final res = await Navigator.of(context, rootNavigator: true)
                    .pushNamed(ImportCollectionScreen.id);
                if (res == true) {
                  _bloc.add(const WalletDetailEvent.onDataLoaded());
                }
              },
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
