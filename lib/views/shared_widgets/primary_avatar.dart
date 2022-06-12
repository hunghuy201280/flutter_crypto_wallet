import 'package:flutter/material.dart';
import 'package:flutter_crypto_wallet/configs/color_config.dart';
import 'package:flutter_crypto_wallet/utils/jazzicon/jazzicon.dart';
import 'package:flutter_crypto_wallet/utils/jazzicon/jazziconshape.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryAvatar extends StatelessWidget {
  final double size;
  final Color background;
  final Color borderColor;
  final BoxFit fit;
  final JazziconData data;

  const PrimaryAvatar({
    Key? key,
    required this.size,
    this.background = AppColors.kColor2,
    this.fit = BoxFit.cover,
    this.borderColor = AppColors.kColor4,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final targetSize = size - 8.w;

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
        //Jazzicon.getIconWidget(Jazzicon.getJazziconData(size - 8.w)),
        SizedBox.square(
          dimension: targetSize,
          child: FittedBox(
            child: Jazzicon.getIconWidget(data),
          ),
        ),
      ],
    );
  }
}
