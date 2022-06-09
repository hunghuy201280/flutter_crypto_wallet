import 'package:flutter/material.dart';
import 'package:flutter_crypto_wallet/configs/color_config.dart';
import 'package:flutter_crypto_wallet/configs/text_config.dart';
import 'package:flutter_crypto_wallet/utils/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingItem extends StatelessWidget {
  final String title;
  final String description;
  final GestureTapCallback action;
  const SettingItem(
      {Key? key,
      required this.title,
      required this.description,
      required this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: InkRipple.splashFactory,
      onTap: action,
      child: Container(
        constraints: BoxConstraints(
          minHeight: 104.h,
        ),
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextConfigs.kSubtitle_9,
                  ),
                  Text(
                    description,
                    style: TextConfigs.kCaption_9,
                  ),
                ],
              ),
            ),
            34.horizontalSpace,
            'arrow_right_ios'.getIcon(
              width: 24.w,
              height: 24.h,
              color: AppColors.kColor9,
            )
          ],
        ),
      ),
    );
  }
}
