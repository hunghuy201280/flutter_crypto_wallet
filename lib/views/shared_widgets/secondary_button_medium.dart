import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../configs/text_config.dart';
import '../../utils/utils.dart';

class SecondaryButtonMedium extends StatelessWidget {
  const SecondaryButtonMedium(
      {Key? key,
      required this.title,
      required this.backgroundColor,
      this.horizontalMargin,
      this.verticalPadding,
      this.onTap,
      this.leading,
      this.style,
      this.isOutline})
      : super(key: key);

  final String title;
  final Color backgroundColor;
  final double? horizontalMargin;
  final double? verticalPadding;
  final GestureTapCallback? onTap;
  final Widget? leading;
  final TextStyle? style;
  final bool? isOutline;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalMargin ?? 0),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          primary: backgroundColor,
          side: BorderSide(color: backgroundColor, width: 1.w),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.w),
            ),
          ),
          padding: EdgeInsets.symmetric(
            vertical: verticalPadding ?? 13.h,
            horizontal: 24.w,
          ),
          minimumSize: Size(1.sw, 0),
          maximumSize: Size(1.sw, 1.sh),
        ),
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Utils.empty,
            if (leading != null) leading!,
            Text(
              title,
              style: style ?? TextConfigs.kLabel_9,
            ),
            if (leading != null)
              Opacity(
                child: leading!,
                opacity: 0,
              ),
            Utils.empty,
          ],
        ),
      ),
    );
  }
}
