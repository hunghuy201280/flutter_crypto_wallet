import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crypto_wallet/configs/app_config.dart';
import 'package:flutter_crypto_wallet/configs/color_config.dart';
import 'package:flutter_crypto_wallet/configs/text_config.dart';
import 'package:flutter_crypto_wallet/utils/extensions.dart';
import 'package:flutter_crypto_wallet/views/shared_widgets/primary_avatar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/utils.dart';
import '../../../view_models/auth_bloc/auth_bloc.dart';

class WalletInfo extends StatefulWidget {
  const WalletInfo({Key? key}) : super(key: key);

  @override
  State<WalletInfo> createState() => _WalletInfoState();
}

class _WalletInfoState extends State<WalletInfo> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is! Authenticated) {
          return Utils.empty;
        }
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
                "Account ${state.wallet.index}",
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
                    padding:
                        EdgeInsets.symmetric(horizontal: 21.w, vertical: 5.h),
                    child: Text(
                      state.wallet.address.shortFor(shortForLength: 27),
                      style: TextConfigs.kBody2_9,
                    ),
                  ),
                ),
              ),
              16.verticalSpace,
              Text(
                '${state.wallet.balanceToken?.balance ?? 0} BNB',
                style: TextConfigs.kLabel_9,
              )
            ],
          ),
        );
      },
    );
  }
}
