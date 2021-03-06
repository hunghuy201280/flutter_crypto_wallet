import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

extension OutlineInputBorderExt on OutlineInputBorder {
  OutlineInputBorder withBorder(Color color, {double? width}) => copyWith(
        borderSide: BorderSide(color: color, width: width ?? 1),
      );
}

extension DioErrorExt on DioError {
  String get errorDetail {
    final data = response?.data;
    if (data == null) {
      return "Error occured";
    }
    return data["error"];
  }
}
