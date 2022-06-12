import 'package:flutter/material.dart';
import 'package:flutter_crypto_wallet/utils/jazzicon/jazziconshape.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../configs/color_config.dart';
import '../../utils/jazzicon/jazzicon.dart';

class SecondaryAvatar extends StatelessWidget {
  final double size;

  final Color background;
  final Color borderColor;
  final BoxFit fit;
  final JazziconData data;
  const SecondaryAvatar({
    Key? key,
    required this.size,
    this.background = AppColors.kColor2,
    this.fit = BoxFit.cover,
    this.borderColor = AppColors.kColor4,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        SizedBox.fromSize(
          child: Material(
            shape: CircleBorder(
              side: BorderSide(color: borderColor, width: 2.w),
            ),
            color: Colors.transparent,
          ),
          size: Size(size, size),
        ),
        SizedBox.square(
          dimension: size,
          child: FittedBox(
            child: Jazzicon.getIconWidget(data),
          ),
        )
      ],
    );
  }
}
