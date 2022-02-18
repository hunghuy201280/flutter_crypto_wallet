import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_ntf_marketplace/utils/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../configs/text_config.dart';

class Utils {
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
}
