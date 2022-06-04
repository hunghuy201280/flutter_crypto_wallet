import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../configs/color_config.dart';
import '../../configs/text_config.dart';

class PrimaryButtonMedium extends StatelessWidget {
  const PrimaryButtonMedium({
    Key? key,
    required this.title,
    this.backgroundColor = AppColors.kColor6,
    this.horizontalMargin,
    this.verticalPadding,
    required this.onTap,
    this.leading,
    this.style,
  }) : super(key: key);

  final String title;
  final Color backgroundColor;
  final double? horizontalMargin;
  final double? verticalPadding;
  final GestureTapCallback? onTap;
  final Widget? leading;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: horizontalMargin ?? 0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: backgroundColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          padding: EdgeInsets.symmetric(
            vertical: verticalPadding ?? 16.h,
          ),
        ),
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leading != null)
              Expanded(
                child: Row(
                  children: [
                    leading!,
                    const Spacer(),
                  ],
                ),
              ),
            Text(
              title,
              style: style ?? TextConfigs.kLabel_9,
            ),
            if (leading != null) const Spacer(),
          ],
        ),
      ),
    );
  }
}
