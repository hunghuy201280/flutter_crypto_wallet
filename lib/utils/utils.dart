import 'dart:math';

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_crypto_wallet/configs/color_config.dart';
import 'package:flutter_crypto_wallet/utils/extensions.dart';
import 'package:flutter_crypto_wallet/views/shared_widgets/base_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shimmer/shimmer.dart';

import '../configs/text_config.dart';
import '../constants/constants.dart';
import '../generated/l10n.dart';
import '../views/shared_widgets/info_dialog.dart';

class Utils {
  static int getRandom(int to, {int from = 0}) {
    if (to == 0) return 0;
    return (Random().nextInt(to - from) + from);
  }

  static closeKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  static bool onScrollNotification(
      ScrollNotification notification, VoidCallback load) {
    if (notification.metrics.axis == Axis.vertical) {
      if (notification is ScrollUpdateNotification) {
        if (notification.metrics.extentAfter <= kLazyLoadScrollOffset) {
          load();
        }
        return true;
      } else if (notification is OverscrollNotification) {
        if (notification.overscroll > 0) {
          load();
        }
        return true;
      }
    }
    return false;
  }

  static Future showCompleteSnackBar(
    context, {
    required String message,
    FlushbarPosition position = FlushbarPosition.TOP,
    bool isError = false,
  }) async {
    await Flushbar(
      messageText: Text(
        message,
        style: TextConfigs.kLabel_1,
      ),
      backgroundColor: isError ? Colors.red : AppColors.kColor9,
      duration: const Duration(seconds: 2),
      icon: "info_circle".getIcon(width: 24.w, height: 24.w),

      borderRadius: BorderRadius.circular(10),
      // margin: EdgeInsets.symmetric(
      //   vertical: 16.h,
      //   horizontal: 24.w,
      // ),
      padding: EdgeInsets.symmetric(
        vertical: 16.h,
        horizontal: 24.w,
      ),
      flushbarPosition: position,
    ).show(context);
  }

  static Future showToast(context, {required String message}) async {
    Fluttertoast.showToast(msg: message);
  }

  static AppBar buildAppBar(BuildContext context,
      {required String title,
      GestureTapCallback? onTap,
      bool centerTitle = false}) {
    return AppBar(
      centerTitle: centerTitle,
      title: Text(
        title,
        style: TextConfigs.kHeader4_9,
      ),
      backgroundColor: AppColors.kColor1,
      elevation: 0,
      leading: IconButton(
        icon: "arrow_left".getIcon(width: 24.w, height: 24.w),
        splashRadius: 16.w,
        onPressed: onTap ??
            () {
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

void printLog(Object parent,
    {required dynamic message, StackTrace? trace, dynamic error}) {
  final mes = "[Booking][${parent.runtimeType}] $message";
  if (error != null) {
    return logger.e(
      mes,
      error,
      trace,
    );
  }
  logger.i(mes);
}

Future<bool> showErrorDialog(
  BuildContext context, {
  required String message,
  String? positiveText,
  String? negativeText,
  VoidCallback? onPositive,
  VoidCallback? onNegative,
}) async {
  final s = S.of(context);
  return await showAnimatedDialog<bool?>(
        barrierDismissible: true,
        context: context,
        builder: (context) => BaseDialog(
          priamry: AppColors.kColor4,
          title: s.error,
          content: message,
          negativeText: negativeText,
          positiveText: positiveText,
          onPositive: onPositive,
          onNegative: onNegative,
        ),
        animationType: DialogTransitionType.slideFromTop,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      ) ??
      false;
}

Future<bool> showAlertDialog(
  BuildContext context, {
  required String message,
  String? positiveText,
  String? negativeText,
  VoidCallback? onPositive,
  VoidCallback? onNegative,
}) async {
  final s = S.of(context);
  return await showAnimatedDialog<bool?>(
        barrierDismissible: true,
        context: context,
        builder: (context) => BaseDialog(
          priamry: AppColors.kColor7,
          title: s.alert,
          content: message,
          negativeText: negativeText,
          positiveText: positiveText,
          onPositive: onPositive,
          onNegative: onNegative,
        ),
        animationType: DialogTransitionType.slideFromTop,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      ) ??
      false;
}

Future showInfoDialog(BuildContext context, {required dynamic message}) async {
  return await showAnimatedDialog(
    barrierDismissible: true,
    context: context,
    builder: (context) => InfoDialog(
      error: message.toString(),
    ),
    animationType: DialogTransitionType.slideFromTop,
    duration: const Duration(milliseconds: 300),
    curve: Curves.easeOut,
  );
}
