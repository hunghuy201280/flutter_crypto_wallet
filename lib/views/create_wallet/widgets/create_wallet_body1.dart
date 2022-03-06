import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../configs/text_config.dart';
import '../../../generated/l10n.dart';
import '../../shared_widgets/primary_text_field.dart';
import 'checkbox_row.dart';

class CreateWalletBody1 extends StatelessWidget {
  const CreateWalletBody1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Column(
      children: [
        24.verticalSpace,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          child: Text(
            s.thisPasswordWillUnlockYourWalletOnlyOnThisDevice,
            style: TextConfigs.kLabel_9,
            textAlign: TextAlign.center,
          ),
        ),
        32.verticalSpace,
        PrimaryTextField(
          title: s.newPassword,
          obscureText: true,
          hint: s.password,
        ),
        24.verticalSpace,
        PrimaryTextField(
          title: s.confirmPassword,
          obscureText: true,
          hint: s.password,
        ),
        8.verticalSpace,
        Container(
          child: Text(
            s.mustBeAtLeastCharacters(8),
            style: TextConfigs.kBody2_2,
          ),
          alignment: Alignment.centerLeft,
        ),
        24.verticalSpace,
        CheckBoxRow(
          onChanged: (bool value) {},
        ),
        48.verticalSpace,
      ],
    );
  }
}
