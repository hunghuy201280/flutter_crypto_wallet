import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crypto_wallet/configs/app_config.dart';
import 'package:flutter_crypto_wallet/configs/color_config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../configs/text_config.dart';
import '../../../generated/l10n.dart';
import '../../../view_models/passcode_bloc/passcode_bloc.dart';
import '../../shared_widgets/primary_avatar.dart';
import '../../shared_widgets/primary_text_field.dart';

class PasscodeBody extends StatefulWidget {
  const PasscodeBody({Key? key}) : super(key: key);

  @override
  State<PasscodeBody> createState() => _PasscodeBodyState();
}

class _PasscodeBodyState extends State<PasscodeBody> {
  late PasscodeBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = context.read<PasscodeBloc>();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        PrimaryAvatar(
          size: 96.w,
          imageUrl: AppConfigs.tempImage,
        ),
        24.verticalSpace,
        Text(
          s.welcomeBack,
          style: TextConfigs.kHeader3_9,
        ),
        94.verticalSpace,
        BlocSelector<PasscodeBloc, PasscodeState, bool>(
          selector: (state) => state.isShowPassword,
          builder: (context, isShowPassword) {
            return PrimaryTextField(
              title: s.password,
              obscureText: true,
              hint: s.password,
              onSubmitted: (_) {
                _bloc.add(const PasscodeEvent.signInWithPasscode());
              },
              onChanged: (value) {
                _bloc.add(PasscodeEvent.passCodeChanged(passCode: value));
              },
            );
          },
        ),
        16.verticalSpace,
        Row(
          children: [
            Text(
              s.signInWithBiometrics,
              style: TextConfigs.kBody2_9,
            ),
            const Expanded(child: SizedBox()),
            BlocSelector<PasscodeBloc, PasscodeState, bool>(
              selector: (state) => state.isSignInBiometric,
              builder: (context, isSignInBiometric) {
                return Switch(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  hoverColor: AppColors.kColor6,
                  activeColor: AppColors.kColor6,
                  inactiveThumbColor: AppColors.kColor9,
                  value: isSignInBiometric,
                  onChanged: (value) {
                    _bloc.add(
                        PasscodeEvent.stateSignInWithBiometricsChanged(value));
                  },
                );
              },
            )
          ],
        )
      ],
    );
  }
}
