import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../configs/color_config.dart';
import '../../configs/text_config.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.title,
    this.backgroundColor = AppColors.kColor6,
    this.horizontalPadding,
    this.verticalPadding,
    this.onTap,
  }) : super(key: key);

  final String title;
  final Color backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final GestureTapCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding ?? 24.w),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.w),
            ),
          ),
          padding: EdgeInsets.symmetric(
            vertical: verticalPadding ?? 16.h,
          ),
          minimumSize: Size(1.sw, 0),
          maximumSize: Size(1.sw, 1.sh),
        ),
        onPressed: onTap,
        child: Text(
          title,
          style: TextConfigs.kHeader4_9,
        ),
      ),
    );
  }
}
