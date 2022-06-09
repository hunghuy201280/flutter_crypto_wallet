import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crypto_wallet/configs/color_config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/utils.dart';

class PrimaryAvatar extends StatelessWidget {
  final double size;
  final ImageProvider? image;
  final String? imageUrl;
  final Color background;
  final Color borderColor;
  final BoxFit fit;
  const PrimaryAvatar(
      {Key? key,
      this.image,
      this.imageUrl,
      required this.size,
      this.background = AppColors.kColor2,
      this.fit = BoxFit.cover,
      this.borderColor = AppColors.kColor4})
      : assert((imageUrl != null) || (image != null),
            "Only specify urlImage or image"),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    late final Widget child;
    if (image != null) {
      child = ClipOval(
        child: Image(
          image: image!,
          fit: fit,
          width: size - 8.w,
          height: size - 8.w,
        ),
      );
    } else {
      child = CachedNetworkImage(
        imageUrl: imageUrl!,
        placeholder: (__, _) => ClipOval(
          child: Utils.getShimmer(
            width: size,
            height: size,
          ),
        ),
        imageBuilder: (context, image) => ClipOval(
          child: Image(
            fit: fit,
            image: image,
            width: size - 8.w,
            height: size - 8.w,
          ),
        ),
        errorWidget: (_, __, ___) => ClipOval(
          child: Container(
            width: size - 8.w,
            height: size - 8.w,
            color: AppColors.kColor4,
            child: const Center(
              child: Icon(
                Icons.broken_image,
                color: AppColors.kColor3,
              ),
            ),
          ),
        ),
      );
    }

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
        child,
      ],
    );
  }
}
