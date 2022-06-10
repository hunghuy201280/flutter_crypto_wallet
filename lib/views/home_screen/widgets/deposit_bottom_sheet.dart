import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crypto_wallet/configs/color_config.dart';
import 'package:flutter_crypto_wallet/configs/text_config.dart';
import 'package:flutter_crypto_wallet/generated/l10n.dart';
import 'package:flutter_crypto_wallet/utils/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:share_plus/share_plus.dart';

import '../../../utils/utils.dart';
import '../../../view_models/auth_bloc/auth_bloc.dart';

class DepositBottomSheet extends StatelessWidget {
  const DepositBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _authBloc = context.read<AuthBloc>();
    final state = _authBloc.state;
    if (state is! Authenticated) {
      return Utils.empty;
    }
    final walletAddress = state.wallet.address;
    final s = S.of(context);
    return Material(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(40)),
      color: AppColors.kColor9,
      child: SingleChildScrollView(
        child: Column(
          children: [
            8.verticalSpace,
            Container(
              width: 92.w,
              height: 8.w,
              decoration: BoxDecoration(
                color: AppColors.kColor2,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            40.verticalSpace,
            Text(
              s.receive,
              style: TextConfigs.kSubtitle_1,
            ),
            16.verticalSpace,
            QrImage(
              data: walletAddress,
              version: QrVersions.auto,
              size: 240,
            ),
            16.verticalSpace,
            Text(
              s.scanAddressTo,
              style: TextConfigs.kSubtitle_1,
            ),
            8.verticalSpace,
            Text(
              s.or,
              style: TextConfigs.kSubtitle_5,
            ),
            8.verticalSpace,
            Material(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: AppColors.kColor5,
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                onTap: () {
                  FlutterClipboard.controlC(walletAddress);
                  Utils.showToast(context, message: s.copied);
                },
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.w),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        walletAddress.shortFor(shortForLength: 27),
                        style: TextConfigs.kCaption_9,
                      ),
                      16.horizontalSpace,
                      InkResponse(
                        onTap: () {
                          Share.share(walletAddress);
                        },
                        radius: 16,
                        child: "share".getIcon(width: 16.w, height: 16.w),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            48.verticalSpace,
          ],
        ),
      ),
    );
  }
}
