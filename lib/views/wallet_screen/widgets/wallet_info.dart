import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/configs/app_config.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_ntf_marketplace/configs/text_config.dart';
import 'package:flutter_ntf_marketplace/views/shared_widgets/primary_avatar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../generated/l10n.dart';
import '../../../utils/utils.dart';

class WalletInfo extends StatefulWidget {
  const WalletInfo({Key? key}) : super(key: key);

  @override
  State<WalletInfo> createState() => _WalletInfoState();
}

class _WalletInfoState extends State<WalletInfo> {
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Container(
      color: AppColors.kColor1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          PrimaryAvatar(
            size: 88.w,
            imageUrl: AppConfigs.tempImage,
            borderColor: AppColors.kColor9,
          ),
          16.verticalSpace,
          Text(
            'Account 1',
            style: TextConfigs.kBody2_9,
          ),
          10.verticalSpace,
          Material(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.w),
            ),
            clipBehavior: Clip.hardEdge,
            color: AppColors.kColor5,
            child: InkWell(
              onTap: () {
                FlutterClipboard.controlC("text");
                Utils.showToast(context, message: "Copied");
              },
              splashFactory: InkRipple.splashFactory,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.w, vertical: 5.h),
                child: Text(
                  "0x888888848B652a2...F72",
                  style: TextConfigs.kBody2_9,
                ),
              ),
            ),
          ),
          16.verticalSpace,
          Text(
            '\$ 10.000',
            style: TextConfigs.kLabel_9,
          )
        ],
      ),
    );
  }
}
