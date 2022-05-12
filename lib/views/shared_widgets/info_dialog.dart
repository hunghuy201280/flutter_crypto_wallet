import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/l10n.dart';

class InfoDialog extends StatelessWidget {
  final String error;

  const InfoDialog({Key? key, required this.error}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return SimpleDialog(
      contentPadding: EdgeInsets.all(16.w),
      titlePadding:
          EdgeInsets.only(top: 32.h, left: 16.w, right: 16.w, bottom: 16.h),
      title: Center(
        child: Text(
          error,
          // style: TextConfigs.kTextRegularMedium,
          textAlign: TextAlign.center,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.w),
      ),
      children: [
        OutlinedButton(
          onPressed: () {
            Navigator.pop(context, true);
          },
          child: Text(
            "Close",
            //  s.close,
            //style: TextConfigs.kTextH5_4,
          ),
          style: OutlinedButton.styleFrom(
            fixedSize: Size(1.sw, 45.h),
            visualDensity: VisualDensity.compact,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            elevation: 0,
            //backgroundColor: AppColors.kColor2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.w),
            ),
          ),
        ),
      ],
    );
  }
}
