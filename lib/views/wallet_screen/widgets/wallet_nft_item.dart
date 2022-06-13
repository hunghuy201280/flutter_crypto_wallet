import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crypto_wallet/configs/color_config.dart';
import 'package:flutter_crypto_wallet/configs/text_config.dart';
import 'package:flutter_crypto_wallet/models/nft/nft.dart';
import 'package:flutter_crypto_wallet/views/nft_detail/nft_detail.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../view_models/wallet_detail_bloc/wallet_detail_bloc.dart';

class WalletNFTItem extends StatelessWidget {
  final String collectionAddress;
  final Nft nft;
  const WalletNFTItem(
      {Key? key, required this.nft, required this.collectionAddress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _bloc = context.read<WalletDetailBloc>();
    return InkWell(
      onTap: () async {
        final result = await Navigator.of(context, rootNavigator: true)
            .pushNamed(NftDetail.id, arguments: [collectionAddress, nft]);
        if (result is bool && result) {
          _bloc.add(const WalletDetailEvent.NFTsLoaded());
        }
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.w),
        child: Container(
          color: AppColors.kColor4,
          child: nft.image != null &&
                  (Uri.tryParse(nft.image ?? '')?.hasAbsolutePath ?? false)
              ? CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: nft.image!,
                  placeholder: (context, url) => Center(
                    child: Text(
                      "#${nft.tokenId}",
                      style: TextConfigs.kHeader4_9,
                    ),
                  ),
                  errorWidget: (context, url, number) {
                    return Center(
                      child: Text(
                        "#${nft.tokenId}",
                        style: TextConfigs.kHeader4_9,
                      ),
                    );
                  },
                )
              : Center(
                  child: Text(
                    "#${nft.tokenId}",
                    style: TextConfigs.kHeader4_9,
                  ),
                ),
        ),
      ),
    );
  }
}
