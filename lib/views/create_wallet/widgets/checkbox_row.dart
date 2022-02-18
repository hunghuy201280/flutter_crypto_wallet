import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/utils/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../configs/color_config.dart';
import '../../../configs/text_config.dart';
import '../../../generated/l10n.dart';
import '../../shared_widgets/custom_checkbox.dart';

class CheckBoxRow extends StatefulWidget {
  const CheckBoxRow({
    Key? key,
  }) : super(key: key);

  @override
  State<CheckBoxRow> createState() => _CheckBoxRowState();
}

class _CheckBoxRowState extends State<CheckBoxRow> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        24.horizontalSpace,
        CustomCheckBox(
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = !isChecked;
            });
          },
          checkBoxSize: 24.w,
          checkedFillColor: Colors.transparent,
          borderColor: AppColors.kColor9,
          uncheckedFillColor: Colors.transparent,
          uncheckedIcon: const Icon(
            Icons.check,
            size: 20,
            color: AppColors.kColor9,
          ),
          shouldShowBorder: true,
        ),
        8.horizontalSpace,
        Flexible(
          child: Text(
            s.iUnderstandThatAppNameCannotRecoverThisPasswordForMe(s.appName),
            style: TextConfigs.kBody2_9,
          ),
        ),
        24.horizontalSpace,
      ],
    );
  }
}
