import 'package:flutter/material.dart';
import 'package:flutter_crypto_wallet/configs/color_config.dart';
import 'package:flutter_crypto_wallet/configs/text_config.dart';
import 'package:flutter_crypto_wallet/views/wallet_screen/widgets/wallet_nft_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WalletNFTGroup extends StatelessWidget {
  const WalletNFTGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        collapsedIconColor: AppColors.kColor2,
        collapsedTextColor: AppColors.kColor2,
        iconColor: AppColors.kColor2,
        title: Text(
          "Category 1",
          style: TextConfigs.kLabel_2,
        ),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) => const WalletNFTItem(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 96.w / 120.h,
                crossAxisCount: 3,
                crossAxisSpacing: 24.w,
              ),
            ),
          )
        ],
      ),
    );
  }
}
