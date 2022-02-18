import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

extension StringExt on String {
  SvgPicture getIcon({double? width, double? height, Color? color}) =>
      SvgPicture.asset(
        "assets/icons/ic_$this.svg",
        color: color,
        width: width,
        height: height,
      );
}

extension NumberExt on num {
  SizedBox get verticalSpace => SizedBox(height: h);
  SizedBox get horizontalSpace => SizedBox(width: w);
}

extension OutlineInputBorderExt on OutlineInputBorder {
  OutlineInputBorder withBorder(Color color, {double? width}) => copyWith(
        borderSide: BorderSide(color: color, width: width ?? 1),
      );
}
