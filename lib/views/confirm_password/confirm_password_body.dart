import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crypto_wallet/utils/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../configs/app_config.dart';
import '../../configs/color_config.dart';
import '../../configs/text_config.dart';
import '../../generated/l10n.dart';
import '../../utils/utils.dart';
import '../../view_models/confirm_password_bloc/confirm_password_bloc.dart';
import '../shared_widgets/primary_button_medium.dart';
import '../shared_widgets/primary_text_field.dart';

class ConfirmPasswordBody extends StatelessWidget {
  const ConfirmPasswordBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final bloc = context.read<ConfirmPasswordBloc>();

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24.w,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 200.w,
            child: Text(
              s.confirmYourPassword,
              style: TextConfigs.kHeader3_9,
            ),
          ),
          8.verticalSpace,
          Text(
            s.changePasswordSentence1,
            style: TextConfigs.kBody2_9,
          ),
          16.verticalSpace,
          PrimaryTextField(
            hint: s.password,
            controller: bloc.state.password,
            onChanged: (value) {},
          ),
          24.verticalSpace,
          PrimaryButtonMedium(
            title: s.confirm,
            onTap: () {
              Utils.closeKeyboard();
              bloc.add(const ConfirmPasswordConfirmed());
            },
          ),
          if (AppConfigs.canAuthenticateWithBiometrics) ...[
            16.verticalSpace,
            Center(
              child: Text(
                s.or,
                style: TextConfigs.kBody2_9,
              ),
            ),
            Center(
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: AppColors.kColor9,
                ),
                onPressed: () {
                  bloc.add(const ConfirmPasswordFingerprintAuthenticated());
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
            ),
          ]
        ],
      ),
    );
  }
}
