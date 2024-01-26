import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../../core/const.dart';

class CustomLocalImage extends StatelessWidget {
  const CustomLocalImage(
      {Key? key,
      required this.image,
      this.fit = BoxFit.cover,
      this.width,
      this.height})
      : super(key: key);

  final String image;
  final BoxFit fit;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      '$images$image',
      fit: fit,
      width: width,
      height: height,
      errorBuilder: (context, url, error) =>
          const Center(child: Icon(LucideIcons.xCircle, color: kDanger)),
    );
  }
}
