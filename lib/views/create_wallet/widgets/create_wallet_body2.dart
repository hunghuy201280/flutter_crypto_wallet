import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/utils/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../configs/text_config.dart';
import '../../../generated/l10n.dart';
import '../../../utils/utils.dart';

class CreateWalletBody2 extends StatelessWidget {
  const CreateWalletBody2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    const privateKey =
        "19666ccb28cfff90b05d4c52929b4d3816a7fbcfff7bc05225264a9c862bca7a";

    return Column(
      children: [
        48.verticalSpace,
        Text(
          s.dontGiveThisPrivateKeyToAnyone,
          style: TextConfigs.kLabel_9,
        ),
        48.verticalSpace,
        GestureDetector(
          onTap: () async {
            await FlutterClipboard.copy(privateKey);
            Utils.showToast(context, message: "Copied");
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              8.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.w),
                child: Text(
                  privateKey,
                  style: TextConfigs.kSubtitle_9,
                  textAlign: TextAlign.center,
                ),
              ),
              "paper".getIcon(width: 24.w, height: 24.w),
              8.verticalSpace,
            ],
          ),
        ),
      ],
    );
  }
}
