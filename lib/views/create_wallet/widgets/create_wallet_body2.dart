import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ntf_marketplace/utils/extensions.dart';
import 'package:flutter_ntf_marketplace/view_models/create_wallet_bloc/create_wallet_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../configs/text_config.dart';
import '../../../generated/l10n.dart';
import '../../../utils/utils.dart';

class CreateWalletBody2 extends StatelessWidget {
  const CreateWalletBody2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return BlocBuilder<CreateWalletBloc, CreateWalletState>(
        builder: (context, state) {
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
              await FlutterClipboard.copy(state.mnemonic ?? '');
              Utils.showToast(context, message: "Copied");
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                8.verticalSpace,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Text(
                    state.mnemonic ?? '',
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
    });
  }
}
