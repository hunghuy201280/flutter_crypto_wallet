import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WalletNFTItem extends StatelessWidget {
  const WalletNFTItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.w),
        color: AppColors.kColor4,
      ),
    );
  }
}
