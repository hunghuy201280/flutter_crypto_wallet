import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crypto_wallet/utils/extensions.dart';
import 'package:flutter_crypto_wallet/view_models/create_wallet_bloc/create_wallet_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../configs/text_config.dart';
import '../../../generated/l10n.dart';
import '../../../utils/utils.dart';

class CreateWalletBody2 extends StatelessWidget {
  const CreateWalletBody2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return BlocSelector<CreateWalletBloc, CreateWalletState, String?>(
        selector: (state) => state.mnemonic,
        builder: (context, mnemonic) {
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
                  await FlutterClipboard.copy(mnemonic ?? '');
                  Utils.showToast(context, message: s.copied);
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    8.verticalSpace,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: Text(
                        mnemonic ?? '',
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
