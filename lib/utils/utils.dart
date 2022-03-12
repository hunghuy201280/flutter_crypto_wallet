import 'dart:math';

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_ntf_marketplace/utils/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shimmer/shimmer.dart';

import '../configs/text_config.dart';

class Utils {
  static int getRandom(int to, {int from = 0}) {
    if (to == 0) return 0;
    return (Random().nextInt(to - from) + from);
  }

  static Future showCompleteSnackBar(context,
      {required String message,
      FlushbarPosition position = FlushbarPosition.TOP}) async {
    await Flushbar(
      messageText: Text(
        message,
        style: TextConfigs.kBody2_9,
      ),
      backgroundColor: AppColors.kColor6,
      duration: const Duration(seconds: 2),
      borderRadius: BorderRadius.circular(10),
      margin: EdgeInsets.only(bottom: 24.h),
      flushbarPosition: position,
    ).show(context);
  }

  static Future showToast(context, {required String message}) async {
    Fluttertoast.showToast(msg: message);
  }

  static AppBar buildAppBar(BuildContext context,
      {required String title, GestureTapCallback? onTap}) {
    return AppBar(
      title: Text(
        title,
        style: TextConfigs.kHeader4_9,
      ),
      backgroundColor: AppColors.kColor1,
      elevation: 0,
      leading: IconButton(
        icon: "arrow_left".getIcon(width: 24.w, height: 24.w),
        splashRadius: 14.w,
        onPressed: () {
          if (onTap != null) {
            return onTap();
          }
          Navigator.maybePop(context);
        },
      ),
    );
  }

  static Widget get empty => const SizedBox.shrink();

  static Shimmer getShimmer(
          {double borderRadius = 0, double? width, double? height}) =>
      Shimmer(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: SizedBox.fromSize(
            size: Size(width ?? 1.sw, height ?? 1.sh),
            child: const Material(
              color: AppColors.kColor8,
            ),
          ),
        ),
        gradient: const LinearGradient(
          colors: [
            AppColors.kColor6,
            AppColors.kColor6,
            AppColors.kColor8,
            AppColors.kColor6,
            AppColors.kColor6,
          ],
          stops: <double>[0.0, 0.4, 0.5, 0.6, 1.0],
          begin: Alignment.topLeft,
          end: Alignment.centerRight,
        ),
        // baseColor: AppColors.kColor6,
        // highlightColor: AppColors.kColor8,
      );
}
