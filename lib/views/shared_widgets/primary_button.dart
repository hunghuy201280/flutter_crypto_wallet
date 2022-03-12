import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../configs/color_config.dart';
import '../../configs/text_config.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalMargin ?? 0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: backgroundColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          padding: EdgeInsets.symmetric(
            vertical: verticalPadding ?? 16.h,
            horizontal: 24.w,
          ),
          minimumSize: Size(1.sw, 0),
          maximumSize: Size(1.sw, 1.sh),
        ),
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (leading != null) leading!,
            Text(
              title,
              style: style ?? TextConfigs.kHeader4_9,
            ),
            if (leading != null)
              Opacity(
                child: leading!,
                opacity: 0,
              ),
          ],
        ),
      ),
    );
  }
}
