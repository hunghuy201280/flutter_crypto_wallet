import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/configs/text_config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingItem extends StatelessWidget {
  final String title;
  final String description;
  final Function() action;
  const SettingItem(
      {Key? key,
      required this.title,
      required this.description,
      required this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: InkRipple.splashFactory,
      onTap: action,
      child: Container(
        height: 104.h,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextConfigs.kSubtitle_9,
            ),
            Text(
              description,
              style: TextConfigs.kCaption_9,
            ),
          ],
        ),
      ),
    );
  }
}
