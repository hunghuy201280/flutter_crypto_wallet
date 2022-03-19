import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/configs/app_config.dart';
import 'package:flutter_ntf_marketplace/configs/text_config.dart';
import 'package:flutter_ntf_marketplace/utils/extensions.dart';
import 'package:flutter_ntf_marketplace/views/shared_widgets/secondary_avatar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WalletCoinItem extends StatefulWidget {
  const WalletCoinItem({Key? key}) : super(key: key);

  @override
  State<WalletCoinItem> createState() => _WalletCoinItemState();
}

class _WalletCoinItemState extends State<WalletCoinItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: InkRipple.splashFactory,
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SecondaryAvatar(
              size: 48.w,
              fit: BoxFit.cover,
              imageUrl: AppConfigs.tempImage,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "0 MATIC",
                      style: TextConfigs.kBody2_9,
                    ),
                    Text(
                      "\$ 0",
                      style: TextConfigs.kCaption_9,
                    ),
                  ],
                ),
              ),
            ),
            "arrow_right_ios".getIcon()
          ],
        ),
      ),
    );
  }
}
