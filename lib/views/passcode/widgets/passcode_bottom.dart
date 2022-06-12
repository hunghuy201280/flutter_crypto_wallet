import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crypto_wallet/configs/app_config.dart';
import 'package:flutter_crypto_wallet/utils/extensions.dart';
import 'package:flutter_crypto_wallet/view_models/passcode_bloc/passcode_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../configs/color_config.dart';
import '../../../configs/text_config.dart';
import '../../../generated/l10n.dart';
import '../../shared_widgets/primary_button.dart';

class PasscodeBottom extends StatefulWidget {
  const PasscodeBottom({Key? key}) : super(key: key);

  @override
  State<PasscodeBottom> createState() => _PasscodeBottomState();
}

class _PasscodeBottomState extends State<PasscodeBottom> {
  late PasscodeBloc _bloc;
  @override
  void initState() {
    _bloc = context.read<PasscodeBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (AppConfigs.canAuthenticateWithBiometrics)
          TextButton(
            style: TextButton.styleFrom(
              primary: AppColors.kColor9,
            ),
            onPressed: () {
              _bloc.add(const PasscodeEvent.signInWithBiometrics());
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                "fingerprint".getIcon(width: 24.w, height: 24.w),
                16.horizontalSpace,
                Text(
                  s.logInWithBiometrics,
                  style: TextConfigs.kBody2_9,
                )
              ],
            ),
          ),
        32.verticalSpace,
        PrimaryButton(
          title: s.signIn,
          backgroundColor: AppColors.kColor6,
          onTap: () {
            _bloc.add(const PasscodeEvent.signInWithPasscode());
          },
        ),
        44.verticalSpace
      ],
    );
  }
}
