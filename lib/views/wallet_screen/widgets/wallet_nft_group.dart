import 'package:flutter/material.dart';
import 'package:flutter_crypto_wallet/configs/color_config.dart';
import 'package:flutter_crypto_wallet/configs/text_config.dart';
import 'package:flutter_crypto_wallet/views/wallet_screen/widgets/wallet_nft_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../models/collection/collection.dart';

class WalletNFTGroup extends StatelessWidget {
  final Collection collection;
  const WalletNFTGroup({Key? key, required this.collection}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        collapsedIconColor: AppColors.kColor2,
        collapsedTextColor: AppColors.kColor2,
        iconColor: AppColors.kColor2,
        title: Text(
          collection.name.toString(),
          style: TextConfigs.kLabel_2,
        ),
        children: [
          if (collection.items != null && collection.items!.isNotEmpty)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: collection.items?.length,
                itemBuilder: (context, index) => WalletNFTItem(
                    collectionAddress: collection.address,
                    nft: collection.items!.elementAt(index)),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 96.w / 120.h,
                  crossAxisCount: 3,
                  mainAxisSpacing: 24.w,
                  crossAxisSpacing: 24.w,
                ),
              ),
            )
        ],
      ),
    );
  }
}
