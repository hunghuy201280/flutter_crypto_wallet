import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_ntf_marketplace/configs/text_config.dart';
import 'package:flutter_ntf_marketplace/views/shared_widgets/secondary_button_medium.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecurityPrivacyItem extends StatelessWidget {
  final String title;
  final String description;
  final String btnTitle;
  final void Function()? onClick;
  const SecurityPrivacyItem(
      {Key? key,
      required this.title,
      required this.description,
      required this.btnTitle,
      this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextConfigs.kLabel_9,
          ),
          8.verticalSpace,
          Text(
            description,
            style: TextConfigs.kCaption_2,
          ),
          12.verticalSpace,
          SecondaryButtonMedium(
            title: btnTitle,
            backgroundColor: AppColors.kColor2,
            onTap: onClick,
          )
        ],
      ),
    );
  }
}
