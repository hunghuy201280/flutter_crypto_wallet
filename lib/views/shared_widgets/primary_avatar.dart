import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';

class PrimaryAvatar extends StatelessWidget {
  final double? size;
  final BoxConstraints? constraints;
  final ImageProvider? image;
  final String? imageUrl;
  final Color background;
  PrimaryAvatar(
      {Key? key,
      this.image,
      this.imageUrl,
      required this.size,
      BoxConstraints? constraints,
      Color? background})
      : assert((imageUrl != null) || (image != null),
            "Only specify urlImage or image"),
        constraints = (size != null)
            ? constraints?.tighten(width: size, height: size) ??
                BoxConstraints.tightFor(width: size, height: size)
            : constraints,
        background = background ?? AppColors.kColor2,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(size ?? 0),
      ),
      constraints: constraints,
      child: image != null
          ? Image(image: image!)
          : CachedNetworkImage(
              imageUrl: imageUrl!,
            ),
    );
  }
}
