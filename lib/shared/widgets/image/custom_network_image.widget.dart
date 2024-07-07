import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../../core/const.dart';
import '../loading/custom_loading.widget.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage(
      {super.key,
      required this.uri,
      this.imageBuilder,
      this.fit = BoxFit.cover,
      this.headers});
  final String uri;
  final BoxFit fit;
  final Widget Function(BuildContext, ImageProvider<Object>)? imageBuilder;
  final Map<String, String>? headers;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: uri,
      fit: fit,
      imageBuilder: imageBuilder,
      httpHeaders: headers,
      errorWidget: (context, url, error) =>
          const Center(child: Icon(LucideIcons.xCircle, color: kDanger)),
      progressIndicatorBuilder: (context, url, progress) =>
          const Center(child: CustomLoader()),
    );
  }
}
