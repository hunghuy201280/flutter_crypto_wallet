import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';

import '../../utils/utils.dart';

class PrimaryAvatar extends StatelessWidget {
  final double? size;
  final ImageProvider? image;
  final String? imageUrl;
  final Color background;
  final BoxFit fit;
  const PrimaryAvatar(
      {Key? key,
      this.image,
      this.imageUrl,
      required this.size,
      this.background = AppColors.kColor2,
      this.fit = BoxFit.cover})
      : assert((imageUrl != null) || (image != null),
            "Only specify urlImage or image"),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    late final Widget child;
    if (image != null) {
      child = Image(
        image: image!,
        fit: fit,
        width: size,
        height: size,
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
            width: size,
            height: size,
          ),
        ),
        errorWidget: (_, __, ___) => ClipOval(
          child: Container(
            width: size,
            height: size,
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

    return child;
  }
}
