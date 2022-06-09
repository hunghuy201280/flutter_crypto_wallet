import 'package:flutter/material.dart';
import 'package:flutter_crypto_wallet/configs/text_config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NetworkItem extends StatelessWidget {
  final String networkName;
  final Color color;
  const NetworkItem({Key? key, required this.networkName, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 12.w,
          width: 12.w,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        16.horizontalSpace,
        Text(
          networkName,
          style: TextConfigs.kBody2_9,
        )
      ],
    );
  }
}
