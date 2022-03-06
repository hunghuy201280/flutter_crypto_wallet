import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../configs/color_config.dart';
import '../../../configs/text_config.dart';
import '../../../generated/l10n.dart';
import '../../shared_widgets/custom_checkbox.dart';

class CheckBoxRow extends StatefulWidget {
  const CheckBoxRow({
    Key? key,
    required this.onChanged,
  }) : super(key: key);
  final ValueChanged<bool> onChanged;
  @override
  State<CheckBoxRow> createState() => _CheckBoxRowState();
}

class _CheckBoxRowState extends State<CheckBoxRow> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return GestureDetector(
      onTap: onCheckChanged,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomCheckBox(
            value: isChecked,
            onChanged: onCheckChanged,
            checkBoxSize: 24.w,
            checkedFillColor: AppColors.kColor6,
            borderColor: AppColors.kColor9,
            uncheckedFillColor: Colors.transparent,
            shouldShowBorder: true,
            checkedIcon: const SizedBox.shrink(),
          ),
          8.horizontalSpace,
          Flexible(
            child: Text(
              s.iUnderstandThatAppNameCannotRecoverThisPasswordForMe(s.appName),
              style: TextConfigs.kBody2_9,
            ),
          ),
        ],
      ),
    );
  }

  void onCheckChanged() {
    setState(() {
      isChecked = !isChecked;
    });
    widget.onChanged(isChecked);
  }
}
