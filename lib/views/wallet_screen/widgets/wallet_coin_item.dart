import 'package:flutter/material.dart';
import 'package:flutter_crypto_wallet/configs/text_config.dart';
import 'package:flutter_crypto_wallet/services/local/local_provider.dart';
import 'package:flutter_crypto_wallet/utils/extensions.dart';
import 'package:flutter_crypto_wallet/views/shared_widgets/secondary_avatar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../di/dependency_injection.dart';
import '../../../models/token/token.dart';

class WalletCoinItem extends StatefulWidget {
  const WalletCoinItem({Key? key, required this.token}) : super(key: key);
  final Token token;
  @override
  State<WalletCoinItem> createState() => _WalletCoinItemState();
}

class _WalletCoinItemState extends State<WalletCoinItem> {
  final _localProvider = getIt<LocalProvider>();
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
              data: widget.token.avatar ?? _localProvider.getDefaultJazzicon(),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${widget.token.balance.toStringAsFixed(3)} ${widget.token.symbol}",
                      style: TextConfigs.kBody2_9,
                    ),
                    Text(
                      "\$ ${widget.token.amount}",
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
